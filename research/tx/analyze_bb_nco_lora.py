#!/usr/bin/env python3
"""Decode saved Pluto LoRa captures using stock gr-lora_sdr, without TX access."""
import argparse,hashlib,json
from pathlib import Path
import numpy as np
from bb_nco_lora import decode
from bb_nco_lora_rx import channelize,FILTER_TAPS,FILTER_CUTOFF_BW

def analyze(rf_path,output,channel_filter=True):
    rf=json.loads(rf_path.read_text());src=json.loads(Path(rf['source_report']).read_text());p=src['parameters']
    if rf['status']!='finite_nco_gate_captured' or not rf['playback']['completed']:raise ValueError('RF controls/transport did not pass')
    rate=rf['actual_rx']['sample_rate']
    offset=src['carrier_offset_hz']+rf['center_mhz']*1000000-rf['actual_rx']['rx_lo']+rf['measured_carrier_offset_hz']
    controls={}
    for key,hash_key in [('private_trace','trace_sha256'),('private_off_trace','off_trace_sha256')]:
        raw=Path(rf[key]).read_bytes()
        if hashlib.sha256(raw).hexdigest()!=rf[hash_key]:raise ValueError('Capture hash mismatch')
        x=np.frombuffer(raw,dtype='<c8')
        z,target=channelize(x,rate,p['bandwidth_hz'],offset,channel_filter)
        controls[key]=decode(z,target,p)
        if key=='private_trace':
            controls['wrong_sync']=decode(z,target,p,sync=0x12)
    expected=[s['payload_hex'] for s in src['sources']];received=controls['private_trace']['packets']
    exact=sum(v['crc_ok'] and v['payload_hex'] in expected for v in received)
    row={'schema_version':1,'hardware_access':False,'rf_report':str(rf_path),'source':src,'receiver_sample_rate_hz':target,
         'receiver_mixing_offset_hz':offset,'decode':controls['private_trace'],'off_control':controls['private_off_trace'],
         'wrong_sync_control':controls['wrong_sync'],'exact_crc_packets':exact,'transmitted_packets':src['packet_count'],
         'distinct_exact_payloads':sorted({v['payload_hex'] for v in received if v['crc_ok'] and v['payload_hex'] in expected}),
         'channel_filter':{'enabled':channel_filter,'taps':FILTER_TAPS if channel_filter else None,
                           'cutoff_hz':FILTER_CUTOFF_BW*p['bandwidth_hz'] if channel_filter else None,
                           'window':'kaiser8','scope':'Fixed FIR before chip decimation; no payload-derived parameters'},
         'scope':'Stock LoRa per-packet acquisition/header/FEC/CRC; no known-payload fit, packet averaging or inter-packet phase correction. WiFi-band RF, not demonstrated commercial Meshtastic receiver interoperability.'}
    row['packet_decode_demonstrated']=exact>0 and controls['private_off_trace']['crc_valid_packets']==controls['wrong_sync']['crc_valid_packets']==0
    output.write_text(json.dumps(row,indent=2)+'\n');print(json.dumps({k:row[k] for k in ('exact_crc_packets','transmitted_packets','packet_decode_demonstrated')}))
    return row
if __name__=='__main__':
    a=argparse.ArgumentParser(description=__doc__);a.add_argument('--rf-report',type=Path,required=True);a.add_argument('--output',type=Path,required=True)
    filters=a.add_mutually_exclusive_group()
    filters.add_argument('--channel-filter',dest='channel_filter',action='store_true',help='Apply fixed LoRa channel FIR (default)')
    filters.add_argument('--legacy-unfiltered',dest='channel_filter',action='store_false',help='Reproduce the original receiver without its missing channel FIR')
    a.set_defaults(channel_filter=True);p=a.parse_args()
    if p.output.exists():raise ValueError('Output exists')
    analyze(p.rf_report,p.output,p.channel_filter)
