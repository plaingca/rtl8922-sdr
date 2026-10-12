import adi,json,pathlib
s=adi.Pluto('ip:192.168.2.1');s._ctx.set_timeout(3000)
keys=['sample_rate','rx_lo','tx_lo','rx_rf_bandwidth','tx_rf_bandwidth','tx_hardwaregain_chan0']
lo=s._ctrl.find_channel('altvoltage1',True)
before={k:getattr(s,k) for k in keys};before['tx_powerdown']=lo.attrs['powerdown'].value
pathlib.Path('/home/plaing/rtl8922-iq-research/pluto-orphan-tx-state.json').write_text(json.dumps(before,indent=2))
s.tx_hardwaregain_chan0=-89.75
s.tx_destroy_buffer();lo.attrs['powerdown'].value='1'
print(json.dumps({'before':before,'muted_gain':s.tx_hardwaregain_chan0,'powerdown':lo.attrs['powerdown'].value}))
