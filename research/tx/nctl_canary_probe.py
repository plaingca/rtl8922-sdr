#!/usr/bin/env python3
"""Explicit RF-idle canary for inferred RTL8922A NCTL byte-store semantics.

Patches only the first jump and verified trailing jump padding after normal boot.
No TX setup; snapshots, bounded polling, sequencer stop and restoration in finally.
"""
import argparse
import fcntl
import hashlib
import json
import os
from pathlib import Path
import signal
import struct
import sys
import time
from calibration_probe import DebugIO
sys.path.append(str(Path(__file__).resolve().parents[1]/'firmware'))
from probe_bb_rom import require
from inspect_nctl_sources import FW_SHA256,ELEMENT,PAYLOAD_BYTES

ENTRY=0x680
START=0x8500+ENTRY*2
HOOK=0x8504

def words(value):
    tokens=[8,0x8000,4,0x4380,5,0x6800|value,4,0x4300,0x42FE,0x4000,0x4200,0x5055,0x3000,0x3000]
    return list(struct.unpack('<7I',struct.pack('<14H',*tokens)))

def pinned_program(path):
    data=path.read_bytes();require(hashlib.sha256(data).hexdigest()==FW_SHA256,'Unpinned source firmware')
    pairs=struct.iter_unpack('<II',data[ELEMENT+32:ELEMENT+32+PAYLOAD_BYTES])
    return {a:v for a,v in pairs if 0x8500<=a<0x9500}

