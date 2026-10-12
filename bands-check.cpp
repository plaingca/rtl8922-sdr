#include <SoapySDR/Device.hpp>
#include <SoapySDR/Formats.hpp>
#include <SoapySDR/Constants.h>
#include <SoapySDR/Errors.hpp>
#include <iostream>
#include <stdexcept>
#include <vector>
#include <cmath>
int main() {
    auto *d=SoapySDR::Device::make("driver=rtl8922,producer_scheduler=deadline,experimental40=1");
    SoapySDR::Stream *s=nullptr;
    try {
        d->setSampleRate(SOAPY_SDR_RX,0,20000000);
        const auto ranges=d->getFrequencyRange(SOAPY_SDR_RX,0);
        if(ranges.size()!=6||ranges.back().maximum()!=7115000000.) throw std::runtime_error("Unexpected CA 20MS/s ranges");
        for(const auto &r:ranges) std::cout<<"RANGE "<<r.minimum()<<" "<<r.maximum()<<"\n";
        for(const std::string fmt:{SOAPY_SDR_CF32,SOAPY_SDR_CS16}) {
            d->setFrequency(SOAPY_SDR_RX,0,2412000000.);
            s=d->setupStream(SOAPY_SDR_RX,fmt);
            if(d->activateStream(s)) throw std::runtime_error("activate failed");
            std::vector<float> buf(8192); void *ptr=buf.data();
            for(double hz:{2412000000.,5180000000.,5180250000.,5955000000.,7115000000.}) {
                d->setFrequency(SOAPY_SDR_RX,0,hz);
                int n=0,flags=0,interruptions=0; long long ns=0; uint64_t total=0;
                while(total<2000000) {
                    n=d->readStream(s,&ptr,4096,flags,ns,1000000);
                    if(n==SOAPY_SDR_OVERFLOW&&interruptions++==0) continue;
                    if(n<0) throw std::runtime_error("read error "+std::to_string(n));
                    total+=n;
                }
                if(d->getFrequency(SOAPY_SDR_RX,0)!=hz) throw std::runtime_error("Frequency mismatch");
                std::cout<<"CAPTURE "<<fmt<<" "<<hz<<" "<<total<<" interruptions="<<interruptions<<"\n";
            }
            for(double bad:{5600000000.,4000000000.,7200000000.,std::nan("")}) {
                bool rejected=false;try {d->setFrequency(SOAPY_SDR_RX,0,bad);}catch(...) {rejected=true;}
                if(!rejected||d->getFrequency(SOAPY_SDR_RX,0)!=7115000000.) throw std::runtime_error("Invalid tune damaged stream");
            }
            bool rejected=false;try {d->setSampleRate(SOAPY_SDR_RX,0,40000000);}catch(...) {rejected=true;}
            if(!rejected||d->getSampleRate(SOAPY_SDR_RX,0)!=20000000.) throw std::runtime_error("Invalid 40MS/s pair damaged stream");
            int flags=0;long long ns=0;if(d->readStream(s,&ptr,4096,flags,ns,1000000)<=0)throw std::runtime_error("Failed after rejection");
            d->closeStream(s);s=nullptr;
        }
        d->setSampleRate(SOAPY_SDR_RX,0,5000000);
        bool rejected=false;try {d->setFrequency(SOAPY_SDR_RX,0,5190000000.);}catch(...) {rejected=true;}
        if(!rejected) throw std::runtime_error("Low-rate tuning crossed native Nyquist span");
        d->setFrequency(SOAPY_SDR_RX,0,5180250000.);
        SoapySDR::Device::unmake(d);std::cout<<"PASS\n";return 0;
    }catch(const std::exception &e){std::cerr<<e.what()<<"\n";if(s)d->closeStream(s);SoapySDR::Device::unmake(d);return 1;}
}
