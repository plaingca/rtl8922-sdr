#!/usr/bin/env python3
"""Summarize saved BB FM evidence offline; never accesses hardware."""
import hashlib
import json
from pathlib import Path
import wave


def main():
    root=Path(__file__).resolve().parents[2]
    inputs={}
    def read(name):
        p=root/'output'/name;data=p.read_bytes();inputs[str(p.relative_to(root))]=hashlib.sha256(data).hexdigest()
        return json.loads(data)
    pattern=next(x['pattern'] for x in read('rtl8922-bb-dds-pattern-diagnostic-b.json')['runs'] if x['mode']==3)
    runs=[]
    for tag in ('e','f'):
        rf=read(f'rtl8922-bb-fm-speech-{tag}.json');audio=read(f'rtl8922-bb-fm-speech-demod-{tag}.json')
        score=audio['pause_corrected']
        passed=(rf['status']=='finite_fm_audio_captured' and rf['stream']['status']==2 and
                rf['stream']['completed_blocks']==rf['stream']['blocks']==63 and
                not rf['cleanup_errors'] and not rf['rtl_cleanup_errors'] and not rf['mailbox_cleanup_errors'] and
                rf['saved_pluto']==rf['restored_pluto'] and rf['pluto_tx_powerdown']=='1' and
                score['status']=='scored' and score['heldout_correlation']>.95 and
                score['heldout_signal_error_db']>10 and score['wrong_payload_signal_error_db']<0 and
                audio['blanking']['fraction_of_stream']<.02)
        runs.append({'run':tag,'passed':passed,'payload_sha256':rf['payload_sha256'],
            'blocks':rf['stream']['completed_blocks'],'stream_seconds':rf['stream']['host_seconds'],
            'audio_rate_hz':audio['measured_audio_rate'],'rx_clipping_fraction':rf['clip_fraction'],
            'blanked_fraction':audio['blanking']['fraction_of_stream'],**score})
    final=read('rtl8922-bb-fm-final-state.json')
    restored=(final['pluto_matches_last_fresh_snapshot'] and final['pluto_tx_powerdown']=='1' and
        final['demo_service']=='inactive' and not final['card_bound'] and not final['working_modules_loaded'] and
        not final['temporary_firmware_present'] and not final['temporary_nm_config_present'])
    artifacts=[]
    for name in ('received','unblanked','source'):
        p=root/'output/audio'/f'rtl8922-bb-fm-{name}.wav'
        with wave.open(str(p)) as w:rate=w.getframerate();frames=w.getnframes()
        artifacts.append({'path':str(p.relative_to(root)),'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
                          'rate':rate,'frames':frames,'seconds':frames/rate})
    summary={'schema_version':1,'hardware_access':False,'pattern_decoder':pattern,'repeated_audio_runs':runs,
       'passed':pattern['passed'] and all(x['passed'] for x in runs) and restored,
       'scope':'Two finite mono FM speech runs. RF-measured pause correction for metrics; WAV preserves timeline and uses impulse blanking. No gapless or arbitrary-IQ qualification.',
       'failed_attempts_preserved':{'speech-a':'long hook lost valid BB memory reads',
            'speech-b':'stream completed but capture export hit duration bound',
            'speech-d':'host completion snapshot race; fixed before consecutive E/F'},
       'final_restored':restored,'artifacts':artifacts,'input_sha256':inputs,
       'checks':'corr > .95, signal/error > 10 dB, wrong payload < 0 dB, blanking < 2%, all blocks, restored devices'}
    out=root/'output/rtl8922-bb-fm-analysis.json';out.write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps({'passed':summary['passed'],'runs':runs,'restored':restored}))
    return 0 if summary['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
