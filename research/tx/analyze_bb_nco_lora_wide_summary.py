#!/usr/bin/env python3
"""Summarize paired LoRa receive-filter comparisons from derived reports only."""
import argparse,hashlib,json
from pathlib import Path
PREFIX='rtl8922-bb-nco-lora-'
TAGS=['wide-short-turbo-hold-a','wide-short-fast-hold-a','wide-short-slow-confirm-a',
      'wide-medium-turbo-hold-a','wide-medium-fast-hold-a','wide-medium-slow-confirm-a',
      'wide-long-turbo-hold-a','wide-long-fast-hold-a','wide-long-moderate-hold-a','wide-long-slow-hold-a']

def summarize(directory,output):
    if output.exists():raise ValueError('Output exists')
    def read(name):return json.loads((directory/(PREFIX+name+'.json')).read_text())
    def result(row):
        if row['off_control']['crc_valid_packets'] or row['wrong_sync_control']['crc_valid_packets']:raise ValueError('Negative control failed')
        if row['exact_crc_packets']!=len(row['distinct_exact_payloads']):raise ValueError('Duplicate payloads cannot establish distinct packet recovery')
        return {'exact_crc_packets':row['exact_crc_packets'],'transmitted_packets':row['transmitted_packets'],
                'distinct_payloads':len(row['distinct_exact_payloads']),'off_crc_packets':0,'wrong_sync_crc_packets':0}
    rows=[]
    for tag in TAGS:
        old=read(tag+'-demod');new=read(tag+'-filtered-demod')
        if old['rf_report']!=new['rf_report'] or old['source']!=new['source']:raise ValueError('Unpaired captures/sources')
        rf=read(tag)
        rows.append({'tag':tag,'parameters':new['source']['parameters'],'trace_sha256':rf['trace_sha256'],
                     'original':result(old),'channel_filtered':result(new)})
    confirmations=[]
    for mode in ['short','medium']:
        tag='wide-'+mode+'-turbo-filtered-confirm-b';rf=read(tag);new=read(tag+'-demod');old=read(tag+'-legacy-demod')
        if old['source']!=new['source'] or old['rf_report']!=new['rf_report']:raise ValueError('Unpaired confirmation')
        if rf['cleanup_errors'] or not rf['playback']['completed']:raise ValueError('RF attempt incomplete')
        confirmations.append({'tag':tag,'parameters':new['source']['parameters'],'trace_sha256':rf['trace_sha256'],
                              'original':result(old),'channel_filtered':result(new)})
    audits=[]
    for mode in ['long-turbo','long-fast','long-moderate','long-slow']:
        tag='wide-'+mode+'-hold-a';audit=read(tag+'-filtered-audit');frames=audit['symbol_audit']
        audits.append({'tag':tag,'valid_headers':sum(v['err']==0 for v in audit['receiver_audit']['audit']['headers']),
                       'exact_crc_packets':audit['exact_crc_packets'],'symbol_errors_per_frame':[v['symbol_errors'] for v in frames],
                       'scope':audit['scope']})
    models=[]
    for mode in ['short-turbo','long-turbo','long-moderate','long-slow']:
        tag='wide-'+mode+'-hold-a';model=read(tag+'-model-demod')
        models.append({'tag':tag,'exact_crc_packets':model['exact_crc_packets'],'packets':model['packets'],'scope':model['scope']})
    final=read('wide-followup-final-state')
    if not final['all_cleanup_checks_pass']:raise ValueError('Final cleanup check failed')
    row={'schema_version':1,'hardware_access':False,'filter':{'taps':257,'cutoff_bandwidth_ratio':.55,'window':'kaiser8','sampling':'8 samples per chip'},
         'paired_saved_capture_results':rows,'fresh_rf_confirmations':confirmations,'residual_failure_audits':audits,
         'synthetic_fixed_hold_model_results':models,'final_state_report':str(directory/(PREFIX+'wide-followup-final-state.json')),
         'tests':{'hardware_free_packet_tests_passed':5,'aliasing_regression':'Strong different packet at +2 BW aliases without channel FIR; fixed FIR recovers desired packet.'},
         'interpretation':'Missing channel filtering caused several receiver failures. SF11/SF12 RF failures remain after filtering despite successful fixed-hold command simulations; exact physical or receiver cause not isolated.',
         'limits':'Small bounded samples, no repetition averaging. Simulated decoding is not RF evidence. No commercial SX1280/Meshtastic interoperability claim.'}
    row['derived_report_sha256']={p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in directory.glob(PREFIX+'wide-*.json') if p!=output and p.name.endswith(('-demod.json','-filtered-audit.json'))}
    output.write_text(json.dumps(row,indent=2)+'\n');print(json.dumps({'paired_cases':len(rows),'fresh_rf_confirmations':confirmations},indent=2))
    return row

if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__);parser.add_argument('--directory',type=Path,default=Path('output'))
    parser.add_argument('--output',type=Path,required=True);args=parser.parse_args();summarize(args.directory,args.output)
