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
    const uint64_t count=static_cast<uint64_t>(rate*seconds);
    const std::string file=std::getenv("RTL8922_CAPTURE_FILE")?std::getenv("RTL8922_CAPTURE_FILE"):"/home/plaing/rtl8922-iq-research/soapy/coded-cf32.bin";
    auto *dev=SoapySDR::Device::make(rate==40000000?"driver=rtl8922,experimental40=1":"driver=rtl8922,capture_mode=legacy");
    if(!dev) return 1;
    auto *s=dev->setupStream(SOAPY_SDR_RX,SOAPY_SDR_CF32);
    dev->setSampleRate(SOAPY_SDR_RX,0,rate);
    dev->setFrequency(SOAPY_SDR_RX,0,rate==40000000?2422000000.:2412000000.);
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
    dev->deactivateStream(s); dev->closeStream(s); SoapySDR::Device::unmake(dev);
    out.close(); std::cout<<"{\"coded_samples\":"<<total<<",\"rate\":"<<rate<<"}"<<std::endl;
    return 0;
}
