#!/usr/bin/env python3
"""Offline Pluto FM receiver. Reference is used only for pilot alignment/metrics.

No audio is copied from the reference into the demodulated output. Audio uses
complex downconversion, channel filtering, phase differences, and 75 us deemphasis.
"""
import argparse
import hashlib
import math
import json
from pathlib import Path
import wave
import numpy as np
from scipy import signal, optimize, ndimage
from bb_fm_audio import write_wav


def blank_impulses(phase, rate):
    # Valid modulation is bounded to +/-74.22 kHz. Batch-return holds sit at
    # +/-125 kHz. Blank only brief excursions, without consulting the payload.
    smooth=ndimage.median_filter(phase,size=9)
    bad=ndimage.maximum_filter1d((abs(smooth)>95000).astype(np.uint8),size=81)>0
    edges=np.diff(np.r_[False,bad,False].astype(np.int8))
    spans=[];out=phase.copy()
    for start,end in zip(np.flatnonzero(edges==1),np.flatnonzero(edges==-1)):
        if start>0 and end<len(out) and end-start<rate*.01:
            out[start:end]=np.linspace(out[start-1],out[end],end-start+2)[1:-1]
            spans.append([int(start),int(end)])
    return out,{'blanked_samples':sum(b-a for a,b in spans),'phase_rate':rate,'spans':spans,
                'method':'interpolate excursions above 95 kHz shorter than 10 ms; no reference used'}


def demodulate(iq, rate, carrier, audio_rate=32000, blank=False, diagnostics=None):
    if rate not in (1000000,2000000) or audio_rate!=32000:raise ValueError("Receiver requires 1/2 MS/s IQ and 32 kHz audio")
    mixed=iq*np.exp(-2j*np.pi*carrier*np.arange(len(iq))/rate)
    divisor=math.gcd(int(rate),400000);up=400000//divisor;down=int(rate)//divisor
    channel=signal.resample_poly(mixed,up,down,window=signal.firwin(161,125000,fs=rate*up))
    phase=np.angle(channel[1:]*channel[:-1].conj())*400000/(2*np.pi)
    if blank:
        phase,stats=blank_impulses(phase,400000)
        if diagnostics is not None:diagnostics.update(stats)
    audio=signal.resample_poly(phase,2,25) # 2 MHz -> 400 kHz -> 32 kHz
    alpha=np.exp(-1/(audio_rate*75e-6))
    audio=signal.lfilter([1-alpha],[1,-alpha],audio)
    return signal.sosfilt(signal.butter(2,30,fs=audio_rate,btype='highpass',output='sos'),audio)


def align_pilot(audio,reference,rate,preamble_samples):
    # Estimate delay, clock and gain using the known initial pilot ONLY.
    ref=reference[:preamble_samples]
    ref=signal.sosfilt(signal.butter(2,30,fs=rate,btype='highpass',output='sos'),ref)
    search=audio[:min(len(audio),int(.6*rate)+len(ref))]
    best=None
    for scale in np.linspace(.97,1.07,201):
        template=np.interp(np.arange(round(len(ref)*scale))/scale,np.arange(len(ref)),ref)
        c=signal.correlate(search,template,mode='valid',method='fft')
        energy=signal.convolve(search**2,np.ones(len(template)),mode='valid',method='fft')
        score=c/np.sqrt(np.maximum(energy*np.dot(template,template),1e-20))
        j=int(np.argmax(score))
        if best is None or score[j]>best[0]:best=(float(score[j]),j,scale)
    _,delay,scale=best
    points=np.arange(len(ref))
    def evaluate(v,details=False):
        got=np.interp(v[0]+points*v[1],np.arange(len(audio)),audio)
        gain=np.dot(got,ref)/np.dot(ref,ref)
        residual=got-gain*ref
        err=np.dot(residual,residual)/max(np.dot(got,got),1e-20)
        return (got,gain,err) if details else err
    result=optimize.minimize(evaluate,[delay,scale],method='Nelder-Mead',
                            options={'xatol':1e-8,'maxiter':500})
    delay,scale=result.x
    got,gain,error=evaluate(result.x,True)
    if not (0<=delay<len(search) and .96<scale<1.08 and gain>0):raise ValueError('Pilot synchronization failed')
    return float(delay),float(scale),float(gain),float(10*np.log10(1/max(error,1e-20)))


