#pragma once
#include <fftw3.h>
#include <algorithm>
#include <cmath>
#include <stdexcept>
#include <vector>

// Owns one reusable single-precision FFT plan. Used only by the display worker.
class FFTSpectrum {
public:
    static constexpr size_t size=262144, overviewBins=2048;
    std::vector<float> bins;
    double rms=0, peakDbfs=0, peakHz=0, zoomStartHz=0, zoomBinHz=0;
    size_t zoomBins=0;
    FFTSpectrum():window(size),power(size) {
        input=static_cast<fftwf_complex *>(fftwf_malloc(sizeof(fftwf_complex)*size));
        output=static_cast<fftwf_complex *>(fftwf_malloc(sizeof(fftwf_complex)*size));
        if(input&&output) plan=fftwf_plan_dft_1d(size,input,output,FFTW_FORWARD,FFTW_MEASURE);
        if(!plan) { fftwf_free(input); fftwf_free(output); throw std::runtime_error("FFT plan allocation failed"); }
        double sum=0;
        for(size_t i=0;i<size;i++) { window[i]=.5-.5*std::cos(2*std::acos(-1.)*i/(size-1)); sum+=window[i]; }
        normalization=1/(sum*sum);
        bins.reserve(overviewBins+size/4);
    }
    ~FFTSpectrum() { fftwf_destroy_plan(plan); fftwf_free(input); fftwf_free(output); }
    FFTSpectrum(const FFTSpectrum&)=delete;
    FFTSpectrum& operator=(const FFTSpectrum&)=delete;
    void analyze(const float *iq,double rate,double zoomCenter) {
        double squares=0;
        for(size_t i=0;i<size;i++) {
            input[i][0]=iq[2*i]*window[i]; input[i][1]=iq[2*i+1]*window[i];
            squares+=double(iq[2*i])*iq[2*i]+double(iq[2*i+1])*iq[2*i+1];
        }
        rms=std::sqrt(squares/size);
        fftwf_execute(plan);
        float peak=0; size_t peakIndex=0;
        for(size_t i=0;i<size;i++) {
            const size_t k=(i+size/2)%size;
            power[i]=(double(output[k][0])*output[k][0]+double(output[k][1])*output[k][1])*normalization;
            if(power[i]>peak) { peak=power[i]; peakIndex=i; }
        }
        peakDbfs=toDb(peak); peakHz=(double(peakIndex)-size/2)*rate/size;
        zoomCenter=std::clamp(zoomCenter,-rate/2+750000,rate/2-750000);
        const size_t first=std::max(0.,std::ceil((zoomCenter-750000)*size/rate+size/2));
        const size_t end=std::min(double(size-1),std::floor((zoomCenter+750000)*size/rate+size/2));
        zoomBins=(end-first+1)/4;
        zoomStartHz=(double(first)-size/2)*rate/size; zoomBinHz=4*rate/size;
        bins.resize(overviewBins+zoomBins);
        for(size_t i=0;i<overviewBins;i++) bins[i]=toDb(*std::max_element(power.begin()+i*(size/overviewBins),power.begin()+(i+1)*(size/overviewBins)));
        for(size_t i=0;i<zoomBins;i++) bins[overviewBins+i]=toDb(*std::max_element(power.begin()+first+i*4,power.begin()+first+(i+1)*4));
    }
private:
    static float toDb(float power) { return 10*std::log10(std::max(power,1e-14f)); }
    fftwf_complex *input=nullptr,*output=nullptr;
    fftwf_plan plan=nullptr;
    std::vector<float> window,power;
    double normalization;
};
