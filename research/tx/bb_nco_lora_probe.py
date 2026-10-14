#!/usr/bin/env python3
"""Explicit bounded LoRa-preset RF test using the existing restore/control path."""
import argparse,json,math,os,time
from pathlib import Path
from bb_polar_ofdm_probe import run

def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--run-rf-test',action='store_true')
    for name in ('source-report','payload','patch-report','mapped-writer','report','trace'):p.add_argument('--'+name,type=Path,required=True)
    a=p.parse_args()
    if not a.run_rf_test:print('Offline plan: bounded NCO LoRa packet playback, Pluto capture, fresh save/restore');return
    if a.report.exists() or a.trace.exists():raise ValueError('Fresh report/trace required')
    src=json.loads(a.source_report.read_text());patch=json.loads(a.patch_report.read_text())
    if src['kind']!='meshtastic-lora-frequency-dither' or patch['max_blocks']!=16384 or patch.get('lookup_local'):raise ValueError('Wrong bounded LoRa source/firmware')
    duration=src['frame_samples']/(32000000/3)
    if not 0<duration<6.3:raise ValueError('Finite LoRa duration bound')
    rate=8000000 if src['parameters']['bandwidth_hz']>500000 else 2000000
    samples=1<<math.ceil(math.log2((duration+.45)*rate))
    if samples>16777216:raise ValueError('Capture budget')
    a.center_mhz=2422;a.rx_gain=50;a.fixed_amplitude_code=0;a.rx_rate=rate;a.rx_offset=1000000;a.rx_bandwidth=5000000
    a.control_base_index=1;a.samples=samples;a.capture_whole_pattern=True;a.repeats=1;a.stream_blocks=src['stream_blocks']
    a.realtime_iq=False;a.attenuation_sweep=False;a.sweep_images=False;a.lora_test=True
    a.off_samples=samples;a.warmup_samples=65536;a.context_timeout_ms=15000
    def cpu_ticks():
        rows={}
        for line in Path('/proc/stat').read_text().splitlines():
            words=line.split()
            if words and words[0].startswith('cpu') and words[0][3:].isdigit():
                vals=list(map(int,words[1:9]));rows[int(words[0][3:])]=(sum(vals),vals[3]+vals[4])
        return rows
    before=cpu_ticks();time.sleep(.05);after=cpu_ticks()
    candidates=os.sched_getaffinity(0)-{0}
    a.refill_cpu=max(candidates,key=lambda c:(after[c][1]-before[c][1])/max(1,after[c][0]-before[c][0]))
    # Off recording spans the complete same-sized acquisition for decoder negatives.
    run(a)
if __name__=='__main__':main()
