import pathlib, json, hashlib

root = pathlib.Path('tmp/rtl8922-vendor')
p = pathlib.Path('output/rtl8922-la-registers.json')
r = json.loads(p.read_text())
known = [x for x in r['fields'] if x['address'] is not None]
r['source_url'] = 'https://dlcdnets.asus.com/pub/ASUS/mb/08WIRELESS/DRV_WiFi_RTK_8922AE_TP_W11_64_V6102241430_20260706R.zip'
r['cross_check'] = {
    'version': '6102.24.129.103',
    'archive_sha256': hashlib.sha256((root/'driver-older.zip').read_bytes()).hexdigest(),
    'sys_sha256': hashlib.sha256((root/'older/rtwlane711.sys').read_bytes()).hexdigest(),
    'comparison': '88/88 entries identical, including unavailable placeholders',
}
r['status'] = 'Static extraction; field names correlated with OSS layout. Register readback performed; capture semantics not hardware validated.'
r['linux_translation'] = 'Add0x20000 to baseband addresses for raw rtw89 debugfs IO; rtw8922a selects rtw89_phy_gen_be, whose cr_base is0x20000.'
for x in known:
    x['linux_debugfs_address'] = hex(int(x['address'],16)+0x20000)
r['readback_file'] = 'rtl8922-la-readback.json'
r['remaining_work'] = [
    'Trace reserved LA buffer allocation and corresponding Linux DLE partitioning.',
    'Verify indirect packet buffer readout and per-format IQ packing.',
    'Implement bounded capture with save/restore; no IQ obtained this turn.',
]
p.write_text(json.dumps(r, indent=2))
header = ['/* RTL8922A LA controls recovered from vendor machine code.',
          ' * BB offsets require +0x20000 for raw rtw89 debugfs IO.',
          ' * Readback performed; capture semantics remain unvalidated.',
          ' * See rtl8922-la-registers.json for hashes and instruction provenance.',
          ' * Unavailable/dynamic placeholders omitted. */',
          '#ifndef RTL8922_LA_RECOVERED_H', '#define RTL8922_LA_RECOVERED_H']
for x in known:
    n = 'RTL8922_LA_' + x['field'].upper()
    header += [f'#define {n}_BB {x["address"]}u', f'#define {n}_MASK {x["mask"]}u']
header += ['#endif']
pathlib.Path('output/rtl8922-la-registers.h').write_text('\n'.join(header)+'\n')
oldp = root/'older/registers.json'
old = json.loads(oldp.read_text())
old.update(source='ASUS RTL8922AE6102.24.129.103', zip_sha256=r['cross_check']['archive_sha256'], function_va='0x14038d53c', chip_branch_evidence='cr_type4 branches to0x14038dc34')
oldp.write_text(json.dumps(old, indent=2))
mac = {
    'source': r['source_url'], 'sys_sha256': r['sys_sha256'],
    'status': 'Static decoding; capture not hardware validated',
    'functions': {'buffer_config':'0x140526b70','configuration':'0x140526dc0','trigger':'0x140526e60','status':'0x140526af0','query':'0x140526f00'},
    'vtable_evidence': 'HAL wrapper0x14027fc18 calls slot0x660; three MAC tables contain buffer_config there, alongside configuration/trigger/status functions.',
    'registers': {
        '0x9660': {'enable':'bit0','software_trigger':'bit3','restart_enable':'bit4','timeout_enable':'bit5','timeout_value':'bits7:6','buffer_boundary':'bits14:8; start_addr>>13','buffer_selector':'bits19:16','trigger_time_unit':'bits23:20','trigger_time_value':'bits30:24'},
        '0x9664': {'write_pointer':'bits15:0','wrap_indicator':'bit16','state':'bits19:17'},
        '0x9668': {'loss_interrupt_mask':'bit0; allones readback leaves accessibility uncertain'},
        '0x966c': {'data_loss_status':'bit0'},
    },
    'buffer': {'start':'adapter+0x3c8','size':'adapter+0x3cc','end':'start+size','evidence':'0x140526d24 through0x140526d46','unresolved':'Allocation initialization and partitioning not yet traced; older fixed boundaries cannot be assumed.'},
    'configuration': 'MAC9660=(old&0x000fff00)|(cfg&1)|((cfg&0x1e)<<3)|((cfg&0x1ffc0)<<14); cfg is vendor packed mac_ax_la_cfg; bit3 is set separately.',
    'readout': 'halbb_la_rpt_buf_get advances pointers in8-byte units. IQ byte layout remains unvalidated.',
}
pathlib.Path('output/rtl8922-mac-la-registers.json').write_text(json.dumps(mac, indent=2))
print(f'Saved {len(known)} concrete BB register/mask pairs; {len(r["fields"])-len(known)} placeholders omitted from header.')
