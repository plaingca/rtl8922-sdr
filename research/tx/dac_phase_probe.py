"""Standby debug packing and native DAC clock-setting comparison.

The tone helper's second clock address is 2ba0+(path<<8). The native
DACK force-DAC-clock helper 0x140466d14 instead uses 2aa0|(path<<8),
with mask 200000/f0000 and code 4. Neither is silently substituted for the
other; this probe records both. Packed-phase interpretation is provisional.
"""

from calibration_probe import spectrum
from iq_envelope_probe import pack


def run(tx, pluto, save, report):
    result = report['dac_phase_probe'] = {
        'scope': 'Internal DAC tap; both RF paths held in standby',
        'arbitrary_iq_rf_demonstrated': False, 'rows': []}
    tx.setup()
    for path in (0, 1):
        tx.field('rf', path, 0, 0xF0000, 1)
    tx.field('bb', 0, 0x8238, 0xFFFFFFFF, pack(1024, 0))
    tx.field('bb', 0, 0x8224, 0x100, 0)
    for clock in ('tone_setup', 'native_dack_force4'):
        if clock == 'native_dack_force4':
            tx.field('bb', 0, 0x2BA0, 0x200000, 0)
            tx.field('bb', 0, 0x2BA0, 0xF0000, 4)
            tx.field('bb', 0, 0x2BA0, 0x200000, 1)
        for index in (0, 1, 320, 640, 960):
            tx.field('bb', 0, 0x802C, 0xFFF, index)
            tx.field('bb', 0, 0x8034, 1, 1)
            tx.field('bb', 0, 0x8034, 1, 0)
            for rate in (0, 7):
                for data_type in (0, 3, 12, 14):
                    if any((tx.io.read(('rf', p, 0)) >> 16) & 15 != 1 for p in (0, 1)):
                        raise RuntimeError('RF standby lost')
                    result['rows'].append({'clock': clock, 'dds_word': index,
                                           'capture_rate_selector': rate, 'data_type': data_type,
                                           'clock_register_2ba0': hex(tx.io.read(('bb', 0, 0x2BA0))),
                                           'tx_dac_debug': tx.inspect_dac(rate, data_type)})
                    save()
    tx.stop()
    report['off_after'] = spectrum(pluto.rx(), int(pluto.sample_rate))
    report['status'] = 'dac_phase_clock_comparison_complete_unqualified'
    save()


def run_dif5(tx, pluto, save, report):
    """8030's field semantics are unknown; test only in RF standby."""
    result = report['dif5_packed_probe'] = {
        'scope': 'Unknown 8030 field hypothesis; both RF paths held in standby',
        'arbitrary_iq_rf_demonstrated': False, 'rows': []}
    tx.setup()
    for path in (0, 1):
        tx.field('rf', path, 0, 0xF0000, 1)
    tx.field('bb', 0, 0x8238, 0xFFFFFFFF, pack(1024, 0))
    tx.field('bb', 0, 0x8224, 0x100, 0)
    words = (0x400000C0, 0x400000C2, 0x000000C2, 0x000400C2,
             0x200200C2, 0xC00400C2, 0x40000000, 0x40000002,
             0x00040002, 0x400000C0)
    for index in (0, 1, 640):
        tx.field('bb', 0, 0x802C, 0xFFF, index)
        tx.field('bb', 0, 0x8034, 1, 1)
        tx.field('bb', 0, 0x8034, 1, 0)
        for word in words:
            tx.field('bb', 0, 0x8030, 0xFFFFFFFF, word)
            for data_type in (0, 12, 14):
                if any((tx.io.read(('rf', p, 0)) >> 16) & 15 != 1 for p in (0, 1)):
                    raise RuntimeError('RF standby lost')
                result['rows'].append({'dds_word': index, 'word_8030': hex(word),
                                       'data_type': data_type,
                                       'tx_dac_debug': tx.inspect_dac(7, data_type)})
                save()
    tx.stop()
    report['off_after'] = spectrum(pluto.rx(), int(pluto.sample_rate))
    report['status'] = 'dif5_packed_probe_complete_unqualified'
    save()
