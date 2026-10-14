#include <SoapySDR/Device.hpp>
#include <SoapySDR/Formats.hpp>
#include <SoapySDR/Constants.h>
#include <chrono>
#include <complex>
#include <iostream>
#include <thread>
#include <vector>
int main() {
    auto *dev=SoapySDR::Device::make("driver=rtl8922,capture_mode=legacy");
    if(!dev) return 1;
    auto *s=dev->setupStream(SOAPY_SDR_RX,SOAPY_SDR_CF32);
    if(dev->activateStream(s)) return 2;
    // Fill the 128 MiB FIFO deliberately; the driver continues sampling.
    std::this_thread::sleep_for(std::chrono::milliseconds(3800));
    std::vector<std::complex<float>> buffer(4096); void *p=buffer.data();
    bool sawOverflow=false; uint64_t samples=0;
    auto end=std::chrono::steady_clock::now()+std::chrono::seconds(5);
    while(std::chrono::steady_clock::now()<end) {
        int flags=0; long long ns=0;
        int n=dev->readStream(s,&p,buffer.size(),flags,ns,100000);
        if(n==SOAPY_SDR_OVERFLOW) { sawOverflow=true; break; }
        if(n<0&&n!=SOAPY_SDR_TIMEOUT) break;
        if(n>0) samples+=n;
    }
    dev->deactivateStream(s); dev->closeStream(s); SoapySDR::Device::unmake(dev);
    std::cout<<"{\"overflow_reported\":"<<(sawOverflow?"true":"false")<<",\"samples_before_gap\":"<<samples<<"}"<<std::endl;
    return sawOverflow?0:3;
}
