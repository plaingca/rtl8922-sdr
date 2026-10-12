#include <SoapySDR/Device.hpp>
#include <SoapySDR/Formats.hpp>
#include <SoapySDR/Constants.h>
#include <chrono>
#include <cstdint>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <vector>
int main() {
    std::string args="driver=rtl8922";
    if(std::getenv("RTL8922_TEST_RATE")&&std::atof(std::getenv("RTL8922_TEST_RATE"))==40000000) args+=",experimental40=1";
    if(std::getenv("RTL8922_PRODUCER_SCHEDULER")) args+=",producer_scheduler="+std::string(std::getenv("RTL8922_PRODUCER_SCHEDULER"));
    auto *dev=SoapySDR::Device::make(args);
    if(!dev) return 1;
    try {
        const double rate=std::getenv("RTL8922_TEST_RATE")?std::atof(std::getenv("RTL8922_TEST_RATE")):5000000;
        dev->setSampleRate(SOAPY_SDR_RX,0,rate);
        dev->setFrequency(SOAPY_SDR_RX,0,std::getenv("RTL8922_TEST_FREQUENCY")?std::atof(std::getenv("RTL8922_TEST_FREQUENCY")):(rate==40000000?2422000000.:2412000000.));
        for(const std::string format:{SOAPY_SDR_CS16,SOAPY_SDR_CF32}) {
            auto *stream=dev->setupStream(SOAPY_SDR_RX,format);
            std::vector<uint8_t> buffer(3000*8); void *ptr=buffer.data();
            std::ofstream capture("/home/plaing/rtl8922-iq-research/soapy/"+format+".bin",std::ios::binary);
            const auto start=std::chrono::steady_clock::now();
            uint64_t samples=0, calls=0, timeouts=0;
            int flags=0; long long ns=0;
            if(dev->readStream(stream,&ptr,1,flags,ns,1000)!=SOAPY_SDR_TIMEOUT) throw std::runtime_error("Inactive stream did not time out");
            if(dev->activateStream(stream)) throw std::runtime_error("Activation failed");
            try {
                while(samples<static_cast<uint64_t>(rate*(format==SOAPY_SDR_CS16&&std::getenv("RTL8922_LONG_TEST")?(std::getenv("RTL8922_TEST_SECONDS")?std::atof(std::getenv("RTL8922_TEST_SECONDS")):65):2))) {
                    const int n=dev->readStream(stream,&ptr,calls%3==0?257:calls%3==1?1024:3000,flags,ns,1000000);
                    if(n==SOAPY_SDR_TIMEOUT) { timeouts++; if(timeouts>10) throw std::runtime_error("Repeated timeouts"); continue; }
                    if(n<0) throw std::runtime_error("readStream error "+std::to_string(n));
                    const long long expected=static_cast<long long>(samples*1e9/rate);
                    if(!(flags&SOAPY_SDR_HAS_TIME)||ns!=expected) throw std::runtime_error("Sample timestamp discontinuity");
                    if(samples<65536) capture.write(reinterpret_cast<char *>(buffer.data()),n*(format==SOAPY_SDR_CS16?4:8));
                    samples+=n; calls++;
                }
            } catch(...) { dev->deactivateStream(stream); dev->closeStream(stream); throw; }
            dev->deactivateStream(stream); dev->closeStream(stream);
            const auto seconds=std::chrono::duration<double>(std::chrono::steady_clock::now()-start).count();
            std::cout<<"{\"format\":\""<<format<<"\",\"samples\":"<<samples<<",\"calls\":"<<calls<<",\"timeouts\":"<<timeouts<<",\"seconds\":"<<seconds<<"}"<<std::endl;
        }
        SoapySDR::Device::unmake(dev); return 0;
    } catch(const std::exception &e) { std::cerr<<e.what()<<std::endl; SoapySDR::Device::unmake(dev); return 1; }
}
