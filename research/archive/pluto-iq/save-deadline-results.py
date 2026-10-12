import json,re
from pathlib import Path
log=Path('output/rtl8922-soapy40-deadline600.log').read_text()
report=json.loads(Path('output/rtl8922-soapy40-deadline600-report.json').read_text())
rows=json.loads(Path('output/rtl8922-deadline600-responsiveness.json').read_text())
assert '"samples":24000000000' in log and 'CLEANUP_DONE' in log
assert 'policy=6 reason=0' in log and 'ret=0 pipeline=1' in log
assert report['tx_powerdown_restored']=='1'
result={
    'status':'passed_600_seconds_with_deadline_producer; experimental',
    'sample_rate':40000000,'cs16_samples':24000000000,'elapsed_seconds':600.13,
    'timeouts':0,'detected_sequence_or_timestamp_gaps':0,'host_fifo_drops':0,
    'raw_packets':5859377,'raw_record_sequence_wrap_tested':True,
    'max_source_backlog_records':31637,'source_ring_records':40960,
    'max_poll_gap_ns':3058387,'max_mutex_yield_ns':2965670,
    'producer_policy':6,'scheduler_args':{'runtime_ns':950000,'deadline_ns':1000000,'period_ns':1000000},
    'cpu_observation':'Producer consumed approximately one CPU core; reader approximately 0.39 core.',
    'ssh_probe_latency_seconds':[min(r['latency_seconds'] for r in rows),max(r['latency_seconds'] for r in rows)],
    'cf32_restart_samples':80000257,
    'tone_peak_median_db':{'CS16':56.8665,'CF32':56.5462},
    'logs':['output/rtl8922-soapy40-deadline65.log','output/rtl8922-soapy40-deadline600.log','output/rtl8922-soapy40-deadline600-report.json','output/rtl8922-deadline600-responsiveness.json','output/rtl8922-deadline600-scheduler.json'],
    'limitation':'One ten-minute run passed; normal scheduling previously overran at 298 seconds. Source ring retains under 1 ms of headroom at the worst observed backlog. No indefinite or system-load-independent guarantee.'}
p=Path('rtl8922-sdr/validation-summary.json');d=json.loads(p.read_text());d['deadline_producer_20261012']=result
d['additional_logs']=list(dict.fromkeys(d['additional_logs']+result['logs']))
d['development40']['status']='experimental: deadline producer passed 600 seconds; normal scheduling previously overran at 298 seconds'
d['development40']['failure']='Early completion suppressed by count255; deadline producer passed 600 seconds but longer/load robustness remains unqualified'
d['development40']['deadline_result']='deadline_producer_20261012'
p.write_text(json.dumps(d,indent=2)+'\n')
p=Path('rtl8922-sdr/README.txt');s=p.read_text()
s=s.replace('- Current driver passed65seconds at40MS/s. A longer current-driver run\n  detected a source-ring overwrite at298seconds.40MS/s remains experimental;\n  do not assume indefinite gapless capture from the successful shorter run.',
'''- With producer_scheduler=deadline, 40 MS/s passed a 600.13-second run:
  24,000,000,000 CS16 complex samples, zero detected sequence/timestamp gaps,
  zero timeouts and zero host FIFO drops. The raw 32-bit record sequence
  wrapped successfully. An 80,000,257-sample CF32 restart also passed.
- Normal scheduling previously overran the source ring at 298 seconds.
  Deadline scheduling is optional and 40 MS/s remains experimental.
  The longest polling pause was 3.058 ms; maximum ring occupancy was
  31,637 / 40,960 records (77%). This leaves under 1 ms of worst-case
  source-buffer headroom. A ten-minute pass is not an indefinite guarantee.''')
s=s.replace('- Privileged temporary setup is still required.40MS/s sustained operation\n  needs better producer scheduling/buffering. Live tuning/rate controls,',
'''- Privileged temporary setup is still required. Longer 40 MS/s operation
  and robustness under other host workloads still need qualification.
  Live tuning/rate controls,''')
s=s.replace('An application uses device arguments driver=rtl8922 and antenna PATH1.',
'''An application uses device arguments driver=rtl8922 and antenna PATH1.
For the ten-minute-tested 40 MS/s configuration use:
  driver=rtl8922,experimental40=1,producer_scheduler=deadline
Select 40,000,000 samples/s and an RF center of 2422..2462 MHz in 5 MHz steps.
The plugin requests SCHED_DEADLINE only for its capture worker, with runtime
950 us, deadline 1000 us and period 1000 us. The reader retains normal
scheduling. Failure to obtain the requested policy fails activation and
prints its reason. Root/CAP_SYS_NICE is needed. No global scheduler settings
are changed; thread exit releases the reservation. Observed producer CPU
usage was approximately one core, not a measured hard 95% CPU ceiling.
producer_scheduler=normal remains the default. Set RTL8922_TRACE=1 to print
producer timing/overrun counters on each deactivation. The kernel counts
maximum polling and mutex-yield pauses and distinguishes four overrun sites.
Policy reference: https://docs.kernel.org/scheduler/sched-deadline.html''')
s=s.replace('- Current8KiB virtual-destination path cannot sustain10 million raw records/s\n  (80 MB/s; overrun). This is distinct from decoded complex sample rate:',
'''- Historical normal-scheduler 8 KiB virtual-destination tests overran at
  10 million raw records/s (80 MB/s). The deadline-producer test above now
  passed ten minutes at this rate. This is distinct from complex sample rate:''')
p.write_text(s)
print(json.dumps(result,indent=2))
