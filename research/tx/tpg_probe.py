"""Bounded internal source experiment, not a waveform-upload implementation.

The pinned NCTL load contains C2/CE CFIR_SYS presets and the four TPG
presets. Source selection and the meaning of TPG_SEL remain hypotheses.
RF mode is held in standby; Pluto stays a receiver. No raw samples are saved.
"""

import time


PRESETS = ((20, 1, 0xF9F007D0), (40, 2, 0xFF4009E0),
           (80, 0, 0xFFE0FA00), (160, 3, 0x0180FF30))
REGISTERS = (0x802C, 0x8034, 0x8068, 0x806C, 0x8070, 0x8220, 0x82CC)


def cases():
    rows = []
    for system in (0xC2000A08, 0xCE000A08):
        for bandwidth, mode, value in PRESETS:
            rows.append((f'preset_{system:08x}_{bandwidth}', system, mode, value))
        # Small orthogonal bit patterns test a direct two-field data hypothesis;
        # these values are not claimed to have a known I/Q packing or scale.
        for name, value in (('zero', 0), ('low', 0x100), ('high', 0x1000000),
                            ('both', 0x1000100), ('low_sign', 0xFF000000),
                            ('high_sign', 0x0000FF00), ('zero_repeat', 0)):
            rows.append((f'word_{system:08x}_{name}', system, 1, value))
    return rows


def run(tx, pluto, save, report):
    result = report['tpg_source_probe'] = {
        'scope': 'Internal DAC debug tap; RF mode held in standby; TPG/source hypotheses',
        'arbitrary_iq_demonstrated': False, 'rows': [],
    }
    tx.setup()
    for path in (0, 1):
        tx.field('rf', path, 0, 0xF0000, 1)

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

    # Positive and zero controls qualify the observation path without RF TX.
    tx.field('bb', 0, 0x802C, 0xFFF, 1)
    tx.field('bb', 0, 0x8034, 1, 1)
    tx.field('bb', 0, 0x8034, 1, 0)
    positive = record('dds_1_standby')
    tx.field('bb', 0, 0x802C, 0xFFF, 0)
    zero = record('dds_zero_standby')
    result['observation_control_passed'] = (
        positive.get('valid_capture', False) and zero.get('valid_capture', False)
        and positive.get('real_std', 0) > 10 and positive.get('imag_std', 0) > 10
        and zero.get('real_std', 1e9) < 1 and zero.get('imag_std', 1e9) < 1)
    save()
    if not result['observation_control_passed']:
        report['status'] = 'tpg_observation_control_failed'
        return

    for name, system, mode, value in cases():
        tx.field('bb', 0, 0x8070, 0xFF000000, 0)
        tx.field('bb', 0, 0x806C, 8, 0)
        tx.field('bb', 0, 0x8220, 0xFFFFFFFF, system)
        tx.field('bb', 0, 0x806C, 6, mode)
        tx.field('bb', 0, 0x8068, 0xFFFFFFFF, value)
        # Inferred NCTL common block: masked trigger plus sync high-byte pulse.
        # No sequencer is launched and no RX/DPK calibration is requested.
        tx.field('bb', 0, 0x806C, 8, 1)
        tx.field('bb', 0, 0x8070, 0xFF000000, 0x88)
        tx.field('bb', 0, 0x8070, 0xFF000000, 0x80)
        time.sleep(0.002)
        record(name)

    tx.field('bb', 0, 0x8070, 0xFF000000, 0)
    tx.field('bb', 0, 0x806C, 8, 0)
    tx.field('bb', 0, 0x8220, 0xFFFFFFFF, 0xC2000A08)
    tx.field('bb', 0, 0x802C, 0xFFF, 1)
    tx.field('bb', 0, 0x8034, 1, 1)
    tx.field('bb', 0, 0x8034, 1, 0)
    record('dds_1_after_tpg')
    tx.stop()
    report['off_after'] = __import__('calibration_probe').spectrum(pluto.rx(), int(pluto.sample_rate))
    report['status'] = 'tpg_source_probe_complete_unqualified'
    save()
