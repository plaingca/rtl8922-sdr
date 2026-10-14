#!/usr/bin/env python3
"""Reproduce the public LoRa preset sweep summary from saved derived reports."""
import argparse,hashlib,json
from pathlib import Path

def read(p):return json.loads(p.read_text())

def aggregate(root):
    sources=read(root/'rtl8922-bb-nco-lora-source-metadata.json')['sources'];runs=[]
    for path in sorted(root.glob('rtl8922-bb-nco-lora-*.json')):
        rf=read(path)
        if not isinstance(rf,dict) or not rf.get('hardware_access') or not rf.get('lora_parameters'):continue
        src=sources[Path(rf['source_report']).name];stream=rf.get('stream',{});params=src['parameters']
        stage='confirm' if '-confirm-' in path.stem else 'hold' if '-hold-' in path.stem else 'calibrated' if '-cal-' in path.stem else 'uncalibrated'
        complete=rf['status']=='finite_nco_gate_captured' and rf.get('playback',{}).get('completed',False)
        row={'tag':path.stem.removeprefix('rtl8922-bb-nco-lora-'),'stage':stage,'rf_report':str(path),
             'rf_report_sha256':hashlib.sha256(path.read_bytes()).hexdigest(),'source':src,'parameters':params,
             'rf_controls_and_transport_complete':bool(complete),'planned_packets':src['packet_count'],
             'planned_buffers':src['stream_blocks'],'completed_buffers':stream.get('completed_blocks'),
             'producer_errors':stream.get('producer_errors'),'exception':rf.get('exception'),
             'refill_scheduler':rf.get('refill_scheduler'),'refill_idle_sleep_ns':rf.get('refill_idle_sleep_ns',0),
             'max_upload_seconds':max(stream.get('upload_seconds',[0])),
             'clip_fraction':rf.get('clip_fraction'),'rtl_restore_mismatches':rf.get('rtl_restore_mismatches'),
             'cleanup_actions_without_errors':not any(rf.get(k) for k in ['cleanup_errors','rtl_cleanup_errors','mailbox_cleanup_errors']),
             'pluto_settings_restored':rf.get('saved_pluto')==rf.get('restored_pluto'),
             'pluto_static_settings_restored':all(v==rf.get('restored_pluto',{}).get(k) for k,v in rf.get('saved_pluto',{}).items()
                 if k!='rx_hardwaregain_chan0' or rf.get('saved_pluto',{}).get('gain_control_mode_chan0')=='manual'),
             'pluto_tx_off':str(rf.get('pluto_tx_powerdown'))=='1'}
        if not complete:
            if stream.get('producer_errors'):row['qualification']='rejected_transport_underrun'
            elif 'Amplitude control failed' in (rf.get('exception') or ''):row['qualification']='rejected_static_rf_control'
            else:row['qualification']='rejected_capture_or_setup'
        else:
            demod=path.with_name(path.stem+'-demod.json')
            if demod.exists():
                d=read(demod);row.update(demod_report=str(demod),exact_crc_packets=d['exact_crc_packets'],
                    transmitted_packets=d['transmitted_packets'],off_crc_packets=d['off_control']['crc_valid_packets'],
                    wrong_sync_crc_packets=d['wrong_sync_control']['crc_valid_packets'],
                    distinct_exact_packets=len(d['distinct_exact_payloads']),
                    packet_decode_demonstrated=d['packet_decode_demonstrated'],decoded_packets=d['decode']['packets'])
                row['qualification']='packets_decoded' if d['packet_decode_demonstrated'] else 'no_qualified_packet_decode'
            else:row['qualification']='receiver_analysis_failed'
        runs.append(row)
    inventory=read(root/'rtl8922-bb-nco-lora-sweep-plan.json');table=[]
    for item in inventory:
        cases=[r for r in runs if r['parameters']['preset']==item['preset'] and r['parameters']['wide_lora']==item['wide']]
        line={'preset':item['preset'],'wide_lora':item['wide'],'parameters':cases[0]['parameters'],'stages':{}}
        for stage in ['calibrated','hold','confirm']:
            selected=[r for r in cases if r['stage']==stage]
            line['stages'][stage]=[{'tag':r['tag'],'qualification':r['qualification'],
                'exact_crc_packets':r.get('exact_crc_packets'),'planned_packets':r['planned_packets'],
                'rf_controls_and_transport_complete':r['rf_controls_and_transport_complete']} for r in selected]
        line['any_qualified_packet_decode']=any(r.get('packet_decode_demonstrated') for r in cases)
        table.append(line)
    assert len(table)==26
    assert all(r['cleanup_actions_without_errors'] and r['pluto_static_settings_restored'] and r['pluto_tx_off'] for r in runs)
    return {'schema_version':1,'hardware_access':False,'provenance':read(root/'rtl8922-bb-nco-lora-provenance.json'),
        'scope':'Pinned Meshtastic modem preset parameters; conventional LoRa header/FEC/CRC on WiFi-band carrier. Stock gr-lora_sdr decoder, no packet averaging or payload-aided fitting. Commercial hardware and actual mesh interoperability, RF power/range/sensitivity and emission masks remain unqualified.',
        'supported_preset_names':16,'parameter_configurations':26,'rf_attempts':len(runs),
        'rf_controls_and_transport_complete':sum(r['rf_controls_and_transport_complete'] for r in runs),
        'configurations_with_any_qualified_decode':sum(r['any_qualified_packet_decode'] for r in table),
        'table':table,'runs':runs,
        'final_state':read(root/'rtl8922-bb-nco-lora-final-state.json') if (root/'rtl8922-bb-nco-lora-final-state.json').exists() else None}

