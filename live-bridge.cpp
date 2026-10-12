#include <SoapySDR/Device.hpp>
#include <SoapySDR/Formats.hpp>
#include <SoapySDR/Constants.h>
#include <SoapySDR/Errors.hpp>
#include <atomic>
#include <cstdlib>
#include <chrono>
#include <csignal>
#include <cmath>
#include <iomanip>
#include <iostream>
#include <mutex>
#include <condition_variable>
#include <sstream>
#include <cerrno>
#include <fcntl.h>
#include <thread>
#include <vector>
#include <poll.h>
#include <unistd.h>
static std::atomic<bool> running{true};
static void stop(int) { running=false; }
// The display can be slow without blocking the hardware reader. Keep at most
// one pending snapshot, and make writes interruptible for clean shutdown.
static bool publish(const void *data,size_t size) {
    const auto *bytes=static_cast<const char *>(data);
    while(size&&running) {
        const auto count=write(STDOUT_FILENO,bytes,size);
        if(count>0) { bytes+=count; size-=count; continue; }
        if(count<0&&(errno==EAGAIN||errno==EINTR)) {
            pollfd fd{STDOUT_FILENO,POLLOUT,0}; poll(&fd,1,100); continue;
        }
        return false;
    }
    return size==0;
}
int main(int argc,char **argv) {
    signal(SIGTERM,stop); signal(SIGINT,stop); signal(SIGPIPE,SIG_IGN);
    SoapySDR::Device *d=nullptr; SoapySDR::Stream *s=nullptr;
    std::thread control, publisher;
    std::mutex displayMutex;
    std::condition_variable displayReady;
    constexpr size_t size=262144;
    std::vector<float> pending(size*2);
    std::string pendingHeader;
    bool hasPending=false;
    std::atomic<double> requested{0};
    std::atomic<unsigned> generation{0};
    try {
        d=SoapySDR::Device::make(std::getenv("RTL8922_DEVICE_ARGS")?std::getenv("RTL8922_DEVICE_ARGS"):"driver=rtl8922,producer_scheduler=deadline,experimental40=1");
        // Move into the supported HT40 center range before changing sample rate.
        d->setFrequency(SOAPY_SDR_RX,0,argc>1?std::stod(argv[1]):2422000000.);
        d->setSampleRate(SOAPY_SDR_RX,0,40000000);
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
        if(fcntl(STDOUT_FILENO,F_SETFL,fcntl(STDOUT_FILENO,F_GETFL)|O_NONBLOCK)<0)
            throw std::runtime_error("Could not configure display pipe");
        publisher=std::thread([&] {
            std::vector<float> output(size*2);
            while(running) {
                std::string header;
                {
                    std::unique_lock<std::mutex> lock(displayMutex);
                    displayReady.wait_for(lock,std::chrono::milliseconds(100),[&]{return hasPending||!running;});
                    if(!running) break;
                    if(!hasPending) continue;
                    output.swap(pending); header.swap(pendingHeader); hasPending=false;
                }
                if(!publish(header.data(),header.size())||!publish(output.data(),output.size()*sizeof(float))) {
                    running=false; break;
                }
            }
        });
        std::vector<float> data(size*2);
        uint64_t skippedDisplay=0;
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
            std::lock_guard<std::mutex> lock(displayMutex);
            if(hasPending) skippedDisplay++;
            std::ostringstream header;
            header<<std::setprecision(16)<<"{\"frame\":"<<++frames<<",\"samples\":"<<samples
                <<",\"errors\":"<<errors<<",\"recoveries\":"<<recoveries<<",\"generation\":"<<seen<<",\"frequency\":"<<d->getFrequency(SOAPY_SDR_RX,0)
                <<",\"display_skipped\":"<<skippedDisplay
                <<",\"rf_center\":"<<d->readSetting("rf_center")<<",\"rate\":40000000,\"bytes\":"<<data.size()*sizeof(float)<<"}\n";
            pending.swap(data); pendingHeader=header.str(); hasPending=true;
            displayReady.notify_one();
        }
        running=false; displayReady.notify_all();
        if(control.joinable()) control.join();
        if(publisher.joinable()) publisher.join();
        d->deactivateStream(s); d->closeStream(s); SoapySDR::Device::unmake(d); return 0;
    } catch(const std::exception &e) {
        running=false; displayReady.notify_all();
        if(control.joinable()) control.join();
        if(publisher.joinable()) publisher.join();
        std::cerr<<"FATAL "<<e.what()<<std::endl;
        if(d) { try { if(s) d->closeStream(s); } catch(...) {} SoapySDR::Device::unmake(d); }
        return 1;
    }
}
