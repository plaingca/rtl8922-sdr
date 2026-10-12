#include <SoapySDR/Device.hpp>
#include <SoapySDR/Formats.hpp>
#include <SoapySDR/Constants.h>
#include <complex>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <vector>
int main() {
    auto *d=SoapySDR::Device::make("driver=rtl8922,experimental40=1,producer_scheduler=deadline");
    SoapySDR::Stream *s=nullptr;
    try {
        constexpr double rate=40000000.;constexpr uint64_t target=2600000000ULL,interval=20000000;
        const std::filesystem::path out("/home/plaing/rtl8922-iq-research/rf-watch-test");std::filesystem::create_directories(out);
        d->setSampleRate(SOAPY_SDR_RX,0,rate);d->setFrequency(SOAPY_SDR_RX,0,2422000000.);
        s=d->setupStream(SOAPY_SDR_RX,SOAPY_SDR_CF32);
        if(d->activateStream(s))throw std::runtime_error("activation failed");
        std::vector<std::complex<float>> buffer(16384),window;window.reserve(65536);
        uint64_t total=0,next=0,windowStart=0;unsigned windows=0;
        while(total<target) {
            void *p=buffer.data();int flags=0;long long ns=0;
            int n=d->readStream(s,&p,std::min<uint64_t>(buffer.size(),target-total),flags,ns,1000000);
            if(n<=0||!(flags&SOAPY_SDR_HAS_TIME)||ns!=static_cast<long long>(total*1e9/rate))throw std::runtime_error("capture gap/error at "+std::to_string(total)+", ret="+std::to_string(n));
            if(total>=next&&window.empty())windowStart=total;
            if(total>=next) {
                const size_t take=std::min<size_t>(n,65536-window.size());window.insert(window.end(),buffer.begin(),buffer.begin()+take);
                if(window.size()==65536) {
                    std::ofstream f(out/("window-"+std::to_string(windows)+".cf32"),std::ios::binary);f.write(reinterpret_cast<char*>(window.data()),window.size()*sizeof(window[0]));f.close();
                    if(!f)throw std::runtime_error("sample file write failed");
                    std::cout<<"{\"window\":"<<windows<<",\"first_sample\":"<<windowStart<<",\"rate\":40000000}"<<std::endl;
                    windows++;window.clear();next+=interval;
                }
            }
            total+=n;
        }
        d->deactivateStream(s);d->closeStream(s);s=nullptr;SoapySDR::Device::unmake(d);
        std::cout<<"{\"total_samples\":"<<total<<",\"windows\":"<<windows<<",\"gapless_transport\":true}"<<std::endl;return 0;
    } catch(const std::exception &e) {std::cerr<<e.what()<<std::endl;if(s)try{d->deactivateStream(s);d->closeStream(s);}catch(...){}SoapySDR::Device::unmake(d);return 2;}
}
