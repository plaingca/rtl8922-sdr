#!/usr/bin/env python3
"""Explicit bounded BB mailbox experiment. Defaults to an offline plan.

Run with isolated bb_dds_patch firmware under the manual 45-second launcher.
This first stage only reads BB registers and repeats the current NCO word with
both RF chains idle. It never enables TX or changes Pluto settings.
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

sys.path.append(str(Path(__file__).resolve().parents[1] / 'firmware'))
from probe_bb_rom import DebugWindow, require
from bb_dds_patch import HOOK, STUB, OUTPUT, HOST_OUTPUT, COMMAND, MAGIC, MAX_COUNT


class Mailbox:
    def __init__(self, io, report, save):
        self.io, self.report, self.save = io, report, save
        self.window = DebugWindow()
        self.selector = self.window.selector()
        self.saved = {a: self.read(a) for a in (0x37600, 0x37608, 0x3760C, 0x37610)}
        self.status_before = {hex(a): hex(self.read(a)) for a in (0x37680, 0x37684, 0x3768C, 0x3778C)}
        require(not self.saved[0x37600] & (1 << 31), 'Mailbox slot is busy')
        report['mailbox_saved'] = {hex(k): hex(v) for k, v in self.saved.items()}
        report['mailbox_status_before'] = self.status_before
        report['selector_before'] = hex(self.selector)
        save()

    def read(self, address):
        return self.io.read(('mmio', 0, address))

    def write(self, address, value):
        self.io.write(('mmio', 0, address), value)

    def result(self):
        return struct.unpack('<12I', self.window.mapped_read(HOST_OUTPUT, 48))

    def request(self, mode=0, count=0, delay=0, fraction=0):
        require(mode in range(4) and 0 <= count <= MAX_COUNT and 0 <= delay <= 1023 and
                (not delay or count <= 16384) and 0 <= fraction <= 65535, 'Invalid request')
        before = self.result()
        require(not self.read(0x37600) & (1 << 31), 'Mailbox busy before request')
        # Clear only our completion bit, using the firmware's W1C convention.
        self.write(0x3768C, 1 << 16)
        self.write(0x37608, MAGIC)
        self.write(0x3760C, count)
        self.write(0x37610, fraction << 16 | mode << 12 | delay)
        self.write(0x37600, 0xC0000003 | COMMAND << 18)
        started = time.monotonic()
        self.write(0x37680, 1)
        last = before
        while time.monotonic() - started < 2:
            last = self.result()
            if last[0] == MAGIC and last[1] == (before[1] + 1) & 0xFFFFFFFF and last[2] in (2, 3):
                break
            time.sleep(0.001)
        elapsed = time.monotonic() - started
        row = {'mode': mode, 'count': count, 'delay': delay, 'fraction': fraction,
               'host_command_seconds': elapsed, 'result_words': [hex(v) for v in last],
               'status': {hex(a): hex(self.read(a)) for a in (0x37600, 0x3768C, 0x3778C)}}
        self.report.setdefault('commands', []).append(row)
        self.save()
        require(last[0] == MAGIC and last[1] == (before[1] + 1) & 0xFFFFFFFF and last[2] == 2,
                'BB command failed or did not complete before deadline')
        require(last[3:5] == (count, fraction << 16 | mode << 12 | delay), 'BB arguments mismatch')
        row['completed'] = True
        row['writes'] = last[9]
        # The custom dispatcher bypasses the original mailbox consumer callback
        # that releases bit 31. Release only this completed, matching request.
        header = self.read(0x37600)
        require(header == 0xC0000003 | COMMAND << 18, 'Mailbox header changed during command')
        self.write(0x37600, header & ~(1 << 31))
        if count:
            row['host_bracket_lower_bound_updates_per_second'] = count / elapsed
        self.save()
        return last

    def restore(self):
        errors = []
        # Do not overwrite a slot still owned by BB after a failed command.
        try:
            busy = self.read(0x37600) & (1 << 31)
            if busy:
                errors.append('Mailbox remains busy; leave slot to wrapper firmware unload')
            else:
                for address, value in self.saved.items():
                    try:
                        self.write(address, value)
                    except Exception as exc:
                        errors.append(f'{address:#x}: {exc}')
            self.write(0x3768C, 1 << 16)
        except Exception as exc:
            errors.append(str(exc))
        try:
            self.window.select(self.selector)
        except Exception as exc:
            errors.append(f'selector: {exc}')
        self.report['mailbox_cleanup_errors'] = errors
        self.save()


def run(args):
    import adi
    report = {'schema_version': 1, 'hardware_access': True, 'rf_tx_requested': False,
              'started_utc': time.strftime('%Y-%m-%dT%H:%M:%SZ', time.gmtime()),
              'status': 'started'}
    def save():
        args.report.write_text(json.dumps(report, indent=2) + '\n')
    def interrupted(*_):
        raise TimeoutError('Bounded BB DDS probe interrupted')
    box = None
    pluto = None
    original = None
    handlers = {sig: signal.signal(sig, interrupted) for sig in (signal.SIGINT, signal.SIGTERM, signal.SIGALRM)}
    signal.alarm(20)
    with open('/run/lock/rtl8922-sdr.lock', 'a') as lock:
        fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        try:
            metadata = json.loads(args.patch_report.read_text())
            actual = hashlib.sha256(Path(os.environ['RTL8922_FIRMWARE']).read_bytes()).hexdigest()
            require(actual == metadata['patched_sha256'], 'Wrong isolated firmware')
            report['firmware_sha256'] = actual
            pluto = adi.Pluto('ip:192.168.2.1')
            pluto._ctx.set_timeout(3000)
            powerdown = pluto._ctrl.find_channel('altvoltage1', True).attrs['powerdown'].value
            require(powerdown == '1', 'Pluto TX is active')
            keys = ('sample_rate', 'rx_lo', 'tx_lo', 'rx_rf_bandwidth', 'tx_rf_bandwidth',
                    'gain_control_mode_chan0', 'rx_hardwaregain_chan0', 'tx_hardwaregain_chan0')
            original = {k: getattr(pluto, k) for k in keys}
            report['saved_pluto'] = original
            save()
            io = DebugIO()
            modes = {str(p): io.read(('rf', p, 0)) for p in (0, 1)}
            require(all((v >> 16) & 15 in (0, 1, 3) for v in modes.values()), 'RF is not idle/RX')
            report['rf_modes_before'] = modes
            box = Mailbox(io, report, save)
            image = Path(os.environ['RTL8922_FIRMWARE']).read_bytes()
            for local, count in ((HOOK & ~3, 8), (STUB, 64)):
                host = 0x18638000 + local - 0x10010000
                got = box.window.mapped_read(host, count)
                offset = 0xD3E70 + local - 0x10010000
                require(got == image[offset:offset + count], 'Loaded BB patch readback mismatch')
            report['patch_readback_matches'] = True
            values = box.request()
            host_values = [io.read(('bb', 0, a)) for a in (0x802C, 0x8008, 0x8088)]
            report['address_mapping'] = {'host': [hex(v) for v in host_values],
                                         'bb': [hex(values[i]) for i in (5, 7, 8)]}
            require([values[i] for i in (5, 7, 8)] == host_values, 'BB/host register mapping mismatch')
            for count in (1024, 16384, MAX_COUNT):
                values = box.request(mode=1, count=count)
                require(values[5] == values[6] == host_values[0] and values[9] == count,
                        'Same-word benchmark changed NCO or count')
            report['status'] = 'runtime_hook_and_same_word_benchmark_passed'
        except BaseException as exc:
            report['exception'] = f'{type(exc).__name__}: {exc}'
            raise
        finally:
            signal.alarm(0)
            signal.signal(signal.SIGTERM, signal.SIG_IGN)
            if box:
                box.restore()
            if pluto is not None and original is not None:
                actual = {k: getattr(pluto, k) for k in keys}
                report['final_pluto'] = actual
                report['pluto_settings_unchanged'] = original == actual
                report['pluto_configuration_unchanged'] = all(original[k] == actual[k] for k in keys
                    if k != 'rx_hardwaregain_chan0' or original['gain_control_mode_chan0'] == 'manual')
                report['pluto_tx_powerdown'] = pluto._ctrl.find_channel('altvoltage1', True).attrs['powerdown'].value
            save()
            for sig, handler in handlers.items():
                signal.signal(sig, handler)
    print(json.dumps(report, indent=2))


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--execute', action='store_true')
    p.add_argument('--patch-report', type=Path)
    p.add_argument('--report', type=Path)
    args = p.parse_args()
    if not args.execute:
        print(json.dumps({'hardware_access': False, 'rf_tx_requested': False,
                          'plan': 'read-only mapping, then finite same-word NCO writes with RF idle'}))
        return
    require(args.report and args.patch_report and not args.report.exists(), 'Fresh report and patch metadata required')
    run(args)


if __name__ == '__main__':
    main()
