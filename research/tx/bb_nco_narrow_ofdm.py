#!/usr/bin/env python3
"""Offline ~100-kHz QPSK OFDM, constrained NCO synthesis and single-frame RX.

Synchronization, CFO, channel and pilot fits use only each individual frame.
The scoring payload is never used by synchronization, equalization or CRC.
"""
import argparse,binascii,hashlib,json
from pathlib import Path
from fractions import Fraction
import numpy as np
from scipy.signal import resample_poly,fftconvolve,find_peaks
from bb_nco_improve import FS,Q,optimize

NFFT=16;CP=4;OS=40;SLOT_SYMBOL=(NFFT+CP)*OS
CARRIERS=np.array([-3,-2,-1,1,2,3]);PILOTS=np.array([-3,3]);DATA=np.array([-2,-1,1,2])
RX_RATE=FS/8;RX_OS=5;RX_SYMBOL=(NFFT+CP)*RX_OS
ROOT=Path('vendor/local-rf-captures/bb-nco-narrow-ofdm-20261013')

def packet(body):return body+binascii.crc_hqx(body,0xffff).to_bytes(2,'big')

def training_grid(seed=8922):
    rng=np.random.default_rng(seed);g=np.zeros(NFFT,dtype=complex)
    g[CARRIERS%NFFT]=1-2*rng.integers(0,2,len(CARRIERS));return g

def wave(grid,oversample):
    n=NFFT*oversample;f=np.zeros(n,dtype=complex)
    f[CARRIERS%n]=grid[CARRIERS%NFFT]
    useful=np.fft.ifft(f)*n/np.sqrt(NFFT)
    return np.r_[useful[-CP*oversample:],useful]

def make_frame(body=b'IQOK',seed=8922,peak=.7,slots=8192,oversample=OS):
    data=packet(body);bits=np.unpackbits(np.frombuffer(data,dtype=np.uint8)).reshape(-1,8)
    train=wave(training_grid(seed),oversample);chunks=[train,train];expected=[]
    for s,row in enumerate(bits):
        b=row.reshape(-1,2).astype(int);q=((1-2*b[:,0])+1j*(1-2*b[:,1]))/np.sqrt(2)
        g=np.zeros(NFFT,dtype=complex);g[DATA%NFFT]=q;g[PILOTS%NFFT]=1 if s%2==0 else -1
        chunks.append(wave(g,oversample));expected.append(q)
    active=np.concatenate(chunks)
    if len(active)+32>slots:raise ValueError('Frame does not fit table')
    active*=peak/max(abs(active));target=np.r_[active,np.zeros(slots-len(active),complex)]
    return target,data,np.array(expected)

def initial_table(target):
    amplitude=abs(target);phase=np.unwrap(np.angle(target))
    # Unwrap only the active waveform; guard phase is deliberately unobserved.
    active=int(np.flatnonzero(amplitude>1e-12)[-1])+1
    phase[active:]=phase[active-1]
    phase-=phase[0];state=0;error=0.;table=[]
    for n in range(active):
        error+=amplitude[n];bit=int(error>=1);error-=bit
        end=int(round(n+1+phase[min(n+1,active-1)]/Q))
        delta=((end-state+64)%128-64)
        value=int(np.clip(delta,1,6)) if bit else 0
        table.append(value);state+=value
    table.extend([0]*(len(target)-active))
    # Close RF phase within the guard, leaving its final half muted.
    remaining=(-state)%128;cursor=active+8
    while remaining:
        if cursor>=len(table)-8:raise ValueError('Guard too short for phase closure')
        value=min(6,remaining);table[cursor]=value;remaining-=value;cursor+=1
    return np.array(table,dtype=int)

def pack(table):
    table=np.asarray(table,dtype=int)
    if len(table)%8 or np.any((table<0)|(table>6)):raise ValueError('Invalid nibble NCO table')
    words=np.sum(table.reshape(-1,8).astype(np.uint32)<<np.arange(0,32,4,dtype=np.uint32),axis=1)
    return words.astype('<u4').tobytes()

def unpack(data):
    w=np.frombuffer(data,dtype='<u4');return ((w[:,None]>>np.arange(0,32,4))&15).reshape(-1).astype(int)

