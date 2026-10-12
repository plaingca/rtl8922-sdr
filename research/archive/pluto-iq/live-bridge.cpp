#include <SoapySDR/Device.hpp>
#include <SoapySDR/Formats.hpp>
#include <SoapySDR/Constants.h>
#include <SoapySDR/Errors.hpp>
#include <atomic>
#include <chrono>
#include <csignal>
#include <cmath>
#include <iomanip>
#include <iostream>
#include <mutex>
#include <thread>
#include <vector>
#include <poll.h>
#include <unistd.h>
static std::atomic<bool> running{true};
static void stop(int) { running=false; }
int main(int argc,char **argv) {
    signal(SIGTERM,stop); signal(SIGINT,stop); signal(SIGPIPE,SIG_IGN);
    SoapySDR::Device *d=nullptr; SoapySDR::Stream *s=nullptr;
    std::thread control;
    std::atomic<double> requested{0};
    std::atomic<unsigned> generation{0};
    try {
        d=SoapySDR::Device::make("driver=rtl8922,producer_scheduler=deadline,free_tuning=1");
        d->setSampleRate(SOAPY_SDR_RX,0,20000000);
        d->setFrequency(SOAPY_SDR_RX,0,argc>1?std::stod(argv[1]):2412000000.);
        s=d->setupStream(SOAPY_SDR_RX,SOAPY_SDR_CF32);
        if(d->activateStream(s)) throw std::runtime_error("Activation failed");
        control=std::thread([&] {
            while(running) {
                pollfd fd{STDIN_FILENO,POLLIN,0}; if(poll(&fd,1,100)<=0) continue;
                std::string line; if(!std::getline(std::cin,line)) { running=false; break; }
                if(line=="stop") { running=false; break; }
                try {
                    const double hz=std::stod(line);
                    if(!std::isfinite(hz)||hz<=0) throw std::runtime_error("Invalid frequency");
                    requested=hz;
                } catch(const std::exception &e) { std::cerr<<"TUNE_ERROR "<<e.what()<<std::endl; }
            }
        });
        constexpr size_t size=4096;
        std::vector<float> data(size*2);
        size_t used=0; uint64_t samples=0,errors=0,frames=0,recoveries=0;
        unsigned recentRecoveries=0;
        auto recoveryWindow=std::chrono::steady_clock::now();
        unsigned seen=generation.load();
        auto next=std::chrono::steady_clock::now();
        while(running) {
            if(const double hz=requested.exchange(0);hz!=0) {
                try {
                    d->setFrequency(SOAPY_SDR_RX,0,hz); generation++;
                    std::cerr<<"TUNED "<<std::fixed<<hz<<std::endl;
                } catch(const std::exception &e) { std::cerr<<"TUNE_ERROR "<<e.what()<<std::endl; }
            }
            if(generation.load()!=seen) { seen=generation.load(); used=0; }
            void *ptr=data.data()+2*used; int flags=0; long long ns=0;
            const int n=d->readStream(s,&ptr,size-used,flags,ns,100000);
            if(!running) break;
            if(n==SOAPY_SDR_TIMEOUT) continue;
            if(n<0) {
                errors++; used=0;
                if(n==SOAPY_SDR_OVERFLOW&&(flags&SOAPY_SDR_HAS_TIME)) continue;
                const auto now=std::chrono::steady_clock::now();
                if(now-recoveryWindow>std::chrono::seconds(10)) { recentRecoveries=0; recoveryWindow=now; }
                if(++recentRecoveries>3) throw std::runtime_error("Repeated receive failures; restart limit reached");
                std::cerr<<"RECOVERY readStream="<<n<<"; capture gap, restarting receiver"<<std::endl;
                d->deactivateStream(s);
                if(d->activateStream(s)) throw std::runtime_error("Receive recovery activation failed");
                recoveries++; generation++; seen=generation.load();
                std::cerr<<"RECOVERED interruption="<<errors<<std::endl;
                continue;
            }
            used+=n; samples+=n;
            if(used!=size) continue;
            used=0;
            const auto now=std::chrono::steady_clock::now();
            if(now<next) continue;
            next=now+std::chrono::milliseconds(75);
            std::cout<<std::setprecision(16)<<"{\"frame\":"<<++frames<<",\"samples\":"<<samples
                <<",\"errors\":"<<errors<<",\"recoveries\":"<<recoveries<<",\"generation\":"<<seen<<",\"frequency\":"<<d->getFrequency(SOAPY_SDR_RX,0)
                <<",\"rf_center\":"<<d->readSetting("rf_center")<<",\"rate\":20000000,\"bytes\":"<<data.size()*sizeof(float)<<"}\n";
            std::cout.write(reinterpret_cast<char *>(data.data()),data.size()*sizeof(float)); std::cout.flush();
            if(!std::cout) break;
        }
        running=false; if(control.joinable()) control.join();
        d->deactivateStream(s); d->closeStream(s); SoapySDR::Device::unmake(d); return 0;
    } catch(const std::exception &e) {
        running=false; if(control.joinable()) control.join();
        std::cerr<<"FATAL "<<e.what()<<std::endl;
        if(d) { try { if(s) d->closeStream(s); } catch(...) {} SoapySDR::Device::unmake(d); }
        return 1;
    }
}
