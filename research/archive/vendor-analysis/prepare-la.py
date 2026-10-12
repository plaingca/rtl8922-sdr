from pathlib import Path
import json, struct
exec(open('tmp/rtl8922-vendor/analyze.py').read().split('targets=')[0])
record=0x8ea3f0
ptrs=struct.unpack('<14Q',p.get_data(record,112))
def vals(ptr,fmt): return struct.unpack(fmt,p.get_data(ptr-base,struct.calcsize(fmt)))
result={'record_va':hex(base+record),'mode':8,'wde':vals(ptrs[1],'<3I'),'ple':vals(ptrs[2],'<4I'),'wde_min':vals(ptrs[3],'<6H'),'ple_min':vals(ptrs[6],'<14H'),'ple_max':vals(ptrs[7],'<14H'),'rsvd_quota':vals(ptrs[8],'<10H'),'la_region':vals(ptrs[9],'<2I'),'la_size':vals(ptrs[11],'<I'),'tail':vals(ptrs[10],'<2I')}
Path('output/rtl8922-la-reservation.json').write_text(json.dumps(result,indent=2))
src=Path('tmp/rtw89-iq-research/rtw8922a.c').read_text()
defs='''/* Experimental receive-only LA layout recovered from official RTL8922A mode 8. */
static const struct rtw89_dle_size iq_wde = {64, 1408, 0, 0};
static const struct rtw89_dle_size iq_ple = {128, 1601, 239, 0x56000};
static const struct rtw89_wde_quota iq_wde_q = {1382, 6, 0, 20};
static const struct rtw89_ple_quota iq_ple_min = {320,320,32,16,19,13,292,292,44,18,1,4,0,0};
static const struct rtw89_ple_quota iq_ple_max = {320,320,32,246,249,243,522,522,274,248,1,234,0,0};
static const struct rtw89_rsvd_quota iq_rsvd_q = {1,107,107,6,6,6,6,0,0,0};
static const struct rtw89_dle_rsvd_size iq_buffer = {0x16000, 0x40000};
'''
start=src.index('static const struct rtw89_dle_mem rtw8922a_dle_mem_pcie[]')
end=src.index('\t[RTW89_QTA_DBCC]',start)
src=src[:start]+defs+'''static const struct rtw89_dle_mem rtw8922a_dle_mem_pcie[] = {
\t[RTW89_QTA_SCC] = {RTW89_QTA_SCC, &iq_wde, &iq_ple,
\t\t&iq_wde_q, &iq_wde_q, &iq_ple_min, &iq_ple_max,
\t\t&iq_rsvd_q, &iq_buffer, &rtw89_mac_size.rsvd1_size0},
'''+src[end:]
Path('tmp/rtl8922-vendor/rtw8922a-la.c').write_text(src)
print(json.dumps(result,indent=2))
