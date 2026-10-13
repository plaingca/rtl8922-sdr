#!/usr/bin/env python3
"""Offline integration of packed NCO commands with the fixed service-hold model.

This is an independent receiver check of the compiler model, not RF evidence.
"""
import argparse,hashlib,json
from pathlib import Path
import numpy as np
from bb_nco_lora import decode,FS
from bb_nco_lora_rx import channelize

def model(source_path,output):
    if output.exists():raise ValueError('Output exists')
    source=json.loads(source_path.read_text());p=source['parameters']
    raw=source_path.with_suffix('.bin').read_bytes()
    if hashlib.sha256(raw).hexdigest()!=source['table_sha256']:raise ValueError('Command hash mismatch')
    words=np.frombuffer(raw,dtype='<u4')
    codes=((words[:,None]>>(4*np.arange(8)))&15).ravel()
    if len(codes)!=source['frame_samples'] or np.max(codes)>9:raise ValueError('Command bounds')
    gap=source['modeled_buffer_service_gap_seconds']
    if gap is None or not 0<=gap<.000005:raise ValueError('Needs fixed service-hold source')
    duration=np.full(len(codes),1/FS);duration[4095::4096]+=gap
    before=np.r_[0,np.cumsum(codes*duration)[:-1]]*2*np.pi*250000
    rate=p['bandwidth_hz']*8;t=np.arange(int(np.sum(duration)*rate))/rate
    block=4096/FS+gap;b=(t/block).astype(np.int64);within=t-b*block
    k=np.minimum(b*4096+(within*FS).astype(np.int64),b*4096+4095)
    k=np.minimum(k,len(codes)-1)
    phase=before[k]+2*np.pi*250000*codes[k]*(within-(k-b*4096)/FS)
    iq=np.exp(1j*phase)*(codes[k]!=0)
    iq,rate=channelize(iq,rate,p['bandwidth_hz'],source['carrier_offset_hz'])
    result=decode(np.r_[np.zeros(round(.01*rate)),iq,np.zeros(round(.03*rate))],rate,p)
    expected={v['payload_hex'] for v in source['sources']}
    row={'hardware_access':False,'source_report':str(source_path),'table_sha256':source['table_sha256'],
         'decode':result,'exact_crc_packets':sum(v['crc_ok'] and v['payload_hex'] in expected for v in result['packets']),
         'transmitted_packets':source['packet_count'],'modeled_service_hold_seconds':gap,
         'scope':'Independent phase integration of packed commands, nominal local slot rate, fixed hold every 4096 commands, ideal oscillator and mute. Synthetic, not RF; excludes jitter and analog distortion.'}
    output.write_text(json.dumps(row,indent=2)+'\n')
    print(json.dumps({k:row[k] for k in ('exact_crc_packets','transmitted_packets')}))
    return row

if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source-report',type=Path,required=True);parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args();model(args.source_report,args.output)
