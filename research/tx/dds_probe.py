"""Check live DDS controls and whether a stopped oscillator holds DC samples."""

import time

from tone_validation import measure


def run(tx, pluto, save, report):
    tx.setup()
    tx.start(1)
    cases = [
        ('running_1', []),
        ('live_index_2', [(0x802C, 0xFFF, 2)]),
        ('live_index_minus1', [(0x802C, 0xFFF, 0xFFF)]),
        ('live_index_zero', [(0x802C, 0xFFF, 0)]),
        ('live_index_1', [(0x802C, 0xFFF, 1)]),
        ('source_gate_off', [(0x80CC, 0x100, 0)]),
        ('source_gate_on', [(0x80CC, 0x100, 1)]),
        ('generator_stop', [(0x8034, 0x30, 3)]),
    ]
    rows = []
    report['dds_controls'] = {'rows': rows, 'arbitrary_iq_demonstrated': False}
    for name, ops in cases:
        for address, mask, value in ops:
            tx.field('bb', 0, address, mask, value)
        time.sleep(0.01)
        rows.append({'name': name, 'tx_dac_debug': tx.inspect_dac(),
                     'rf': measure(pluto, [750000, 1000000, 1250000, 1500000])})
        save()
    report['status'] = 'dds_controls_probe_complete'
    save()
