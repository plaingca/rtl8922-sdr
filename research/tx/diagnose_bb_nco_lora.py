#!/usr/bin/env python3
"""Offline header, received-CRC and symbol audit; references score after decoding.

No radio access, parameter fitting or known-payload feedback to the receiver.
"""
import argparse,hashlib,json
from pathlib import Path
import numpy as np
from bb_nco_lora import decode,encode
from bb_nco_lora_rx import channelize

def diagnose(rf_path,output,filtered=True,soft=True):
    if output.exists():raise ValueError('Output exists')
    rf=json.loads(rf_path.read_text());source=json.loads(Path(rf['source_report']).read_text());p=source['parameters']
    raw=Path(rf['private_trace']).read_bytes()
    if hashlib.sha256(raw).hexdigest()!=rf['trace_sha256']:raise ValueError('Capture hash mismatch')
    offset=source['carrier_offset_hz']+rf['center_mhz']*1000000-rf['actual_rx']['rx_lo']+rf['measured_carrier_offset_hz']
    iq,rate=channelize(np.frombuffer(raw,dtype='<c8'),rf['actual_rx']['sample_rate'],p['bandwidth_hz'],offset,filtered)
    result=decode(iq,rate,p,soft=soft,audit=True);symbols=result.pop('_synchronized_iq')
    starts=[v for v in result['audit']['synchronized_tags'] if v['info']['is_header']]
    references=[encode(bytes.fromhex(v['payload_hex']),p) for v in source['sources']]
    nbin=1<<p['sf'];n=np.arange(nbin);frames=[]
    for i,tag in enumerate(starts):
        end=starts[i+1]['offset'] if i+1<len(starts) else len(symbols)
        count=(end-tag['offset'])//nbin;data=symbols[tag['offset']:tag['offset']+count*nbin].reshape(count,nbin)
        cfo=tag['info']['cfo_int']+tag['info']['cfo_frac']
        power=abs(np.fft.fft(data*np.exp(-2j*np.pi*(n*n/(2*nbin)-n/2+cfo*n/nbin)),axis=1))**2
        bins=np.argmax(power,axis=1)
        # Post-decode nearest reference for diagnostics only; cannot produce a CRC pass.
        def errors(ref):
            size=min(len(ref),count)
            return (bins[:size]-ref[:size]+nbin//2)%nbin-nbin//2
        reference=min(range(len(references)),key=lambda j:np.count_nonzero(errors(references[j])))
        error=errors(references[reference]);size=len(error)
        fraction=power[np.arange(size),bins[:size]]/np.maximum(power[:size].sum(axis=1),1e-30)
        frames.append({'reference_packet_index_post_decode':reference,'compared_symbols':size,
                       'symbol_errors':int(np.count_nonzero(error)),
                       'bin_errors':error.astype(int).tolist(),'peak_power_fraction':fraction.tolist(),
                       'estimated_cfo_bins':cfo})
    expected={v['payload_hex'] for v in source['sources']}
    row={'hardware_access':False,'rf_report':str(rf_path),'trace_sha256':rf['trace_sha256'],
         'filtered':filtered,'soft_decisions':soft,'parameters':p,'receiver_audit':result,'symbol_audit':frames,
         'exact_crc_packets':sum(v['crc_ok'] and v['payload_hex'] in expected for v in result['packets']),
         'scope':'Diagnostic only: header, pre-CRC bytes and FFT decisions. Known references used only after stock decoding for error scoring; controls and qualification are in analyze_bb_nco_lora.py.'}
    output.write_text(json.dumps(row,indent=2)+'\n')
    print(json.dumps({'exact_crc_packets':row['exact_crc_packets'],'symbol_errors':[v['symbol_errors'] for v in frames]}))
    return row

if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--rf-report',type=Path,required=True);parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--legacy-unfiltered',action='store_true');parser.add_argument('--hard',action='store_true')
    args=parser.parse_args();diagnose(args.rf_report,args.output,not args.legacy_unfiltered,not args.hard)
