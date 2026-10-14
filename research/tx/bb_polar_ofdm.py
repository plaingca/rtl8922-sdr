#!/usr/bin/env python3
"""Known 2-MHz OFDM generation, polar quantization, and independent decoding."""
import argparse
import hashlib
import json
from pathlib import Path
import zlib
from fractions import Fraction
import numpy as np
from scipy.signal import fftconvolve,find_peaks,firwin,lfilter,resample_poly

FS=16000000/3
NFFT=64
CP=16
SYMBOL=NFFT+CP
CARRIERS=np.r_[np.arange(-12,0),np.arange(1,13)]
PILOTS=np.array([-9,-3,3,9])
DATA=np.array([k for k in CARRIERS if k not in PILOTS])
NSYMBOLS=8
FRAME=SYMBOL*(2+NSYMBOLS)
CARRIER=4000000.
LEVELS=np.array([0,1/64,1/32,1/16,1/8,1/4,1/2])
CODES=np.array([63,54,45,36,27,18,9])
MESSAGE=b'RTL8922 polar OFDM at 2 MHz'


def training(seed=8922):
    rng=np.random.default_rng(seed)
    f=np.zeros(NFFT,dtype=complex);f[CARRIERS%NFFT]=1-2*rng.integers(0,2,len(CARRIERS))
    z=np.fft.ifft(f)*np.sqrt(NFFT)
    return f,np.r_[z[-CP:],z]


def make_frame(seed=8922,peak=.25,message=MESSAGE):
    f,train=training(seed)
    require(len(message)<=36,'Message exceeds packet body')
    body=message.ljust(36,b'\0');packet=body+zlib.crc32(body).to_bytes(4,'big')
    bits=np.unpackbits(np.frombuffer(packet,dtype=np.uint8)).astype(int)
    chunks=[train,train];grid=[]
    for s in range(NSYMBOLS):
        b=bits[s*40:(s+1)*40].reshape(-1,2)
        q=((1-2*b[:,0])+1j*(1-2*b[:,1]))/np.sqrt(2)
        y=np.zeros(NFFT,dtype=complex);y[DATA%NFFT]=q;y[PILOTS%NFFT]=1 if s%2==0 else -1
        z=np.fft.ifft(y)*np.sqrt(NFFT);chunks.append(np.r_[z[-CP:],z]);grid.append(q)
    z=np.concatenate(chunks);z*=peak/max(abs(z))
    return z,packet,np.array(grid)


def polar_table(z,amp_mode='feedback',amp_advance=1.,levels=LEVELS,codes=CODES):
    require(len(z)%8==0,'Table length must be multiple of eight')
    levels=np.asarray(levels,dtype=float);codes=np.asarray(codes,dtype=int)
    require(len(levels)==len(codes) and len(levels)>1 and np.all(np.isfinite(levels)) and
            np.all(levels>=0) and np.all(np.diff(levels)>0),'Invalid attenuation levels')
    require(np.all((codes>=0)&(codes<=63)) and len(set(codes.tolist()))==len(codes),'Invalid attenuation codes')
    phi=np.unwrap(np.angle(np.r_[z,z[0]]))
    winding=int(round((phi[-1]-phi[0])/(2*np.pi)))
    shift=int(round(winding/3)*3-winding)
    n=np.arange(len(z)+1);phi=phi-phi[0]+2*np.pi*shift*n/len(z)
    quantum=2*np.pi*250000/FS
    phase_units=np.rint(phi/quantum+16*n).astype(np.int64)
    index=np.diff(phase_units)
    require(phase_units[-1]%64==0,'NCO phase does not close over repeating frame')
    require(np.all((index>0)&(index<2048)),'NCO zero/mute or signed range exceeded')
    envelope=np.interp((np.arange(len(z))+amp_advance)%len(z),np.arange(len(z)+1),np.r_[abs(z),abs(z[0])])
    chosen=[];error=0.
    for value in envelope:
        target=value+error if amp_mode=='feedback' else value
        k=int(np.argmin(abs(levels-target)));chosen.append(k)
        if amp_mode=='feedback':error=target-levels[k]
    chosen=np.array(chosen)
    packed=(codes[chosen].astype('<u4')<<16)|index.astype('<u4')
    meta={'schema_version':1,'hardware_access':False,'sample_rate':FS,'nfft':NFFT,'cp':CP,
      'frame_samples':len(z),'nominal_subcarrier_span_hz':2000000.,'subcarrier_spacing_hz':FS/NFFT,
      'active_carriers':CARRIERS.tolist(),'pilot_carriers':PILOTS.tolist(),'data_symbols':NSYMBOLS,
      'carrier_offset_hz':CARRIER,'amp_mode':amp_mode,'amp_advance_samples':amp_advance,
      'phase_winding_cycles':winding,'closure_shift_cycles':shift,'closure_frequency_shift_hz':shift*FS/len(z),
      'nco_index_min':int(min(index)),'nco_index_max':int(max(index)),
      'nco_index_sum':int(sum(index)),'amplitude_code_histogram':{str(code):int(np.sum(codes[chosen]==code)) for code in codes},
      'amplitude_levels':levels.tolist(),'amplitude_codes':codes.tolist(),
      'phase_quantization_step_radians':quantum,'payload_message':MESSAGE.decode(),
      'packet_bytes':40,'training_seed':8922,'crc':'CRC32 over 36 payload bytes, big-endian trailer',
      'scope':'Custom laboratory OFDM, not an IEEE 802.11 waveform'}
    return packed,phase_units,levels[chosen],meta


