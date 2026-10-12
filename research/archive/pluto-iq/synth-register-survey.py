import json,pathlib,re,signal,subprocess,time
root=pathlib.Path('/home/plaing/rtl8922-iq-research')
dbg=next(pathlib.Path('/sys/kernel/debug/ieee80211').glob('*/rtw89/read_rf')).parent
iw=str(root/'iw-local/sbin/iw');iface=next(pathlib.Path('/sys/bus/pci/devices/0000:0d:00.0/net').iterdir()).name
def run(*a):return subprocess.run([iw,*a],capture_output=True,text=True,timeout=5)
def read(p,a):
    (dbg/'read_rf').write_text(f'{p} {a:x} fffff\n')
    return int(re.findall(r'0x[0-9a-fA-F]+',(dbg/'read_rf').read_text())[-1],16)
def stop(*_):raise TimeoutError('Register survey timeout')
signal.signal(signal.SIGALRM,stop);signal.signal(signal.SIGTERM,stop);signal.alarm(100)
country=re.search(r'country (\w\w):',run('reg','get').stdout)[1]
rows=[]
try:
    run('reg','set','CA');time.sleep(.4)
    for mhz in [2412,2417,2462,5180,5200,5320,5825,5955,5995,6415,7115]:
        r=run('dev',iface,'set','freq',str(mhz),'HT20');r.check_returncode();time.sleep(.03)
        row={'mhz':mhz,'registers':{f'0:{a:x}':read(0,a) for a in range(256)}}
        row['registers'].update({f'{p}:{a:x}':read(p,a) for p in [0,1] for a in [0x10018,0x100b0,0x100b2,0x100c5,0x100d3,0x100d5,0x100d6,0x100d7,0x100d8]})
        rows.append(row);print('SURVEY',mhz,flush=True)
finally:
    run('dev',iface,'set','freq','2412','HT20');run('reg','set',country)
    (root/'synth-register-survey.json').write_text(json.dumps(rows,indent=2))
