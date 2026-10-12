#include <SoapySDR/Device.hpp>
#include <SoapySDR/Formats.hpp>
#include <SoapySDR/Constants.h>
#include <SoapySDR/Errors.hpp>
#include <atomic>
#include <chrono>
#include <complex>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <thread>
#include <vector>
using Clock=std::chrono::steady_clock;
static void require(bool ok,const char *text) { if(!ok) throw std::runtime_error(text); }
int main() {
    auto *dev=SoapySDR::Device::make("driver=rtl8922,experimental40=1,producer_scheduler=deadline,iw=/home/plaing/rtl8922-iq-research/soapy/live-test-iw");
    if(!dev) return 1;
    SoapySDR::Stream *stream=nullptr;
    try {
        dev->setSampleRate(SOAPY_SDR_RX,0,20000000);
        dev->setFrequency(SOAPY_SDR_RX,0,2422000000.);
        stream=dev->setupStream(SOAPY_SDR_RX,SOAPY_SDR_CF32);
        require(dev->activateStream(stream)==0,"Initial activation failed");
        std::vector<std::complex<float>> buffer(3000), tail;
        long long base=0,lastEnd=0; uint64_t segmentSamples=0,calls=0;
        auto observe=[&](const std::string &label,bool gap) {
            const double rate=dev->getSampleRate(SOAPY_SDR_RX,0);
            void *ptr=buffer.data(); int flags=0; long long ns=0;
            if(gap) {
                require(dev->readStream(stream,&ptr,257,flags,ns,1000000)==SOAPY_SDR_OVERFLOW,"Missing setting-change discontinuity");
                require((flags&SOAPY_SDR_HAS_TIME)&&ns>lastEnd,"Restart timestamp did not advance");
                base=ns; segmentSamples=0;
            }
            tail.clear(); uint64_t captured=0;
            const uint64_t target=static_cast<uint64_t>(rate*.15)+65536;
            while(captured<target) {
                const int n=dev->readStream(stream,&ptr,calls%3==0?257:calls%3==1?1024:3000,flags,ns,1000000); calls++;
                require(n>0,"Unexpected stream error/timeout during settled capture");
                require((flags&SOAPY_SDR_HAS_TIME)&&ns==base+static_cast<long long>(segmentSamples*1e9/rate),"Timestamp gap within settled segment");
                segmentSamples+=n; captured+=n;
                lastEnd=base+static_cast<long long>(segmentSamples*1e9/rate);
                tail.insert(tail.end(),buffer.begin(),buffer.begin()+n);
                if(tail.size()>65536) tail.erase(tail.begin(),tail.end()-65536);
            }
            std::ofstream f("/home/plaing/rtl8922-iq-research/soapy/live-"+label+".bin",std::ios::binary);
            f.write(reinterpret_cast<const char *>(tail.data()),tail.size()*sizeof(tail[0]));
            std::cout<<"{\"stage\":\""<<label<<"\",\"rate\":"<<rate<<",\"frequency\":"<<std::fixed<<dev->getFrequency(SOAPY_SDR_RX,0)<<",\"samples\":"<<captured<<",\"base_ns\":"<<base<<",\"end_ns\":"<<lastEnd<<"}"<<std::endl;
        };
        observe("initial20",false);
        dev->setSampleRate(SOAPY_SDR_RX,0,20000000);
        dev->setFrequency(SOAPY_SDR_RX,0,2422000000.);
        observe("noop20",false);
        dev->setFrequency(SOAPY_SDR_RX,0,2427000000.); observe("retune2427",true);
        bool rejected=false;
        try { dev->setFrequency(SOAPY_SDR_RX,0,2411000000.); } catch(const std::exception &) { rejected=true; }
        require(rejected&&dev->getFrequency(SOAPY_SDR_RX,0)==2427000000.,"Invalid frequency was accepted or changed state");
        observe("invalid-range-preserves",false);
        dev->setFrequency(SOAPY_SDR_RX,0,2417000000.); observe("retune2417",true);
        rejected=false;
        try { dev->setSampleRate(SOAPY_SDR_RX,0,40000000); } catch(const std::exception &) { rejected=true; }
        require(rejected&&dev->getSampleRate(SOAPY_SDR_RX,0)==20000000,"Invalid active 40 MHz pair changed rate");
        observe("invalid-pair-preserves",false);
        dev->setFrequency(SOAPY_SDR_RX,0,2422000000.); observe("back2422",true);
        for(double rate:{40000000.,10000000.,5000000.,2500000.,1250000.,20000000.,40000000.}) {
            dev->setSampleRate(SOAPY_SDR_RX,0,rate);
            const auto range=dev->getFrequencyRange(SOAPY_SDR_RX,0);
            require(range.size()==1&&range[0].minimum()==(rate==40000000?2422000000.:2412000000.),"Wrong mode tuning range");
            observe("rate"+std::to_string(static_cast<int>(rate)),true);
        }
        rejected=false;
        try { dev->setFrequency(SOAPY_SDR_RX,0,2432000000.); } catch(const std::exception &) { rejected=true; }
        require(rejected&&dev->getFrequency(SOAPY_SDR_RX,0)==2422000000.,"Rejected iw change did not restore old settings");
        observe("rollback40",true);
        dev->setSampleRate(SOAPY_SDR_RX,0,20000000); observe("before-concurrent20",true);
        std::atomic<bool> stop{false}; std::atomic<unsigned> gaps{0},reads{0},timeouts{0}; std::atomic<int> error{0};
        std::thread reader([&] {
            std::vector<std::complex<float>> data(3000); void *ptr=data.data(); int flags; long long ns;
            long long segmentBase=base; uint64_t count=segmentSamples;
            while(!stop) {
                const int n=dev->readStream(stream,&ptr,3000,flags,ns,100000);
                if(n==SOAPY_SDR_OVERFLOW) { gaps++; segmentBase=ns; count=0; }
                else if(n==SOAPY_SDR_TIMEOUT) { timeouts++; }
                else if(n<=0) { error=n; break; }
                else if(!(flags&SOAPY_SDR_HAS_TIME)||ns!=segmentBase+static_cast<long long>(count*1e9/20000000.)) { error=12345; break; }
                else { count+=n; reads++; }
            }
        });
        double maxChangeMs=0;
        try {
            for(double frequency:{2427000000.,2417000000.,2422000000.}) {
                std::this_thread::sleep_for(std::chrono::milliseconds(100));
                const auto begin=Clock::now(); dev->setFrequency(SOAPY_SDR_RX,0,frequency);
                maxChangeMs=std::max(maxChangeMs,std::chrono::duration<double,std::milli>(Clock::now()-begin).count());
            }
            std::this_thread::sleep_for(std::chrono::milliseconds(100));
        } catch(...) { stop=true; reader.join(); throw; }
        stop=true; reader.join();
        require(error==0&&gaps==3&&reads>100,"Concurrent reader/control test failed");
        std::cout<<"{\"concurrent_reads\":"<<reads<<",\"explicit_gaps\":"<<gaps<<",\"control_pause_timeouts\":"<<timeouts<<",\"max_setting_ms\":"<<maxChangeMs<<"}"<<std::endl;
        dev->deactivateStream(stream); dev->closeStream(stream); stream=nullptr;
        SoapySDR::Device::unmake(dev); return 0;
    } catch(const std::exception &e) {
        std::cerr<<e.what()<<std::endl;
        if(stream) try { dev->deactivateStream(stream); dev->closeStream(stream); } catch(...) {}
        SoapySDR::Device::unmake(dev); return 2;
    }
}
