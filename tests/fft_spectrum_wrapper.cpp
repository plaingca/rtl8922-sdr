// Hardware-free C ABI for comparison with the independent NumPy reference.
#include "../fft-spectrum.hpp"
extern "C" {
void *spectrum_create() { return new FFTSpectrum; }
void spectrum_destroy(void *p) { delete static_cast<FFTSpectrum *>(p); }
size_t spectrum_analyze(void *p,const float *iq,double rate,double offset,float *bins,double *metrics) {
    auto &s=*static_cast<FFTSpectrum *>(p); s.analyze(iq,rate,offset);
    std::copy(s.bins.begin(),s.bins.end(),bins);
    metrics[0]=s.rms; metrics[1]=s.peakDbfs; metrics[2]=s.peakHz;
    metrics[3]=s.zoomStartHz; metrics[4]=s.zoomBinHz;
    return s.bins.size();
}
}
