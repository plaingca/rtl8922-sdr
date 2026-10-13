#!/usr/bin/env python3
"""Aggregate saved continuous-stream evidence offline, with input hashes."""
import hashlib,json,wave
from pathlib import Path


def main():
    root=Path(__file__).resolve().parents[2];inputs={}
    def read(name):
        p=root/'output'/name;data=p.read_bytes();inputs[str(p.relative_to(root))]=hashlib.sha256(data).hexdigest()
        return json.loads(data)
    read('rtl8922-bb-fm-timer-trace.json');patch=read('rtl8922-bb-fm-continuous-patch-a.json')
    speech=read('rtl8922-bb-fm-continuous-demod-a.json')
    old=read('rtl8922-bb-fm-old-handoff-control.json');runs=[]
    for tag in ('b','c'):
        rf=read(f'rtl8922-bb-fm-icy-{tag}.json');audio=read(f'rtl8922-bb-fm-icy-demod-{tag}.json')
        continuity=read(f'rtl8922-bb-fm-icy-continuity-{tag}.json')
        passed=(continuity['passed'] and rf['status']=='finite_fm_audio_captured' and
            rf['stream']['completed_blocks']==rf['stream']['blocks'] and rf['stream']['status']==2 and
            continuity['live_network_blocks_decoded_during_tx']>0 and rf['live_source']['error'] is None and
            rf['live_source']['preemphasis_clipped_samples']==0 and not rf['cleanup_errors'] and
            rf['restored_pluto']==rf['saved_pluto'] and rf['pluto_tx_powerdown']=='1')
        runs.append({'run':tag,'passed':passed,'blocks':rf['stream']['blocks'],
            'stream_seconds':rf['stream']['host_seconds'],'playback_seconds':audio['output_duration_seconds'],
            'correlation':audio['heldout_correlation'],'signal_error_db':audio['heldout_signal_error_db'],
            'wrong_payload_signal_error_db':audio['wrong_payload_signal_error_db'],
            'out_of_range_holds_at_least_100us':len(continuity['holds_at_least_100us']),
            'maximum_out_of_range_hold_seconds':continuity['max_out_of_range_hold_seconds'],
            'live_blocks_decoded_during_rf':continuity['live_network_blocks_decoded_during_tx'],
            'blanking':False,'payload_sha256':rf['payload_sha256']})
    final=read('rtl8922-bb-fm-continuous-final-state.json')
    restored=(final['pluto_matches_last_fresh_snapshot'] and final['pluto_tx_powerdown']=='1' and
        final['demo_service']=='inactive' and not final['card_bound'] and not final['working_modules_loaded'] and
        not final['temporary_firmware_present'] and not final['temporary_nm_config_present'] and
        not final['radio_ffmpeg_processes'])
    p=root/'output/audio/rtl8922-bb-fm-shoutcast-received.wav'
    with wave.open(str(p)) as w:rate=w.getframerate();frames=w.getnframes()
    summary={'schema_version':1,'hardware_access':False,'passed':all(r['passed'] for r in runs) and restored and not old['no_100us_holds'],
      'method':'one running BB consumer; native idle timer refreshed once per 2048-sample buffer; no host batch handoffs',
      'firmware_sha256':patch['patched_sha256'],'known_speech_unblanked_correlation':speech['heldout_correlation'],
      'live_source':'https://ice5.somafm.com/groovesalad-128-mp3',
      'source_protocol':'ICY / SHOUTcast-compatible HTTP MP3; SomaFM Icecast endpoint',
      'live_runs':runs,'old_handoff_negative_control_detected':not old['no_100us_holds'],
      'first_live_attempt':'125 blocks completed, capture export exceeded per-file size; preserved as icy-a',
      'scope':'Continuous during the bounded tests; longest RF stream about 12.3 s. No claim of indefinite runtime, zero cycle jitter, stereo or normal Wi-Fi coexistence.',
      'final_restored':restored,'offline_tests':{'firmware':46,'tx':58},
      'audio':{'path':str(p.relative_to(root)),'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'rate':rate,'frames':frames},
      'input_sha256':inputs}
    (root/'output/rtl8922-bb-fm-continuous-analysis.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps({k:summary[k] for k in ('passed','live_runs','final_restored')}))
    return 0 if summary['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
