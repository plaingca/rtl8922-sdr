"""Bounded source/phase hypothesis test at the internal DAC debug tap.

8030 is initialized by the pinned 8922A NCTL element. Its low byte 0xc0
could encode a quadrature phase; that interpretation is explicitly unproved.
82cc[13:12] is used as a source switch by related calibration code.
No undocumented high fields or calibration launch commands are changed.
"""

from calibration_probe import spectrum
from iq_envelope_probe import pack


def run(tx, pluto, save, report):
    result = report['tone_phase_probe'] = {
        'scope': 'Internal DAC tap; both RF paths held in standby',
        'phase_field_encoding_known': False, 'arbitrary_iq_demonstrated': False,
        'rows': [],
    }
    tx.setup()
    for path in (0, 1):
        tx.field('rf', path, 0, 0xF0000, 1)
    tx.field('bb', 0, 0x8238, 0xFFFFFFFF, pack(1024, 0))
    tx.field('bb', 0, 0x8224, 0x100, 0)
    tx.field('bb', 0, 0x82CC, 0x3F, 0x12)

    def record(name, index):
        modes = {str(p): (tx.io.read(('rf', p, 0)) >> 16) & 15 for p in (0, 1)}
        if set(modes.values()) != {1}:
            raise RuntimeError(f'RF standby lost: {modes}')
        tx.field('bb', 0, 0x802C, 0xFFF, index)
        tx.field('bb', 0, 0x8034, 1, 1)
        tx.field('bb', 0, 0x8034, 1, 0)
        observation = tx.inspect_dac()
        result['rows'].append({'name': name, 'tone_index': index, 'rf_modes': modes,
                               'registers': {hex(a): hex(tx.io.read(('bb', 0, a)))
                                             for a in (0x8030, 0x82CC, 0x8238)},
                               'tx_dac_debug': observation})
        save()
        return observation

    positive, zero = record('before', 1), record('zero_before', 0)
    result['observation_control_passed'] = (
        positive.get('valid_capture', False) and zero.get('valid_capture', False)
        and positive.get('real_std', 0) > 10 and positive.get('imag_std', 0) > 10
        and zero.get('real_std', 1e9) < 1 and zero.get('imag_std', 1e9) < 1)
    if result['observation_control_passed']:
        for switch in (0, 3):
            tx.field('bb', 0, 0x82CC, 0x3000, switch)
            for phase in (0xC0, 0, 0x40, 0x80):
                tx.field('bb', 0, 0x8030, 0xFF, phase)
                record(f'switch{switch}_byte{phase:02x}', 1)
                record(f'switch{switch}_byte{phase:02x}_zero', 0)
        tx.field('bb', 0, 0x8030, 0xFFFFFFFF, tx.saved['bb', 0, 0x8030])
        tx.field('bb', 0, 0x82CC, 0x3000, 0)
        record('after', 1)
        report['status'] = 'tone_phase_probe_complete_unqualified'
    else:
        report['status'] = 'tone_phase_observation_control_failed'
    tx.stop()
    report['off_after'] = spectrum(pluto.rx(), int(pluto.sample_rate))
    save()
