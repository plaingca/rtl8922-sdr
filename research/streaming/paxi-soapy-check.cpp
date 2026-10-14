// SPDX-License-Identifier: GPL-2.0-only
// Explicit bounded hardware check; run once per isolated module load.
#include <SoapySDR/Device.hpp>
#include <SoapySDR/Formats.hpp>
#include <SoapySDR/Constants.h>
#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <vector>

int main(int argc, char **argv) {
    if(argc!=5) return 2;
    const double rate=std::stod(argv[1]);
    const std::string format=argv[2];
    const double duration=std::stod(argv[3]);
    if((rate!=80000000&&rate!=160000000)||(format!=SOAPY_SDR_CF32&&format!=SOAPY_SDR_CS16)||duration<=0||duration>60) return 2;
    auto *dev=SoapySDR::Device::make("driver=rtl8922");
    if(!dev) return 2;
    SoapySDR::Stream *stream=nullptr;
    try {
        if(dev->getSampleRate(SOAPY_SDR_RX,0)!=160000000. || dev->getFrequency(SOAPY_SDR_RX,0)!=5250000000.)
            throw std::runtime_error("Default device must start at 160 MS/s / 5250 MHz");
        dev->setSampleRate(SOAPY_SDR_RX,0,rate);
        stream=dev->setupStream(SOAPY_SDR_RX,format);
        std::vector<uint64_t> buffer(16384); void *ptr=buffer.data();
        std::ofstream prefix(argv[4],std::ios::binary);
        if(dev->activateStream(stream)) throw std::runtime_error("Activation failed");
        uint64_t total=0,calls=0,gridErrors=0;
        bool ended=false;
        const uint64_t target=static_cast<uint64_t>(rate*duration);
        const auto start=std::chrono::steady_clock::now();
        while(total<target) {
            int flags=0; long long ns=0;
            const size_t request=calls%4==0?257:calls%4==1?1024:calls%4==2?3000:16384;
            const int n=dev->readStream(stream,&ptr,std::min<uint64_t>(request,target-total),flags,ns,1000000);
            if(n==0&&(flags&SOAPY_SDR_END_BURST)&&duration==60&&total>=target*.98) { ended=true; break; }
            if(n<=0||!(flags&SOAPY_SDR_HAS_TIME)||ns!=static_cast<long long>(total*1e9/rate))
                throw std::runtime_error("Read/timestamp failure at "+std::to_string(total)+": "+std::to_string(n));
            if(total<65536) {
                if(format==SOAPY_SDR_CF32) {
                    const auto *in=static_cast<const float *>(ptr);
                    for(int j=0;j<2*n;++j) if(!std::isfinite(in[j])||in[j]<-1||in[j]>=1||in[j]*128!=std::round(in[j]*128)) gridErrors++;
                } else {
                    const auto *in=static_cast<const int16_t *>(ptr);
                    for(int j=0;j<2*n;++j) if(in[j]%256) gridErrors++;
                }
                prefix.write(static_cast<const char *>(ptr),n*(format==SOAPY_SDR_CF32?8:4));
            }
            total+=n; calls++;
        }
        dev->deactivateStream(stream);
        bool reloadRejected=false;
        try { dev->activateStream(stream); } catch(const std::exception &) { reloadRejected=true; }
        const double seconds=std::chrono::duration<double>(std::chrono::steady_clock::now()-start).count();
        dev->closeStream(stream); stream=nullptr;
        SoapySDR::Device::unmake(dev);
        std::cout<<"{\"format\":\""<<format<<"\",\"samples\":"<<total<<",\"calls\":"<<calls
                 <<",\"seconds\":"<<seconds<<",\"grid_errors\":"<<gridErrors
                 <<",\"bounded_end\":"<<(ended?"true":"false")
                 <<",\"reload_required\":"<<(reloadRejected?"true":"false")<<"}"<<std::endl;
        return gridErrors||!reloadRejected;
    } catch(const std::exception &e) {
        std::cerr<<e.what()<<std::endl;
        if(stream) try { dev->closeStream(stream); } catch(...) {}
        SoapySDR::Device::unmake(dev); return 1;
    }
}
