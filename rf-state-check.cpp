#include <SoapySDR/Device.hpp>
#include <SoapySDR/Formats.hpp>
#include <SoapySDR/Constants.h>
#include <SoapySDR/Errors.hpp>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <complex>
#include <vector>
#include <regex>
#include <stdexcept>
#include <chrono>
namespace fs=std::filesystem;
static std::string read(const fs::path &p) { std::ifstream f(p); if(!f) throw std::runtime_error("read "+p.string()); return {std::istreambuf_iterator<char>(f),{}}; }
static void write(const fs::path &p,const std::string &v) { std::ofstream f(p);f<<v;f.close();if(!f)throw std::runtime_error("write "+p.string()); }
static unsigned reg(const fs::path &dbg,unsigned addr) {
    char s[40];snprintf(s,sizeof(s),"%x 4\n",addr);write(dbg/"read_reg",s);
    std::string v=read(dbg/"read_reg");std::regex r("0x[0-9a-fA-F]+");unsigned result=0;bool found=false;
    for(auto i=std::sregex_iterator(v.begin(),v.end(),r);i!=std::sregex_iterator();++i) { result=std::stoul(i->str(),nullptr,16);found=true; }
    if(!found)throw std::runtime_error("register parse");return result;
}
int main() {
    std::string args="driver=rtl8922,experimental40=1,producer_scheduler=deadline";
    if(const char *iw=std::getenv("RTL8922_RF_STATE_IW"))args+=",iw="+std::string(iw);
    auto *d=SoapySDR::Device::make(args);
    SoapySDR::Stream *s=nullptr;
    try {
        fs::path dbg;for(auto &p:fs::directory_iterator("/sys/kernel/debug/ieee80211"))if(fs::exists(p.path()/"rtw89/iq_stream"))dbg=p.path()/"rtw89";
        const fs::path out(std::getenv("RTL8922_RF_STATE_DIR")?std::getenv("RTL8922_RF_STATE_DIR"):"/home/plaing/rtl8922-iq-research/rf-state-test");fs::create_directories(out);
        d->setFrequency(SOAPY_SDR_RX,0,2422000000.);d->setSampleRate(SOAPY_SDR_RX,0,20000000.);
        s=d->setupStream(SOAPY_SDR_RX,SOAPY_SDR_CF32);if(d->activateStream(s))throw std::runtime_error("activate");
        std::vector<std::complex<float>> b(4096),tail;
        const double modes[]={20000000.,40000000.,10000000.,5000000.,40000000.,20000000.};
        for(int stage=0;stage<36;++stage) {
            double rate=modes[stage%6];d->setSampleRate(SOAPY_SDR_RX,0,rate);
            uint64_t total=0;long long base=0;tail.clear();unsigned gaps=0;
            while(total<static_cast<uint64_t>(rate*.2)+65536) {
                void *p=b.data();int flags=0;long long ns=0;int n=d->readStream(s,&p,b.size(),flags,ns,1000000);
                if(n==SOAPY_SDR_OVERFLOW&&total==0&&gaps++==0)continue;
                if(n<=0)throw std::runtime_error("capture failed "+std::to_string(n));
                if(!total)base=ns;
                if(!(flags&SOAPY_SDR_HAS_TIME)||ns!=base+static_cast<long long>(total*1e9/rate))throw std::runtime_error("sample timestamp gap");
                total+=n;tail.insert(tail.end(),b.begin(),b.begin()+n);if(tail.size()>65536)tail.erase(tail.begin(),tail.end()-65536);
            }
            // Register reads only after producer stop/join: never touch the BAR window during DMA.
            const auto captureEnd=std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::steady_clock::now().time_since_epoch()).count();
            d->deactivateStream(s);
            const std::string name="stage-"+std::to_string(stage);
            std::ofstream f(out/(name+".cf32"),std::ios::binary);f.write(reinterpret_cast<const char*>(tail.data()),tail.size()*sizeof(tail[0]));f.close();
            std::cout<<"{\"stage\":"<<stage<<",\"capture_end_monotonic_ns\":"<<captureEnd<<",\"rate\":"<<std::fixed<<rate<<",\"samples\":"<<total<<",\"registers\":{";
            bool first=true;
            for(unsigned a:{0x20014,0x21090,0x21094,0x21098,0x210fc,0x24108,0x24508,0x24158,0x24558,0x2415c,0x2455c,0x24164,0x24564,0x24168,0x24568,0x24730,0x24a9c,0x24a5c,0x24a80,0x24aa8,0x24ad4,0x24ae0,0x26b4c,0x26b50,0x26b54,0x28104,0x28204,0x2813c,0x2823c}) {
                if(!first)std::cout<<",";first=false;std::cout<<"\""<<std::hex<<a<<"\":\""<<reg(dbg,a)<<"\""<<std::dec;
            }
            std::cout<<"},\"rf\":{";first=true;
            for(int path:{0,1})for(unsigned a:{0x0,0x10000,0x83,0x84,0x8b,0x8c}) {
                char select[50];snprintf(select,sizeof(select),"%d %x fffff\n",path,a);write(dbg/"read_rf",select);
                std::string v=read(dbg/"read_rf");std::regex r("0x[0-9a-fA-F]+");unsigned value=0;bool found=false;
                for(auto i=std::sregex_iterator(v.begin(),v.end(),r);i!=std::sregex_iterator();++i){value=std::stoul(i->str(),nullptr,16);found=true;}
                if(!found)throw std::runtime_error("rf parse");if(!first)std::cout<<",";first=false;
                std::cout<<"\""<<path<<":"<<std::hex<<a<<"\":\""<<value<<"\""<<std::dec;
            }
            std::cout<<"}}"<<std::endl;
            if(stage<35&&d->activateStream(s))throw std::runtime_error("reactivate");
        }
        d->closeStream(s);s=nullptr;SoapySDR::Device::unmake(d);return 0;
    } catch(const std::exception &e) { std::cerr<<e.what()<<std::endl;if(s)try{d->deactivateStream(s);d->closeStream(s);}catch(...){} SoapySDR::Device::unmake(d);return 2; }
}