def model(table,phase_units,levels,repeats=16,oversample=24,amp_delay=.5):
    n=len(table);position=np.arange(n*oversample)/oversample;index=np.floor(position).astype(int)
    freq=(table&4095).astype(float)
    quantum=2*np.pi*250000/FS
    phase=quantum*(phase_units[index]+freq[index]*(position-index))-2*np.pi*CARRIER*position/FS
    amplitude=levels[np.floor(position-amp_delay).astype(int)%n]
    z=amplitude*np.exp(1j*phase)
    # Physical RF/channel filtering before sampling, avoiding unfiltered aliases.
    taps=firwin(257,1400000,fs=FS*oversample)
    z=np.tile(z,repeats+2);z=lfilter(taps,[1],z)[n*oversample:-(n*oversample)]
    return resample_poly(z,1,oversample)


def require(condition,message):
    if not condition:raise ValueError(message)


def decode(baseband,rate=FS,seed=8922,threshold=.55,reference_packet=None):
    ratio=Fraction(FS/rate).limit_denominator(32768)
    y=resample_poly(baseband,ratio.numerator,ratio.denominator) if rate!=FS else np.asarray(baseband)
    f,train=training(seed)
    correlation=fftconvolve(y,np.conj(train[::-1]),mode='valid')
    energy=fftconvolve(abs(y)**2,np.ones(len(train)),mode='valid').real
    score=abs(correlation)/np.sqrt(np.maximum(energy,1e-20)*sum(abs(train)**2))
    peaks,_=find_peaks(score,height=threshold,distance=55)
    starts=[int(p) for p in peaks if np.any(abs(peaks-(p+SYMBOL))<=2) and p+FRAME<=len(y)]
    _,packet,expected=make_frame(seed)
    if reference_packet is not None:
        require(len(reference_packet)==40,'Scoring reference must contain 40 bytes')
        packet=reference_packet
        rb=np.unpackbits(np.frombuffer(packet,dtype=np.uint8)).astype(int).reshape(NSYMBOLS,len(DATA),2)
        expected=((1-2*rb[:,:,0])+1j*(1-2*rb[:,:,1]))/np.sqrt(2)
    rows=[];symbols=[]
    for start in starts:
        frame=y[start:start+FRAME]
        cross=np.vdot(frame[:SYMBOL],frame[SYMBOL:2*SYMBOL])
        cfo=float(np.angle(cross)*FS/(2*np.pi*SYMBOL))
        frame=frame*np.exp(-2j*np.pi*cfo*np.arange(FRAME)/FS)
        spectra=np.fft.fft(frame.reshape(-1,SYMBOL)[:,CP:],axis=1)/np.sqrt(NFFT)
        h=np.mean(spectra[:2,CARRIERS%NFFT],axis=0)/f[CARRIERS%NFFT]
        if min(abs(h))<1e-8:continue
        eqall=[]
        for s in range(NSYMBOLS):
            eq=spectra[s+2,CARRIERS%NFFT]/h
            pilot_mask=np.isin(CARRIERS,PILOTS)
            phase=np.unwrap(np.angle(eq[pilot_mask]/(1 if s%2==0 else -1)))
            slope,intercept=np.polyfit(PILOTS,phase,1)
            eq=eq*np.exp(-1j*(intercept+slope*CARRIERS))
            eqall.append(eq[~pilot_mask])
        eqall=np.array(eqall)
        bits=np.stack((eqall.real<0,eqall.imag<0),axis=-1).reshape(-1)
        recovered=np.packbits(bits).tobytes()
        crc_ok=zlib.crc32(recovered[:-4])==int.from_bytes(recovered[-4:],'big')
        bit_errors=int(np.sum(np.unpackbits(np.frombuffer(recovered,dtype=np.uint8))!=np.unpackbits(np.frombuffer(packet,dtype=np.uint8))))
        evm=float(np.sqrt(np.mean(abs(eqall-expected)**2)/np.mean(abs(expected)**2)))
        rows.append({'start_sample':start,'training_score':float(score[start]),'training_cfo_hz':cfo,
          'crc_ok':crc_ok,'exact_payload':recovered==packet,'bit_errors':bit_errors,'bits':len(bits),
          'evm_rms':evm,'evm_db':float(20*np.log10(max(evm,1e-20))),
          'recovered_payload_hex':recovered.hex()})
        symbols.append(eqall.reshape(-1))
    result={'schema_version':1,'hardware_access':False,'candidate_frames':len(rows),
      'crc_valid_frames':sum(r['crc_ok'] for r in rows),'exact_payload_frames':sum(r['exact_payload'] for r in rows),
      'total_bit_errors':sum(r['bit_errors'] for r in rows),'total_bits':sum(r['bits'] for r in rows),
      'ber':sum(r['bit_errors'] for r in rows)/max(1,sum(r['bits'] for r in rows)),
      'median_evm_rms':float(np.median([r['evm_rms'] for r in rows])) if rows else None,
      'maximum_training_score':float(max(score)) if len(score) else 0.,'frames':rows,
      'receiver_training':'Known preamble for timing/CFO/channel; four pilots for phase/timing; payload only scored afterward',
      'fec':'none','seed':seed,'minimum_training_score':threshold}
    return result,np.concatenate(symbols) if symbols else np.array([],dtype=complex)


