// SPDX-License-Identifier: GPL-2.0-only
// Explicit passive survey: separate finite native-i8 files, no RF transmitter.
#include <SoapySDR/Device.hpp>
#include <SoapySDR/Formats.hpp>
#include <SoapySDR/Constants.h>
#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <filesystem>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <sstream>
#include <stdexcept>
#include <vector>

static std::string quote(const std::string &s) {
    std::string out="\"";
    for(char c:s) {
        if(c=='\n') out+="\\n";
        else if(c=='\r') out+="\\r";
        else { if(c=='\\'||c=='\"') out+='\\'; out+=c; }
    }
    return out+'"';
}
static std::string readFile(const std::filesystem::path &p) {
    std::ifstream f(p); std::ostringstream s; s<<f.rdbuf();
    if(!f) throw std::runtime_error("Cannot read "+p.string());
    return s.str();
}
int main(int argc, char **argv) {
    if(argc!=5) return 2;
    const std::filesystem::path plan=argv[1], dir=argv[2], dbg=argv[3];
    const double seconds=std::stod(argv[4]),rate=20000000.;
    if(seconds<.02||seconds>1) return 2;
    std::filesystem::create_directories(dir);
    std::ifstream input(plan);
    if(!input) return 2;
    auto *dev=SoapySDR::Device::make("driver=rtl8922,free_tuning=1,producer_scheduler=deadline");
    if(!dev) return 2;
    SoapySDR::Stream *stream=nullptr;
    unsigned index=0;
    try {
        dev->setSampleRate(SOAPY_SDR_RX,0,rate);
        double mhz;
        while(input>>mhz) {
            if(++index>180) throw std::runtime_error("Bounded survey exceeds 180 tiles");
            uint64_t total=0, calls=0;
            std::string error;
            const auto raw=dir/("tile-"+std::to_string(index)+".bin");
            std::ofstream file(raw,std::ios::binary);
            if(!file) throw std::runtime_error("Cannot create capture");
            const auto wall=std::chrono::system_clock::now();
            const auto started=std::chrono::duration_cast<std::chrono::nanoseconds>(wall.time_since_epoch()).count();
            double rf=0;
            try {
                dev->setFrequency(SOAPY_SDR_RX,0,mhz*1e6);
                stream=dev->setupStream(SOAPY_SDR_RX,SOAPY_SDR_CS16);
                if(dev->activateStream(stream)) throw std::runtime_error("Activation failed");
                rf=std::stod(dev->readSetting("rf_center"));
                std::vector<int16_t> buffer(32768);
                std::vector<int8_t> packed(32768);
                void *ptr=buffer.data();
                const uint64_t target=static_cast<uint64_t>(rate*seconds);
                while(total<target) {
                    int flags=0; long long ns=0;
                    const int n=dev->readStream(stream,&ptr,std::min<uint64_t>(16384,target-total),flags,ns,1000000);
                    if(n<=0||!(flags&SOAPY_SDR_HAS_TIME)||ns!=static_cast<long long>(total*1e9/rate))
                        throw std::runtime_error("Read/timestamp failure: "+std::to_string(n));
                    for(int j=0;j<2*n;++j) {
                        if(buffer[j]%256) throw std::runtime_error("Non-native sample conversion/NCO");
                        packed[j]=buffer[j]/256;
                    }
                    file.write(reinterpret_cast<const char *>(packed.data()),2*n);
                    if(!file) throw std::runtime_error("Capture write failed");
                    total+=n; calls++;
                }
                dev->deactivateStream(stream); dev->closeStream(stream); stream=nullptr;
            } catch(const std::exception &e) {
                error=e.what();
                if(stream) { try { dev->closeStream(stream); } catch(...) {} stream=nullptr; }
            }
            file.close();
            const auto status=readFile(dbg/"iq_stream");
            const auto drops=std::stoull(readFile(dbg/"scope_dropped"));
            const bool pass=error.empty()&&status.rfind("ret=0 ",0)==0&&!drops;
            std::cout<<"{\"index\":"<<index<<",\"center_mhz\":"<<std::setprecision(12)<<mhz
                     <<",\"rf_center_hz\":"<<rf<<",\"started_unix_ns\":"<<started
                     <<",\"samples\":"<<total<<",\"calls\":"<<calls<<",\"raw\":"<<quote(raw.string())
                     <<",\"producer\":"<<quote(status)<<",\"host_drops\":"<<drops
                     <<",\"error\":"<<quote(error)<<",\"passed\":"<<(pass?"true":"false")<<"}"<<std::endl;
            if(!pass) throw std::runtime_error("Tile rejected at "+std::to_string(mhz)+" MHz: "+error);
        }
        SoapySDR::Device::unmake(dev);return 0;
    } catch(const std::exception &e) {
        std::cerr<<e.what()<<std::endl;
        if(stream) try { dev->closeStream(stream); } catch(...) {}
        SoapySDR::Device::unmake(dev);return 1;
    }
}
