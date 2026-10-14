"""Manual beastmode display-stall check; Pluto must already be off.

Pauses only live-demo.py for two seconds, always resumes it in finally, and
checks that the independent bridge continues capturing. Never run in CI.
"""
import argparse,json,subprocess,time,urllib.request
from pathlib import Path
url='http://127.0.0.1:8732/api/frame'
def get():return json.load(urllib.request.urlopen(url,timeout=5))
def brief(x):return {k:x[k] for k in ['frame','samples','errors','recoveries','display_skipped','live','received_at']}
def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--run-capture-test",action="store_true",required=True)
    parser.parse_args()
    before=get();assert before['live'] and not before['tone']['enabled']
    pids=subprocess.check_output(['pgrep','-f','^/home/plaing/rtl8922-iq-research/pluto-venv/bin/python /home/plaing/rtl8922-sdr/live-demo.py$'],text=True).split()
    assert len(pids)==1
    try:
     subprocess.run(['sudo','-n','kill','-STOP',pids[0]],check=True)
     time.sleep(2)
    finally:
     subprocess.run(['sudo','-n','kill','-CONT',pids[0]],check=True)
    time.sleep(.6)
    after=get()
    report=dict(stall_seconds=2,before=brief(before),after=brief(after),samples_added=after['samples']-before['samples'],capture_errors_added=after['errors']-before['errors'],recoveries_added=after['recoveries']-before['recoveries'],display_skips_added=after['display_skipped']-before['display_skipped'])
    report['passed']=after['live'] and report['samples_added']>80_000_000 and report['capture_errors_added']==0 and report['recoveries_added']==0 and report['display_skips_added']>10
    Path('/home/plaing/rtl8922-sdr/output/rtl8922-demo40-backpressure-check.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report,indent=2));assert report['passed']

if __name__ == "__main__":
    main()
