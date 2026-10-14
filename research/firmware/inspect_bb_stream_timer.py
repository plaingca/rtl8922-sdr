#!/usr/bin/env python3
"""Pin the existing idle-timer refresh path from local firmware/ROM evidence."""
import argparse,hashlib,json,struct
from pathlib import Path
from inspect_tx_path import decode
from inspect_bb_rom import CODE_SHA256,TABLE_SHA256
from probe_bb_rom import FIRMWARE_SHA256,require


def inspect(firmware,code,tables):
    for data,digest in ((firmware,FIRMWARE_SHA256),(code,CODE_SHA256),(tables,TABLE_SHA256)):
        require(hashlib.sha256(data).hexdigest()==digest,'Unpinned timer-trace input')
    pointer=struct.unpack_from('<I',tables,0x1EFC+0x70)[0]
    require(pointer==0x1000779A,'Timer API target changed')
    def ram(lo,hi):return list(decode(firmware[0xD3E70+lo-0x10010000:0xD3E70+hi-0x10010000],lo)[0].values())
    def rom(lo,hi):return list(decode(code[lo-0x10000000:hi-0x10000000],lo)[0].values())
    idle=ram(0x100104A4,0x100104CA)
    require(any(x['mnemonic']=='wfi' for x in idle),'Idle wait disappeared')
    require(any(x['operands']=='a5, 0x70(a5)' for x in idle),'Idle timer API changed')
    return {'schema_version':1,'hardware_access':False,
       'input_sha256':{'firmware':FIRMWARE_SHA256,'rom_code':CODE_SHA256,'rom_tables':TABLE_SHA256},
       'idle_hook':'0x100104a4','idle_task_call':'0x100132f2','timer_api_root':'0x10021efc',
       'refresh_pointer':hex(pointer),'timer_object':'0x1002c1a4','refresh_argument':1000000,
       'interpretation':'Idle task refreshes the configured timer then WFI; continuous consumer calls refresh only, once per block.',
       'evidence':{'idle_hook':idle,'idle_task':ram(0x100132E4,0x100132F8),
            'refresh_entry':rom(0x1000779A,0x100077C2),
            'timer_load_write':rom(0x100073BE,0x100073C4),
            'timer_restart':rom(0x100073C4,0x100073E4),
            'timeout_handler_entry':ram(0x10014C80,0x10014CBC)},
       'scope':'Existing timer is serviced, not disabled; interrupts remain enabled. Physical watchdog timing and all other task servicing are not exhaustively characterized.'}


def main():
    p=argparse.ArgumentParser(description=__doc__)
    for name in ('firmware','rom-code','rom-tables','report'):p.add_argument('--'+name,required=True,type=Path)
    a=p.parse_args();require(not a.report.exists(),'Report exists')
    a.report.write_text(json.dumps(inspect(a.firmware.read_bytes(),a.rom_code.read_bytes(),a.rom_tables.read_bytes()),indent=2)+'\n')


if __name__=='__main__':main()