def generate(name,body=b'IQOK',steps=250000,slots=8192,seed=8922,peak=.7):
    ROOT.mkdir(parents=True,exist_ok=True);prefix=ROOT/name
    if any(prefix.with_suffix(s).exists() for s in ['.bin','.json','.npz']):raise ValueError('Source exists')
    target,data,expected=make_frame(body,seed,peak,slots);initial=initial_table(target)
    table,stats=optimize(initial,target,steps=steps,command_min=0,command_max=6,cutoff=100000)
    raw=pack(table);prefix.with_suffix('.bin').write_bytes(raw);prefix.with_suffix('.bin').chmod(0o600)
    src={'schema_version':1,'hardware_access':False,'kind':'narrow-qpsk-ofdm','packing_bits':4,
        'sample_rate':FS,'frame_samples':slots,'active_frame_slots':SLOT_SYMBOL*(len(data)+2),
        'carrier_offset_hz':250000,'nominal_subcarrier_span_hz':100000,'subcarrier_spacing_hz':FS/(NFFT*OS),
        'nfft':NFFT,'cp':CP,'oversample':OS,'active_carriers':CARRIERS.tolist(),'pilots':PILOTS.tolist(),
        'training_seed':seed,'body_hex':body.hex(),'packet_hex':data.hex(),'packet_bytes':len(data),'data_symbols':len(data),
        'envelope_peak':peak,'table_sha256':hashlib.sha256(raw).hexdigest(),'optimizer':stats,
        'nco_index_min':int(min(table)),'nco_index_max':int(max(table)),'nco_index_sum':int(sum(table)),
        'scope':'Custom laboratory QPSK OFDM, no FEC; CRC16-CCITT initial 0xffff; no IEEE 802.11 claim'}
    prefix.with_suffix('.json').write_text(json.dumps(src,indent=2)+'\n')
    np.savez(prefix.with_suffix('.npz'),target=target,initial=initial,table=table,expected=expected)
    print(json.dumps({'source':str(prefix),'optimizer':stats,'slots':slots,'packet':data.hex()}))

def stream_source(name,names,cycles=128):
    prefix=ROOT/name
    if prefix.with_suffix('.bin').exists() or prefix.with_suffix('.json').exists():raise ValueError('Source exists')
    sources=[];chunks=[]
    for item in names:
        path=ROOT/(item+'.json');meta=json.loads(path.read_text());raw=path.with_suffix('.bin').read_bytes()
        if hashlib.sha256(raw).hexdigest()!=meta['table_sha256']:raise ValueError('Source digest changed')
        if meta['packing_bits']!=4 or meta['frame_samples']!=8192 or meta['training_seed']!=8922 or len(bytes.fromhex(meta['body_hex']))!=4:
            raise ValueError('Stream requires matching 8192-command, four-byte OFDM frames')
        sources.append({'source':str(path),**{k:meta[k] for k in ['body_hex','packet_hex','table_sha256']}});chunks.append(raw)
    data=b''.join(chunks)*cycles
    if cycles<1 or not 2<=len(data)//2048<=1024:raise ValueError('Bounded stream size exceeded')
    src={'schema_version':1,'hardware_access':False,'kind':'host-fed-narrow-qpsk-ofdm','packing_bits':4,
        'frame_samples':len(data)*2,'carrier_offset_hz':250000,'table_sha256':hashlib.sha256(data).hexdigest(),
        'training_seed':8922,'body_bytes':4,'ofdm_frame_slots':8192,'stream_blocks':len(data)//2048,
        'frame_count':len(data)//4096,'sources':sources,
        'scope':'Host-fed stream of precomputed optimized frames; four payloads cycle, no local buffer repetition, no real-time optimizer generation claim'}
    prefix.with_suffix('.bin').write_bytes(data);prefix.with_suffix('.bin').chmod(0o600)
    prefix.with_suffix('.json').write_text(json.dumps(src,indent=2)+'\n')
    print(json.dumps({'stream_blocks':src['stream_blocks'],'frame_count':src['frame_count']}))

