"""Look for a nonzero DDS wrap that holds DC at several debug capture rates.

The tone field has twelve bits. Its high-frequency wrap behavior is unknown;
zero frequency is already measured to mute. RF stays in standby throughout.
Constant debug samples alone would still need independent analog validation.
"""

from calibration_probe import spectrum
from iq_envelope_probe import CASES, pack


INDICES = (0, 1, 20, 40, 80, 128, 160, 256, 320, 512, 640, 960,
           1024, 1280, 1920, 2048, 2560, 3200, 3840, 4095)
RATES = (0, 2, 4, 7, 8)


def constant(observation):
    return (observation.get('valid_capture', False)
            and observation.get('real_std', 1e9) < 1
            and observation.get('imag_std', 1e9) < 1
            and max(abs(observation.get('real_mean', 0)),
                    abs(observation.get('imag_mean', 0))) > 50)


def run(tx, pluto, save, report):
    result = report['dds_dc_probe'] = {'scope': 'Both RF paths in standby; internal DAC debug tap',
                                      'arbitrary_iq_demonstrated': False, 'rows': [],
                                      'constant_candidates': [], 'matrix_tests': []}
    tx.setup()
    for path in (0, 1):
        tx.field('rf', path, 0, 0xF0000, 1)
    tx.field('bb', 0, 0x8238, 0xFFFFFFFF, pack(1024, 0))
    tx.field('bb', 0, 0x8224, 0x100, 0)
    tx.field('bb', 0, 0x82CC, 0x3F, 0x12)

    def tone(index):
        tx.field('bb', 0, 0x802C, 0xFFF, index)
        tx.field('bb', 0, 0x8034, 1, 1)
        tx.field('bb', 0, 0x8034, 1, 0)

    def record(index, rate):
        modes = {str(p): (tx.io.read(('rf', p, 0)) >> 16) & 15 for p in (0, 1)}
        if set(modes.values()) != {1}:
            raise RuntimeError(f'RF standby lost: {modes}')
        observation = tx.inspect_dac(rate)
        result['rows'].append({'tone_index': index, 'capture_rate_selector': rate,
                               'rf_modes': modes, 'tx_dac_debug': observation})
        save()
        return observation

    tone(1)
    positive = record(1, 4)
    tone(0)
    zero = record(0, 4)
    result['observation_control_passed'] = (
        positive.get('valid_capture', False) and zero.get('valid_capture', False)
        and positive.get('real_std', 0) > 10 and positive.get('imag_std', 0) > 10
        and zero.get('real_std', 1e9) < 1 and zero.get('imag_std', 1e9) < 1)
    if result['observation_control_passed']:
        for index in INDICES:
            tone(index)
            observations = [record(index, rate) for rate in RATES]
            if all(constant(o) for o in observations):
                result['constant_candidates'].append(index)
        for index in result['constant_candidates']:
            tone(index)
            for a, b in CASES:
                tx.field('bb', 0, 0x8238, 0xFFFFFFFF, pack(a, b))
                result['matrix_tests'].append({'index': index, 'a': a, 'b': b,
                                               'tx_dac_debug': tx.inspect_dac(0)})
                save()
        tx.field('bb', 0, 0x8238, 0xFFFFFFFF, pack(1024, 0))
        tone(1)
        record(1, 4)
        report['status'] = 'dds_dc_probe_complete_unqualified'
    else:
        report['status'] = 'dds_dc_observation_control_failed'
    tx.stop()
    report['off_after'] = spectrum(pluto.rx(), int(pluto.sample_rate))
    save()