def decode_combined(baseband,rate=FS,seed=8922,group_frames=16,reference_packet=None):
    """Coherently combine repetitions using only training and received energy.

    Every group is reported. Quiet-frame selection is fixed from RX power, not
    payload errors. Synthetic tiling only permits circular frame synchronization;
    it is counted as one combined observation, never as independent packets.
    """
    ratio=Fraction(FS/rate).limit_denominator(32768)
    y=resample_poly(baseband,ratio.numerator,ratio.denominator) if rate!=FS else np.asarray(baseband)
    count=len(y)//FRAME
    if count<group_frames:return {'groups':[],'crc_valid_groups':0,'total_groups':0},np.array([],dtype=complex)
    matrix=y[:count*FRAME].reshape(count,FRAME)
    energy=np.mean(abs(matrix)**2,axis=1)
    quiet=energy<=np.median(energy)*1.5
    index=np.arange(count*FRAME).reshape(count,FRAME)
    _,train=training(seed)
    def score(f):
        fold=np.mean((matrix*np.exp(-2j*np.pi*f*index/FS))[quiet],axis=0)
        z=np.tile(fold,3)
        correlation=fftconvolve(z,np.conj(train[::-1]),mode='valid')
        power=fftconvolve(abs(z)**2,np.ones(SYMBOL),mode='valid').real
        metric=abs(correlation)/np.sqrt(np.maximum(power,1e-20)*sum(abs(train)**2))
        return float(max(np.minimum(metric[:FRAME],metric[SYMBOL:SYMBOL+FRAME])))
    best=max((score(f),float(f)) for f in np.arange(-3000,3001,50))
    best=max((score(f),float(f)) for f in np.arange(best[1]-50,best[1]+51,2))
    corrected=matrix*np.exp(-2j*np.pi*best[1]*index/FS)
    rows=[];symbols=[]
    eligible=np.flatnonzero(quiet)
    for first in range(0,len(eligible)-group_frames+1,group_frames):
        selection=eligible[first:first+group_frames]
        start=int(selection[0]);end=int(selection[-1]+1)
        row={'group_start_input_frame':start,'input_frames':end-start,'quiet_frames_used':group_frames,
             'input_frame_indices':selection.tolist(),
             'crc_ok':False,'exact_payload':False,'bit_errors':0,'bits':0,'erasure':True}
        fold=np.mean(corrected[selection],axis=0)
        decoded,points=decode(np.tile(fold,3),seed=seed,threshold=.5,reference_packet=reference_packet)
        if decoded['frames']:
            selected=max(enumerate(decoded['frames']),key=lambda item:item[1]['training_score'])
            row.update(selected[1]);row['erasure']=False;symbols.append(points[selected[0]*160:(selected[0]+1)*160])
        rows.append(row)
    result={'schema_version':1,'total_groups':len(rows),'group_frames':group_frames,
      'crc_valid_groups':sum(r['crc_ok'] for r in rows),'exact_payload_groups':sum(r['exact_payload'] for r in rows),
      'ber':sum(r['bit_errors'] for r in rows)/max(1,sum(r['bits'] for r in rows)),
      'erased_groups':sum(r['erasure'] for r in rows),'decoded_bits':sum(r['bits'] for r in rows),
      'median_evm_rms':float(np.median([r['evm_rms'] for r in rows if 'evm_rms' in r])) if symbols else None,
      'training_only_cfo_hz':best[1],'combined_training_score':best[0],
      'received_repetitions':count,'quiet_repetitions':int(sum(quiet)),
      'leftover_quiet_repetitions':len(eligible)%group_frames,'excluded_by_energy':int(sum(~quiet)),
      'quiet_rule':'Received frame energy <= 1.5 times capture median; independent of decoded bits',
      'groups':rows,'scope':'One unique combined observation per disjoint repetition group; tiling does not add observations'}
    return result,np.concatenate(symbols) if symbols else np.array([],dtype=complex)


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--prefix',type=Path,required=True)
    p.add_argument('--amp-mode',choices=('nearest','feedback'),default='feedback')
    p.add_argument('--peak',type=float,choices=(.25,.5),default=.25)
    p.add_argument('--amp-advance',type=float,default=1.);a=p.parse_args()
    outputs=[a.prefix.with_suffix(s) for s in ('.bin','.json','.npz')]
    require(not any(p.exists() for p in outputs),'Output exists')
    z,packet,expected=make_frame(peak=a.peak);table,phase,levels,meta=polar_table(z,a.amp_mode,a.amp_advance)
    simulated=model(table,phase,levels);r,_=decode(simulated)
    meta['model_decode']=r;meta['packet_hex']=packet.hex();meta['envelope_peak']=a.peak
    outputs[0].write_bytes(table.astype('<u4').tobytes());outputs[0].chmod(0o600)
    meta['table_sha256']=hashlib.sha256(outputs[0].read_bytes()).hexdigest()
    outputs[1].write_text(json.dumps(meta,indent=2)+'\n')
    np.savez(outputs[2],iq=z,table=table,phase_units=phase,levels=levels,expected=expected)
    print(json.dumps({'table_samples':len(table),'model_frames':r['candidate_frames'],'model_crc_valid':r['crc_valid_frames'],
                      'model_ber':r['ber'],'model_evm':r['median_evm_rms'],'closure_shift_hz':meta['closure_frequency_shift_hz']}))
if __name__=='__main__':main()