def run(args):
    import adi
    expected=pinned_program(args.firmware)
    report={'schema_version':1,'hardware_access':True,'rf_tx_requested':False,'status':'started','tests':[],
            'hook_register':hex(HOOK),'entry_halfword':hex(ENTRY),
            'force_kip_clock':args.force_kip_clock,'restore_pinned_program':args.restore_pinned_program,
            'started_utc':time.strftime('%Y-%m-%dT%H:%M:%SZ',time.gmtime())}
    def save():args.report.write_text(json.dumps(report,indent=2)+'\n')
    def interrupted(*_):raise TimeoutError('Bounded NCTL canary interrupted')
    handlers={s:signal.signal(s,interrupted) for s in (signal.SIGALRM,signal.SIGTERM,signal.SIGINT)}
    signal.alarm(25);io=None;saved={};changed=False;rw_original=None;cfg_original=None;clock_original={}
    with open('/run/lock/rtl8922-sdr.lock','a') as lock:
        fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
        try:
            pluto=adi.Pluto('ip:192.168.2.1');pluto._ctx.set_timeout(3000)
            require(pluto._ctrl.find_channel('altvoltage1',True).attrs['powerdown'].value=='1','Pluto TX active')
            io=DebugIO();report['rf_modes_before']={str(p):io.read(('rf',p,0)) for p in (0,1)}
            require(all((v>>16)&15 in (0,1,3) for v in report['rf_modes_before'].values()),'RF not idle')
            # Full original program comparison before any mutation. Preserve
            # only the exact words changed, plus every possible canary target.
            if args.force_kip_clock:
                clock_original={a:io.read(('bb',0,a)) for a in (0x8088,0x808C)}
                report['saved_clock_controls']={hex(a):hex(v) for a,v in clock_original.items()};save()
                io.write(('bb',0,0x8088),0x81FF010A);io.write(('bb',0,0x808C),0x3C0C)
            cfg_original=io.read(('bb',0,0x8000))
            rw_original=io.read(('bb',0,0x8080))
            require(not io.read(('bb',0,0x8000))&1,'NCTL busy before read mode')
            report['saved_nctl_rw']=hex(rw_original);save()
            io.write(('bb',0,0x8080),6)  # Read-enable candidate: bit1, with native hold/check bit2.
            program={a:io.read(('bb',0,a)) for a in expected}
            report['program_comparison']={'matches':program==expected,
                'mismatched_words':sum(program[a]!=expected[a] for a in expected),
                'observed_sha256':hashlib.sha256(struct.pack('<1024I',*program.values())).hexdigest(),
                'expected_sha256':hashlib.sha256(struct.pack('<1024I',*expected.values())).hexdigest(),
                'first_mismatches':[{'address':hex(a),'observed':hex(program[a]),'expected':hex(expected[a])}
                    for a in expected if program[a]!=expected[a]][:8]}
            save()
            opaque=program!=expected
            if opaque:
                require(args.restore_pinned_program and set(program.values())=={expected[0x8500]},'Runtime NCTL program differs from pinned load')
                source=args.firmware.read_bytes();loaded=Path(os.environ['RTL8922_FIRMWARE']).read_bytes()
                require(loaded[ELEMENT:ELEMENT+32+PAYLOAD_BYTES]==source[ELEMENT:ELEMENT+32+PAYLOAD_BYTES],
                        'Isolated firmware changed the NCTL element')
                report['program_restore_provenance']='Pinned unmodified load element; program fetch window does not expose addressed data'
                save()
            io.write(('bb',0,0x8000),cfg_original)
            keys=[0x8000,0x8010,0x8068,0x8500,HOOK,*range(START,START+28,4)]
            saved={a:(expected[a] if a in expected else io.read(('bb',0,a))) for a in keys}
            require(not saved[0x8000]&1,'NCTL busy')
            require(all(saved[a]==0x30003000 for a in range(START,START+28,4)),'Canary area not padding')
            report['saved_registers']={hex(a):hex(v) for a,v in saved.items()};save()
            changed=True
            for value in (0x3C,0xA5,0x5A):
                io.write(('bb',0,0x8080),4)  # Native post-command halt/check.
                io.write(('bb',0,0x8000),saved[0x8000]&~1)
                io.write(('bb',0,0x8080),5)
                for offset,word in enumerate(words(value)):io.write(('bb',0,START+offset*4),word)
                io.write(('bb',0,HOOK),0x30000000|(0x3000|ENTRY))
                io.write(('bb',0,0x8080),6)
                report.setdefault('entry_readbacks',[]).append(hex(io.read(('bb',0,0x8500))));save()
                if not opaque:
                    require(all(io.read(('bb',0,START+i*4))==w for i,w in enumerate(words(value))),'Program readback mismatch')
                io.write(('bb',0,0x8080),0)
                io.write(('bb',0,0x8010),saved[0x8010]&~255)
                before=io.read(('bb',0,0x8068))
                io.write(('bb',0,0x8000),(saved[0x8000]&0xFFFFFF00)|9)
                t=time.monotonic();observed={}
                while time.monotonic()-t<.1:
                    observed={hex(a):io.read(('bb',0,a)) for a in (0x8000,0x8010,0x8068)}
                    if observed['0x8010']&255==0x55:break
                    time.sleep(.001)
                io.write(('bb',0,0x8080),4)
                row={'value':value,'before':hex(before),'after':{k:hex(v) for k,v in observed.items()},
                     'host_seconds':time.monotonic()-t,
                     'byte_store_matches':observed['0x8068']==(before&~255)|value,
                     'completion_55':observed['0x8010']&255==0x55}
                report['tests'].append(row);save()
                require(row['byte_store_matches'] and row['completion_55'],'NCTL canary did not match inferred byte-store/completion semantics')
            report['status']='three_nctl_byte_canaries_completed'
        except BaseException as exc:report['exception']=f'{type(exc).__name__}: {exc}';raise
        finally:
            signal.alarm(0);signal.signal(signal.SIGTERM,signal.SIG_IGN)
            errors=[]
            if changed:
                try:
                    io.write(('bb',0,0x8080),4)
                    io.write(('bb',0,0x8000),saved[0x8000]&~1);time.sleep(.002)
                    require(not io.read(('bb',0,0x8000))&1,'NCTL failed stop')
                    io.write(('bb',0,0x8080),5)
                    for a,v in saved.items():
                        if a!=0x8000:io.write(('bb',0,a),v)
                    io.write(('bb',0,0x8080),6)
                    io.write(('bb',0,0x8000),saved[0x8000])
                    restored_keys=[a for a in saved if a not in expected or a==0x8500]
                    report['restored_program_words_from_pinned_element']=sum(a in expected for a in saved)
                    report['restored_registers']={hex(a):hex(io.read(('bb',0,a))) for a in restored_keys}
                    report['restore_matches']=all(report['restored_registers'][hex(a)]==hex(v) for a,v in saved.items() if a in restored_keys)
                except Exception as exc:errors.append(str(exc))
            if io is not None and cfg_original is not None:
                try:io.write(('bb',0,0x8000),cfg_original)
                except Exception as exc:errors.append(f'Config: {exc}')
            if io is not None and rw_original is not None:
                try:
                    io.write(('bb',0,0x8080),rw_original)
                    report['restored_nctl_rw']=hex(io.read(('bb',0,0x8080)))
                except Exception as exc:errors.append(f'RW mode: {exc}')
            if io is not None and clock_original:
                try:
                    for a,v in clock_original.items():io.write(('bb',0,a),v)
                    report['restored_clock_controls']={hex(a):hex(io.read(('bb',0,a))) for a in clock_original}
                except Exception as exc:errors.append(f'Clock controls: {exc}')
            if io:report['rf_modes_after']={str(p):io.read(('rf',p,0)) for p in (0,1)}
            report['cleanup_errors']=errors;save()
            for s,h in handlers.items():signal.signal(s,h)
    print(json.dumps({k:report.get(k) for k in ('status','tests','restore_matches','cleanup_errors')}))

def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--execute',action='store_true')
    p.add_argument('--firmware',type=Path,default=Path('vendor/rtw89/firmware/rtw8922a_fw-4.bin'))
    p.add_argument('--force-kip-clock',action='store_true',help='Temporarily force the previously verified calibration KIP clocks with RF idle')
    p.add_argument('--restore-pinned-program',action='store_true',help='Allow the observed fetch-data read window, restoring exact unchanged pinned load words')
    p.add_argument('--report',type=Path);a=p.parse_args()
    if not a.execute:print('Offline plan: finite NCTL byte-store canaries with RF idle');return
    require(a.report and not a.report.exists(),'Fresh report required');run(a)
if __name__=='__main__':main()
