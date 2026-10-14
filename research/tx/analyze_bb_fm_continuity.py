#!/usr/bin/env python3
"""Measure out-of-range frequency holds in saved RF; never repairs samples."""
import argparse,hashlib,json,math
from pathlib import Path
import numpy as np
from scipy import signal,ndimage


def measure(iq,rate,carrier,start,end):
    x=iq*np.exp(-2j*np.pi*carrier*np.arange(len(iq))/rate)
    divisor=math.gcd(rate,400000);up=400000//divisor
    x=signal.resample_poly(x,up,rate//divisor,window=signal.firwin(161,125000,fs=rate*up))
    phase=np.angle(x[1:]*x[:-1].conj())*400000/(2*np.pi)
    lo=round(start*400000);hi=round(end*400000)
    smoothed=ndimage.median_filter(phase[lo:hi],size=9)
    bad=abs(smoothed)>95000
    edges=np.diff(np.r_[False,bad,False].astype(np.int8))
    spans=[((a+lo)/400000,(b-a)/400000) for a,b in zip(np.flatnonzero(edges==1),np.flatnonzero(edges==-1))]
    large=[{'start_seconds':a,'duration_seconds':b} for a,b in spans if b>=.0001]
    amp=abs(x[lo:hi]);floor=np.median(amp)*.1
    low=amp<floor;edges=np.diff(np.r_[False,low,False].astype(np.int8))
    fades=[(b-a)/400000 for a,b in zip(np.flatnonzero(edges==1),np.flatnonzero(edges==-1))]
    return {'examined_seconds':[start,end],'threshold_hz':95000,'discriminator_rate':400000,
            'median_filter_samples':9,'holds_at_least_100us':large,
            'max_out_of_range_hold_seconds':max((b for a,b in spans),default=0),
            'amplitude_below_tenth_median_max_seconds':max(fades,default=0),
            'no_100us_holds':not large,'repair_or_blanking':False,
            'scope':'Detects the old millisecond integer-NCO holds; not a proof of zero per-write jitter or indefinite service.'}


def main():
    p=argparse.ArgumentParser(description=__doc__)
    for name in ('rf-report','audio-report','report'):p.add_argument('--'+name,required=True,type=Path)
    a=p.parse_args()
    if a.report.exists():raise ValueError('Output exists')
    rf=json.loads(a.rf_report.read_text());audio=json.loads(a.audio_report.read_text())
    trace=Path(rf['private_trace']);iq=np.fromfile(trace,dtype='<c8')
    start=audio['pilot_start_seconds']+.005
    # Exclude switching on/off, not any internal boundary.
    duration=audio['duration_seconds']*audio['pilot_clock_scale']
    result=measure(iq,rf['rx_rate'],rf['carrier_hz'],start,audio['pilot_start_seconds']+duration-.005)
    result.update({'rf_report':str(a.rf_report),'audio_report':str(a.audio_report),
      'trace_sha256':hashlib.sha256(trace.read_bytes()).hexdigest(),
      'single_command':int(rf['stream']['result_words'][1],16)==1,
      'completed_blocks':rf['stream']['completed_blocks'],
      'batch_yields':rf.get('batch_yields',[]),
      'audio_heldout_correlation':audio['heldout_correlation'],
      'audio_heldout_signal_error_db':audio['heldout_signal_error_db'],
      'audio_blanking_enabled':bool(audio.get('blanking'))})
    if 'live_source' in rf:
        base=rf['source_started_monotonic'];origin=rf['capture_origin_monotonic']
        begin=origin+rf['timing']['start']-base;end=origin+rf['timing']['end']-base
        events=rf['live_source']['events']
        result['live_network_blocks_decoded_during_tx']=sum(begin<e['decoded_seconds']<end for e in events)
        result['source_error']=rf['live_source']['error']
    result['passed']=(result['no_100us_holds'] and result['single_command'] and
         not result['batch_yields'] and not result['audio_blanking_enabled'] and
         result['audio_heldout_correlation']>.95 and result['audio_heldout_signal_error_db']>10)
    a.report.write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result))


if __name__=='__main__':main()
