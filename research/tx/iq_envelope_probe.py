"""Combine the measured ITQT attenuation with the narrowband IQC matrix.

With the original Q tone muted, a matrix of [a 0; b 1] could produce
(a + j*b)*I_tone. Its field encoding and actual order must be tested.
This is an internal DAC experiment, not a raw sample replay interface.
"""

from calibration_probe import spectrum


CASES = ((1024, 0), (0, 0), (0, 1024), (1024, 1024), (1024, -1024),
         (-1024, 1024), (-1024, -1024), (512, 256), (256, -512),
         (768, 384), (384, -768), (1024, 0))


def pack(a, b):
    if not (-2048 <= a <= 2047 and -2048 <= b <= 2047):
        raise ValueError('IQC coefficients must fit signed twelve-bit fields')
    return ((a & 0xFFF) << 20) | ((b & 0xFFF) << 8) | 2


def run(tx, pluto, save, report):
    result = report['iq_envelope_probe'] = {
        'scope': 'Both RF paths held in standby; IQC with original Q tone muted',
        'raw_arbitrary_iq_demonstrated': False, 'rows': [],
    }
    tx.setup()
    for path in (0, 1):
        tx.field('rf', path, 0, 0xF0000, 1)
    tx.field('bb', 0, 0x802C, 0xFFF, 1)
    tx.field('bb', 0, 0x8034, 1, 1)
    tx.field('bb', 0, 0x8034, 1, 0)
    # Measured ITQT: bits 5:3 I attenuation; bits 2:0 Q attenuation;
    # code 2 is one-quarter amplitude and code 7 mutes the channel.
    tx.field('bb', 0, 0x82CC, 0x3F, 0x17)
    tx.field('bb', 0, 0x8224, 0x100, 0)
    for a, b in CASES:
        modes = {str(p): (tx.io.read(('rf', p, 0)) >> 16) & 15 for p in (0, 1)}
        if set(modes.values()) != {1}:
            raise RuntimeError(f'RF standby lost: {modes}')
        tx.field('bb', 0, 0x8238, 0xFFFFFFFF, pack(a, b))
        result['rows'].append({'a': a, 'b': b, 'iqc': hex(pack(a, b)),
                               'rf_modes': modes, 'tx_dac_debug': tx.inspect_dac()})
        save()
    tx.stop()
    report['off_after'] = spectrum(pluto.rx(), int(pluto.sample_rate))
    report['status'] = 'iq_envelope_probe_complete_unqualified'
    save()
