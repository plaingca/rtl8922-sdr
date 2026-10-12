#include <SoapySDR/Device.hpp>
#include <SoapySDR/Formats.hpp>
#include <SoapySDR/Constants.h>
#include <complex>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <vector>
int main() {
    const double rate=std::getenv("RTL8922_TEST_RATE")?std::atof(std::getenv("RTL8922_TEST_RATE")):20000000.;
    const double seconds=std::getenv("RTL8922_CAPTURE_SECONDS")?std::atof(std::getenv("RTL8922_CAPTURE_SECONDS")):.2;
    if(seconds<.001||seconds>2) { std::cerr<<"capture duration out of bounds"<<std::endl; return 1; }
    const uint64_t count=65536;
    const std::string file=std::getenv("RTL8922_CAPTURE_FILE")?std::getenv("RTL8922_CAPTURE_FILE"):"/home/plaing/rtl8922-iq-research/soapy/coded-cf32.bin";
    auto *dev=SoapySDR::Device::make("driver=rtl8922,free_tuning=1,producer_scheduler=deadline");
    if(!dev) return 1;
    auto *s=dev->setupStream(SOAPY_SDR_RX,SOAPY_SDR_CF32);
    dev->setSampleRate(SOAPY_SDR_RX,0,rate);
    dev->setFrequency(SOAPY_SDR_RX,0,std::atof(std::getenv("RTL8922_TEST_FREQUENCY")));
    std::ofstream out(file,std::ios::binary);
    if(dev->activateStream(s)) return 2;
    std::vector<std::complex<float>> buf(16384); void *ptr=buf.data();
    uint64_t total=0;
    while(total<count) {
        int flags=0; long long ns=0;
        int n=dev->readStream(s,&ptr,std::min<uint64_t>(buf.size(),count-total),flags,ns,1000000);
        if(n<=0||!(flags&SOAPY_SDR_HAS_TIME)||ns!=static_cast<long long>(total*1e9/rate)) {
            std::cerr<<"capture failure "<<n<<" at "<<total<<std::endl;
            dev->deactivateStream(s); dev->closeStream(s); SoapySDR::Device::unmake(dev); return 3;
        }
        out.write(reinterpret_cast<char *>(buf.data()),n*sizeof(buf[0])); total+=n;
    }
    std::cout<<"RF_CENTER "<<dev->readSetting("rf_center")<<" OFFSET "<<dev->readSetting("bb_offset")<<std::endl;
    dev->deactivateStream(s); dev->closeStream(s); SoapySDR::Device::unmake(dev);
    out.close(); std::cout<<"{\"coded_samples\":"<<total<<",\"rate\":"<<rate<<"}"<<std::endl;
    return 0;
}