def plot(report,path):
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    import numpy as np
    table=report['table'];matrix=np.full((len(table),3),np.nan);annotations=[]
    for i,row in enumerate(table):
        labels=[]
        for j,stage in enumerate(['calibrated','hold','confirm']):
            cases=row['stages'][stage]
            if not cases:labels.append('—');continue
            case=cases[0]
            if not case['rf_controls_and_transport_complete'] or case['exact_crc_packets'] is None:
                labels.append('rejected');continue
            matrix[i,j]=case['exact_crc_packets']/case['planned_packets'];labels.append(f"{case['exact_crc_packets']}/{case['planned_packets']}")
        annotations.append(labels)
    fig,ax=plt.subplots(figsize=(9,12),constrained_layout=True)
    cmap=plt.get_cmap('RdYlGn').copy();cmap.set_bad('#d1d5db')
    ax.imshow(matrix,aspect='auto',vmin=0,vmax=1,cmap=cmap)
    ax.set_xticks(range(3),['Average clock\ncorrection','Buffer-hold phase\ncorrection + paced refill','10-packet\nconfirmation'])
    ax.set_yticks(range(len(table)),[f"{'2.4 profile' if r['wide_lora'] else 'Sub-GHz settings'}  {r['preset']}\nSF{r['parameters']['sf']} / {r['parameters']['bandwidth_hz']/1000:g} kHz / 4/{r['parameters']['coding_rate_denominator']}" for r in table],fontsize=8)
    for i,labels in enumerate(annotations):
        for j,label in enumerate(labels):ax.text(j,i,label,ha='center',va='center',fontsize=9)
    ax.set_title('RTL8922 BBMCU NCO → Pluto: individual LoRa packets with exact payload and CRC\n'
                 'All RF on 2.4 GHz; modem-parameter tests, not commercial Meshtastic interoperability',fontsize=11,pad=15)
    fig.savefig(path,dpi=150);plt.close(fig)

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--root',type=Path,default=Path('output'))
    p.add_argument('--output',type=Path,default=Path('output/rtl8922-bb-nco-lora-analysis.json'));p.add_argument('--plot',type=Path)
    a=p.parse_args();r=aggregate(a.root);a.output.write_text(json.dumps(r,indent=2)+'\n')
    if a.plot:plot(r,a.plot)
    print(json.dumps({k:r[k] for k in ['parameter_configurations','rf_attempts','rf_controls_and_transport_complete','configurations_with_any_qualified_decode']}))