def decode(baseband,rate,body_bytes=4,seed=8922,threshold=.65,reference=None,oversample=OS):
    decode_rate=FS*RX_OS/oversample
    ratio=Fraction(decode_rate/rate).limit_denominator(100000)
    y=resample_poly(baseband,ratio.numerator,ratio.denominator)
    train=wave(training_grid(seed),RX_OS);L=RX_SYMBOL;symbols=body_bytes+4;frame_len=L*symbols
    corr=fftconvolve(y,np.conj(train[::-1]),mode='valid')
    energy=fftconvolve(abs(y)**2,np.ones(L),mode='valid').real
    score=abs(corr)/np.sqrt(np.maximum(energy,1e-20)*sum(abs(train)**2))
    candidates,_=find_peaks(score,height=threshold,distance=L//2)
    starts=[]
    for p in candidates:
        if p+frame_len>len(y):continue
        window=score[p+L-2:p+L+3]
        if len(window) and max(window)>=threshold:
            starts.append((float(min(score[p],max(window))),int(p)))
    selected=[]
    for strength,start in sorted(starts,reverse=True):
        if not any(abs(start-other)<frame_len for _,other in selected):selected.append((strength,start))
    rows=[];points=[]
    for strength,start in sorted(selected,key=lambda v:v[1]):
        frame=y[start:start+frame_len].copy()
        cross=np.vdot(frame[:L],frame[L:2*L]);cfo=float(np.angle(cross)*decode_rate/(2*np.pi*L))
        frame*=np.exp(-2j*np.pi*cfo*np.arange(frame_len)/decode_rate)
        useful=frame.reshape(symbols,L)[:,CP*RX_OS:]
        spectra=np.fft.fft(useful,axis=1)*np.sqrt(NFFT)/(NFFT*RX_OS)
        h=np.mean(spectra[:2,CARRIERS%(NFFT*RX_OS)],axis=0)/training_grid(seed)[CARRIERS%NFFT]
        if min(abs(h))<1e-12:continue
        pilot_mask=np.isin(CARRIERS,PILOTS);eqall=[];pilot_errors=[]
        for s in range(symbols-2):
            eq=spectra[s+2,CARRIERS%(NFFT*RX_OS)]/h
            phase=np.unwrap(np.angle(eq[pilot_mask]/(1 if s%2==0 else -1)))
            slope,intercept=np.polyfit(PILOTS,phase,1)
            eq*=np.exp(-1j*(intercept+slope*CARRIERS));eqall.append(eq[~pilot_mask])
            pilot_errors.append(float(abs(intercept)))
        eqall=np.array(eqall);bits=np.stack([eqall.real<0,eqall.imag<0],axis=-1).reshape(-1)
        recovered=np.packbits(bits).tobytes();crc=binascii.crc_hqx(recovered[:-2],0xffff)==int.from_bytes(recovered[-2:],'big')
        row={'start_sample':start,'start_seconds':start/decode_rate,'training_score':strength,'training_cfo_hz':cfo,
            'crc_ok':crc,'recovered_packet_hex':recovered.hex(),'recovered_body_hex':recovered[:-2].hex(),
            'pilot_phase_error_rms':float(np.sqrt(np.mean(np.array(pilot_errors)**2)))}
        if reference is not None:
            refbits=np.unpackbits(np.frombuffer(reference,dtype=np.uint8)).astype(int)
            rb=refbits.reshape(-1,2);expected=((1-2*rb[:,0])+1j*(1-2*rb[:,1]))/np.sqrt(2)
            row.update(exact_payload=recovered==reference,bit_errors=int(sum(bits!=refbits)),bits=len(bits),
                       evm_rms=float(np.sqrt(np.mean(abs(eqall.reshape(-1)-expected)**2))))
        rows.append(row);points.append(eqall.reshape(-1))
    result={'schema_version':1,'hardware_access':False,'candidate_frames':len(rows),'crc_valid_frames':sum(r['crc_ok'] for r in rows),
        'frames':rows,'maximum_training_score':float(max(score)),'minimum_training_score':threshold,
        'repetition_averaging':False,'receiver_scope':'Each frame supplies its own timing, two training symbols for CFO/channel, and two pilots per data symbol. No inter-frame fitting or combining.',
        'median_evm_rms':float(np.median([r['evm_rms'] for r in rows])) if rows and reference is not None else None}
    if reference is not None:
        result.update(exact_payload_frames=sum(r['exact_payload'] for r in rows),
            total_bit_errors=sum(r['bit_errors'] for r in rows),total_bits=sum(r['bits'] for r in rows))
    return result,np.concatenate(points) if points else np.array([],complex)

def analyze(rf_path,output,plot=None):
    rf=json.loads(rf_path.read_text());srcpath=Path(rf['source_report']);src=json.loads(srcpath.read_text())
    if rf.get('status')!='finite_nco_gate_captured':raise ValueError('RF controls did not pass')
    raw=srcpath.with_suffix('.bin').read_bytes()
    if hashlib.sha256(raw).hexdigest()!=src['table_sha256']:raise ValueError('Table changed')
    rate=rf['actual_rx']['sample_rate'];offset=250000+rf['center_mhz']*1e6-rf['actual_rx']['rx_lo']+rf['measured_carrier_offset_hz']
    results=[];points=None
    for field,hkey in [('private_trace','trace_sha256'),('private_off_trace','off_trace_sha256')]:
        data=Path(rf[field]).read_bytes()
        if hashlib.sha256(data).hexdigest()!=rf[hkey]:raise ValueError('RF trace changed')
        x=np.frombuffer(data,dtype='<c8');mixed=x*np.exp(-2j*np.pi*offset*np.arange(len(x))/rate)
        r,p=decode(mixed,rate,len(bytes.fromhex(src['body_hex'])),src['training_seed'],reference=bytes.fromhex(src['packet_hex']))
        if field=='private_trace':
            points=p;wrong,_=decode(mixed,rate,len(bytes.fromhex(src['body_hex'])),src['training_seed']+1)
        results.append(r)
    row={'schema_version':1,'hardware_access':False,'rf_report':str(rf_path),'source_report':str(srcpath),
        'requested_rf_hz':2422250000,'coarse_carrier_from_static_reference_hz':offset,
        'single_frame_decode':results[0],'off_control':results[1],'wrong_training_control':wrong,
        'payload_message':bytes.fromhex(src['body_hex']).decode('ascii',errors='replace'),
        'counter_ticks_per_nco_write':rf['playback']['counter_ticks_per_nco_write'],
        'single_frame_crc_demonstrated':results[0]['crc_valid_frames']>0 and results[1]['crc_valid_frames']==0 and wrong['crc_valid_frames']==0}
    output.write_text(json.dumps(row,indent=2)+'\n')
    if plot:
        import matplotlib
        matplotlib.use('Agg')
        import matplotlib.pyplot as plt
        fig,ax=plt.subplots(1,2,figsize=(11,4),constrained_layout=True)
        ax[0].scatter(points.real,points.imag,s=8,alpha=.45)
        ideal=np.array([1+1j,1-1j,-1+1j,-1-1j])/np.sqrt(2);ax[0].scatter(ideal.real,ideal.imag,c='red',marker='+',s=90)
        ax[0].set(xlabel='I',ylabel='Q',title='Individual frames; no repetition averaging',xlim=(-1.6,1.6),ylim=(-1.6,1.6));ax[0].set_aspect('equal');ax[0].grid(alpha=.3)
        frames=results[0]['frames'];ax[1].plot([r['start_seconds']*1000 for r in frames],[r.get('evm_rms',float('nan'))*100 for r in frames],'o-')
        ax[1].set(xlabel='Capture time (ms)',ylabel='Frame EVM (%)',title=f"CRC-valid {results[0]['crc_valid_frames']}/{len(frames)}; payload {row['payload_message']!r}");ax[1].grid(alpha=.3)
        fig.savefig(plot,dpi=150);plt.close(fig)
    print(json.dumps({k:row[k] for k in ['single_frame_crc_demonstrated','payload_message','counter_ticks_per_nco_write']}))
    print(json.dumps({k:results[0][k] for k in ['candidate_frames','crc_valid_frames','median_evm_rms']}))

def main():
    p=argparse.ArgumentParser(description=__doc__);sub=p.add_subparsers(dest='command',required=True)
    g=sub.add_parser('generate');g.add_argument('--name',required=True);g.add_argument('--message',default='IQOK');g.add_argument('--steps',type=int,default=250000);g.add_argument('--slots',type=int,choices=(4096,8192),default=8192);g.add_argument('--peak',type=float,default=.7)
    stream=sub.add_parser('stream-source');stream.add_argument('--name',required=True);stream.add_argument('--sources',nargs='+',required=True);stream.add_argument('--cycles',type=int,default=128)
    a=sub.add_parser('analyze');a.add_argument('--rf-report',type=Path,required=True);a.add_argument('--output',type=Path,required=True);a.add_argument('--plot',type=Path)
    args=p.parse_args()
    if args.command=='generate':generate(args.name,args.message.encode(),args.steps,args.slots,peak=args.peak)
    elif args.command=='stream-source':stream_source(args.name,args.sources,args.cycles)
    else:
        if args.output.exists() or (args.plot and args.plot.exists()):raise ValueError('Output exists')
        analyze(args.rf_report,args.output,args.plot)
if __name__=='__main__':main()
