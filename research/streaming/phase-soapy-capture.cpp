// SPDX-License-Identifier: GPL-2.0-only
// Explicit manual RF validation client. Never run from CI.
#include <SoapySDR/Device.hpp>
#include <SoapySDR/Formats.hpp>
#include <SoapySDR/Constants.h>
#include <algorithm>
#include <chrono>
#include <cstdint>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <vector>
int main(int argc,char **argv) {
    if(argc!=5 && argc!=6) return 2;
    const double center=std::stod(argv[1]);
    if(center!=2447000000.) return 2;
    auto *dev=SoapySDR::Device::make("driver=rtl8922");
    SoapySDR::Stream *stream=nullptr;
    try {
        stream=dev->setupStream(SOAPY_SDR_RX,SOAPY_SDR_CS16);
        const size_t count=argc==6?std::stoull(argv[5]):32*1024*1024;
        if(count<32768 || count>160000000) throw std::runtime_error("Capture size outside bounded limits");
        std::vector<int8_t> data(count*2);
        std::vector<int16_t> buffer(32768);
        std::vector<uint64_t> boundaries; boundaries.reserve(count/256);
        void *ptr=buffer.data();
        if(dev->activateStream(stream)) throw std::runtime_error("Activation failed");
        dev->setFrequency(SOAPY_SDR_RX,0,center);
        if(dev->getSampleRate(SOAPY_SDR_RX,0)!=160000000.) throw std::runtime_error("Wrong sample rate");
        std::cout<<"READY"<<std::endl;
        uint64_t total=0,postRetune=0,origin=0,calls=0;
        long long expected=0,initialTime=0; bool haveTime=false,capturing=false,retuneGap=false;
        const auto started=std::chrono::steady_clock::now();
        while(total<count) {
            if(std::chrono::steady_clock::now()-started>std::chrono::seconds(8))
                throw std::runtime_error("Bounded read deadline exceeded");
            const bool go=std::filesystem::exists(argv[2]);
            const size_t sizes[]={257,1024,3000,16384};
            const size_t request=capturing?std::min(count-total,sizes[calls%4]):4096;
            int flags=0;long long ns=0;
            const int n=dev->readStream(stream,&ptr,request,flags,ns,1000000);
            if(n==SOAPY_SDR_OVERFLOW&&!haveTime&&!retuneGap) {retuneGap=true;continue;}
            if(n<=0||size_t(n)>request||!(flags&SOAPY_SDR_HAS_TIME))
                throw std::runtime_error("Unexpected stream read: "+std::to_string(n));
            if(haveTime&&ns!=expected) throw std::runtime_error("Timestamp discontinuity");
            // Integer timestamps at 160 MS/s may alternate fractional rounding.
            // Use absolute sample position relative to the first read below.
            if(!haveTime) { initialTime=ns; haveTime=true; }
            if(go&&!capturing&&n==4096) {capturing=true;origin=postRetune;}
            if(capturing) {
                for(int j=0;j<2*n;++j) {
                    if(buffer[j]%256) throw std::runtime_error("Unexpected CS16 sample grid");
                    data[2*total+j]=static_cast<int8_t>(buffer[j]/256);
                }
                total+=n;boundaries.push_back(total);
            }
            postRetune+=n;++calls;
            expected=initialTime+static_cast<long long>((postRetune*25ULL)/4);
        }
        dev->deactivateStream(stream);
        dev->closeStream(stream);stream=nullptr;SoapySDR::Device::unmake(dev);dev=nullptr;
        std::ofstream out(argv[3],std::ios::binary);out.write(reinterpret_cast<char*>(data.data()),data.size());
        if(!out) throw std::runtime_error("Capture write failed");
        std::ofstream meta(argv[4]);
        meta<<"{\"sample_rate\":160000000,\"samples\":"<<total<<",\"calls\":"<<calls<<",\"source_origin_samples\":"<<origin
            <<",\"intentional_retune_gap\":"<<(retuneGap?"true":"false")<<",\"read_boundaries\":[";
        for(size_t k=0;k<boundaries.size();++k) {if(k) meta<<',';meta<<boundaries[k];}meta<<"]}\n";
        std::cout<<"DONE"<<std::endl; return 0;
    } catch(const std::exception &e) {
        std::cerr<<e.what()<<std::endl;
        if(stream) try {dev->deactivateStream(stream);dev->closeStream(stream);} catch(...) {}
        if(dev) SoapySDR::Device::unmake(dev);
        return 1;
    }
}