def analyze(audio,reference,rate,preamble_samples):
    delay,scale,gain,pilot_snr=align_pilot(audio,reference,rate,preamble_samples)
    received=np.interp(delay+np.arange(len(reference))*scale,np.arange(len(audio)),audio)/gain
    expected=signal.sosfilt(signal.butter(2,30,fs=rate,btype='highpass',output='sos'),reference)
    a=received[preamble_samples:];b=expected[preamble_samples:]
    def snr(x):return float(10*np.log10(np.sum(b*b)/max(np.sum((x-b)**2),1e-20)))
    stats={'pilot_start_seconds':delay/rate,'pilot_clock_scale':scale,'measured_audio_rate':rate/scale,
           'pilot_gain_hz_per_unit':gain,'pilot_signal_error_db':pilot_snr,
           'heldout_correlation':float(np.corrcoef(a,b)[0,1]),'heldout_signal_error_db':snr(a),
           'wrong_payload_signal_error_db':snr(np.roll(a,rate//7)),
           'heldout_samples':len(a),'output_peak_before_wav_normalization':float(max(abs(received))),
           'alignment_uses':'initial chirp preamble only; held-out body does not tune alignment or gain'}
    return received,stats


def score_with_measured_pauses(audio, reference, rate, preamble, stats, blanking, blocks):
    """Account for RF-measured batch pauses; never fit the speech body."""
    start=stats['pilot_start_seconds'];scale=stats['pilot_clock_scale']
    phase_rate=blanking['phase_rate']
    spans=[(a,b) for a,b in blanking['spans'] if
           start<a/phase_rate<start+len(reference)*scale/rate+.1 and (b-a)/phase_rate>.001]
    expected=(blocks-1)//8
    result={'expected_pauses':expected,'detected_pauses':len(spans),
            'alignment':'initial pilot plus RF excursions; no speech-body fitting'}
    if len(spans)!=expected:
        result['status']='pause_count_mismatch';return result
    # Detection dilates by 40 samples at each edge; subtract that known margin.
    pauses=np.array([(b-a-80)/phase_rate for a,b in spans])
    gaps=np.r_[0,np.cumsum(pauses)]
    points=np.arange(preamble,len(reference))
    sample_times=start*rate+points*scale+gaps[points//16384]*rate
    got=np.interp(sample_times,np.arange(len(audio)),audio)/stats['pilot_gain_hz_per_unit']
    wanted=signal.sosfilt(signal.butter(2,30,fs=rate,btype='highpass',output='sos'),reference)[points]
    energy=np.sum(wanted*wanted)
    result.update({'status':'scored','pause_seconds':pauses.tolist(),
        'total_pause_seconds':float(sum(pauses)),
        'heldout_correlation':float(np.corrcoef(got,wanted)[0,1]),
        'heldout_signal_error_db':float(10*np.log10(energy/np.sum((got-wanted)**2))),
        'wrong_payload_signal_error_db':float(10*np.log10(energy/np.sum((got-np.roll(wanted,rate//7))**2)))})
    return result


def main():
    p=argparse.ArgumentParser(description=__doc__)
    for arg in ('trace','rf-report','source','source-metadata','output','report'):p.add_argument('--'+arg,type=Path,required=True)
    p.add_argument('--blank-impulses',action='store_true')
    p.add_argument('--skip-preamble',action='store_true')
    args=p.parse_args()
    if args.output.exists() or args.report.exists():raise ValueError('Output exists')
    rf=json.loads(args.rf_report.read_text());meta=json.loads(args.source_metadata.read_text())
    if rf['rx_rate'] not in (1000000,2000000):raise ValueError('Receiver requires 1/2 MS/s')
    with wave.open(str(args.source),'rb') as w:
        rate=w.getframerate();ref=np.frombuffer(w.readframes(w.getnframes()),dtype='<i2').astype(float)/32767
    iq=np.fromfile(args.trace,dtype='<c8')
    blanking={}
    audio=demodulate(iq,rf['rx_rate'],rf['carrier_hz'],rate,args.blank_impulses,blanking)
    received,stats=analyze(audio,ref,rate,meta['preamble_samples'])
    if blanking:
        stats['pause_corrected']=score_with_measured_pauses(audio,ref,rate,meta['preamble_samples'],stats,blanking,rf['stream']['blocks'])
    stats.update({'trace_sha256':hashlib.sha256(args.trace.read_bytes()).hexdigest(),
        'rf_report':str(args.rf_report),'source':str(args.source),'output':str(args.output),
        'rf_center_hz':rf['center_hz'],'audio_rate':rate,'duration_seconds':len(received)/rate,
        'stream_completed_blocks':rf['stream']['completed_blocks'],'stream_requested_blocks':rf['stream']['blocks'],
        'stream_status':rf['stream']['status'],'receiver':'125 kHz channel LPF, quadrature FM, 75 us deemphasis, 30 Hz highpass',
        'reference_audio_inserted':False})
    # Export the actual continuous received timeline, including batch pauses.
    start=round(stats['pilot_start_seconds']*rate)
    # Stop before the padded tail/TX-off transition, using known source length
    # and pauses measured from RF. No replacement audio is synthesized.
    pause_seconds=stats.get('pause_corrected',{}).get('total_pause_seconds',0)
    count=min(round(rf['stream']['host_seconds']*rate),
              round(len(ref)*stats['pilot_clock_scale']+pause_seconds*rate))
    skip=round(meta['preamble_samples']*stats['pilot_clock_scale']) if args.skip_preamble else 0
    received=audio[start+skip:start+count]/stats['pilot_gain_hz_per_unit']
    stats['skipped_preamble_seconds']=skip/rate
    if blanking:
        spans=[(a,b) for a,b in blanking['spans'] if start/rate<=a/blanking['phase_rate']<(start+count)/rate]
        blanking['spans']=spans
        blanking['blanked_samples']=sum(b-a for a,b in spans)
        blanking['fraction_of_stream']=blanking['blanked_samples']/blanking['phase_rate']/(count/rate)
    stats['output_duration_seconds']=len(received)/rate
    stats['blanking']=blanking
    normalizer=max(1.,float(max(abs(received)))/.98)
    stats['wav_normalizer']=normalizer
    write_wav(args.output,received/normalizer,rate)
    args.report.write_text(json.dumps(stats,indent=2)+'\n');print(json.dumps({k:stats[k] for k in ('output','output_duration_seconds','pause_corrected','wav_normalizer') if k in stats}))


if __name__=='__main__':main()
