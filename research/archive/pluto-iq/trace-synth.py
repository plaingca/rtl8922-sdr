exec(open('tmp/rtl8922-vendor/analyze.py').read().split('targets=')[0])
names=['rtw_hal_mp_reg_write_rf_syn','rtw_hal_mp_reg_read_rf_syn','halrf_ctl_band_ch_bw_8922a','halrf_chlk_reload_check_8922a','halrf_config_8922a_radio_a_reg','halrf_config_8922a_radio_b_reg','rtw_hal_set_syn_sel','halrf_ops_check_fw_chlk']
targets={base+p.get_rva_from_offset(b.index(n.encode()+b'\0')):n for n in names if n.encode()+b'\0' in b}
data=p.sections[0].get_data();va=base+p.sections[0].VirtualAddress
result=[]
for m in re.finditer(rb'[\x48\x4c]\x8d[\x05\x0d\x15\x1d\x25\x2d\x35\x3d]',data):
    i=next(md.disasm(data[m.start():m.start()+15],va+m.start()),None)
    if not i:continue
    for op in i.operands:
        if op.type==X86_OP_MEM and op.mem.base==X86_REG_RIP:
            t=i.address+i.size+op.mem.disp
            if t in targets:
                name=targets[t];lo,hi=fn(i.address)
                path=pathlib.Path('tmp/pluto-iq',name+'-'+hex(lo)+'.asm');path.write_text(dump(i.address))
                result.append(dict(name=name,start=hex(lo),end=hex(hi),file=str(path)))
pathlib.Path('output/rtl8922-synth-xrefs.json').write_text(json.dumps(result,indent=2))
print(json.dumps(result,indent=2))
