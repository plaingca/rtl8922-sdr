"""Hardware-free LoRa channel selection before the modem's chip decimation."""
import math
import numpy as np
from scipy.signal import resample_poly,firwin,fftconvolve

FILTER_TAPS=257
FILTER_CUTOFF_BW=.55

def channelize(samples,input_rate,bandwidth,offset,channel_filter=True):
    target=bandwidth*8;div=math.gcd(target,input_rate)
    mixed=np.asarray(samples)*np.exp(-2j*np.pi*offset*np.arange(len(samples))/input_rate)
    result=resample_poly(mixed,target//div,input_rate//div,window=('kaiser',8)).astype('<c8')
    if channel_filter:
        taps=firwin(FILTER_TAPS,FILTER_CUTOFF_BW*bandwidth,fs=target,window=('kaiser',8))
        result=fftconvolve(result,taps,mode='same').astype('<c8')
    return result,target
