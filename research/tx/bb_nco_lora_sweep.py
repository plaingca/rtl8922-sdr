#!/usr/bin/env python3
"""Generate bounded LoRa sweep sources offline; never runs RF or opens devices."""
import argparse,json,math
from pathlib import Path
from bb_nco_lora import PRESETS,parameters,generate,packet_payload

def airtime(p):
    sf=p['sf'];length=len(packet_payload(0));den=4*(sf-2*int(p['ldro']))
    symbols=8+max(0,math.ceil((8*length-4*sf+44)/den)*p['coding_rate_denominator'])
    return (p['preamble_symbols']+4.25+symbols)*(1<<sf)/p['bandwidth_hz']

def main():
    a=argparse.ArgumentParser(description=__doc__);a.add_argument('--stage',choices=('cal','hold','confirm'),required=True)
    a.add_argument('--suffix',required=True,help='Fresh source-name suffix');a.add_argument('--plan',type=Path,required=True)
    a.add_argument('--playback-rate',type=float,default=10639878.95);args=a.parse_args()
    if args.plan.exists():raise ValueError('Plan exists')
    if not args.suffix or any(c not in 'abcdefghijklmnopqrstuvwxyz0123456789-' for c in args.suffix):raise ValueError('Use a plain lowercase name suffix')
    selected=[('SHORT_TURBO',False),('SHORT_FAST',False),('SHORT_SLOW',False),('MEDIUM_TURBO',False),
              ('MEDIUM_SLOW',False),('NARROW_FAST',False),('SHORT_SLOW',True),('MEDIUM_SLOW',True)] if args.stage=='confirm' else [
              (name,wide) for wide in (False,True) for name in PRESETS if not wide or not name.startswith(('LITE','NARROW','TINY'))]
    rows=[]
    for name,wide in selected:
        prefix=('wide-' if wide else '')+name.lower().replace('_','-')+'-'+args.stage+'-'+args.suffix
        count=10 if args.stage=='confirm' else 1 if args.stage=='hold' and 2*airtime(parameters(name,wide))+.025>1.2 else 2
        src=generate(prefix,name,wide,count,args.playback_rate,args.stage!='cal')
        rows.append({'name':prefix,'preset':name,'wide':wide,'stream_blocks':src['stream_blocks'],'generation_pass':True})
    args.plan.write_text(json.dumps(rows,indent=2)+'\n')
if __name__=='__main__':main()
