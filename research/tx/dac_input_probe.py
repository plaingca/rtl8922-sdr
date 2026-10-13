"""Manual internal DAC input experiment, not an arbitrary-I/Q implementation.

RTL8922A native DACK helpers 0x14045cf74 / 0x14045b078 / 0x14045bf64
use 2b58[28:27] = 2/0 and CFIR_SYS = 42000a08. The six-bit ITQT
field is a candidate pair of three-bit settings; no I/Q packing is assumed.
Only these fields are varied. No DACK calibration engine is launched.
"""

from calibration_probe import spectrum


REGISTERS = (0x802C, 0x8034, 0x8220, 0x82CC, 0x2B58)


def run(tx, pluto, save, report):
    result = report['dac_input_probe'] = {
        'scope': 'Internal DAC debug tap; both RF paths held in standby',
        'arbitrary_iq_demonstrated': False,
        'itqt_pair_hypothesis': 'Two independent three-bit I/Q settings, unproved',
        'rows': [],
    }
    tx.setup()
    for path in (0, 1):
        tx.field('rf', path, 0, 0xF0000, 1)

    def tone(index):
        tx.field('bb', 0, 0x802C, 0xFFF, index)
        tx.field('bb', 0, 0x8034, 1, 1)
        tx.field('bb', 0, 0x8034, 1, 0)

    def record(name):
        modes = {str(p): (tx.io.read(('rf', p, 0)) >> 16) & 15 for p in (0, 1)}
        if set(modes.values()) != {1}:
            raise RuntimeError(f'RF standby lost: {modes}')
        row = {'name': name, 'rf_modes': modes,
               'registers': {hex(a): hex(tx.io.read(('bb', 0, a))) for a in REGISTERS},
               'tx_dac_debug': tx.inspect_dac()}
        result['rows'].append(row)
        save()
        return row['tx_dac_debug']

    tone(1)
    positive = record('dds_1_before')
    tone(0)
    zero = record('dds_zero_before')
    result['observation_control_passed'] = (
        positive.get('valid_capture', False) and zero.get('valid_capture', False)
        and positive.get('real_std', 0) > 10 and positive.get('imag_std', 0) > 10
        and zero.get('real_std', 1e9) < 1 and zero.get('imag_std', 1e9) < 1)
    save()
    if not result['observation_control_passed']:
        report['status'] = 'dac_input_observation_control_failed'
        return

    # Exhaust all six-bit codes instead of assuming their numeric encoding.
    tone(1)
    for code in range(64):
        tx.field('bb', 0, 0x82CC, 0x3F, code)
        record(f'itqt_dds1_{code:02x}')
    tone(0)
    for code in (0, 1, 2, 4, 8, 0x10, 0x12, 0x18, 0x20, 0x24, 0x3F):
        tx.field('bb', 0, 0x82CC, 0x3F, code)
        record(f'itqt_dds0_{code:02x}')

    # Both selector values are present in this chip's native DACK code.
    # This tests source routing alone, without undocumented calibration kicks.
    for system in (0xC2000A08, 0x42000A08):
        tx.field('bb', 0, 0x8220, 0xFFFFFFFF, system)
        for source in (0, 2):
            tx.field('bb', 0, 0x2B58, 0x18000000, source)
            for code in (0x12, 0x3F):
                tx.field('bb', 0, 0x82CC, 0x3F, code)
                for index in (0, 1):
                    tone(index)
                    record(f'source_{system:08x}_{source}_itqt{code:02x}_dds{index}')

    # Recover the exact source field and repeat the known observation control.
    tx.field('bb', 0, 0x2B58, 0xFFFFFFFF, tx.saved['bb', 0, 0x2B58])
    tx.field('bb', 0, 0x8220, 0xFFFFFFFF, 0xC2000A08)
    tx.field('bb', 0, 0x82CC, 0x3F, 0x12)
    tone(1)
    record('dds_1_after')
    tx.stop()
    report['off_after'] = spectrum(pluto.rx(), int(pluto.sample_rate))
    report['status'] = 'dac_input_probe_complete_unqualified'
    save()
