#!/usr/bin/env python3
"""Compile packet bytes that control one legacy-54M OFDM data subcarrier.

Software proof only: the RTL8922 TMAC scrambler seed and RF waveform are not
qualified. This controls six coded bits per symbol, not all IFFT bins.
"""

import argparse
import hashlib
import json
from pathlib import Path
import struct
import zlib

import numpy as np


DATA_BINS = tuple(k for k in range(-26, 27) if k not in (0, -21, -7, 7, 21))
AXIS_LEVELS = np.array([-7, 7, -1, 1, -5, 5, -3, 3])


def qam64(labels):
    labels = np.asarray(labels)
    return (AXIS_LEVELS[labels & 7]+1j*AXIS_LEVELS[(labels >> 3) & 7])/np.sqrt(42)


def scramble_mask(length, seed):
    if type(seed) is not int or not 1 <= seed <= 127:
        raise ValueError('A known nonzero seven-bit scrambler seed is required')
    result = np.empty(length, dtype=np.uint8)
    state = seed
    for k in range(length):
        result[k] = ((state >> 6) ^ (state >> 3)) & 1
        state = ((state << 1) & 0x7e) | int(result[k])
    return result


def interleave(bits):
    bits = np.asarray(bits, dtype=np.uint8)
    if bits.shape != (288,):
        raise ValueError('A 54M OFDM symbol contains 288 coded bits')
    k = np.arange(288)
    first = 18*(k % 16)+k//16
    second = 3*(first//3)+(first+288-(16*first)//288) % 3
    out = np.empty(288, dtype=np.uint8)
    out[second] = bits
    return out


def encode_block(bits, state=0):
    bits = np.asarray(bits, dtype=np.uint8)
    if bits.shape != (216,) or np.any(bits > 1):
        raise ValueError('Expected 216 binary input bits')
    mother = np.empty(432, dtype=np.uint8)
    for k, bit in enumerate(bits):
        state = ((state << 1) | int(bit)) & 127
        # 133/171 in the opposite shift convention are 155/117 here.
        mother[2*k] = (state & 0o155).bit_count() & 1
        mother[2*k+1] = (state & 0o117).bit_count() & 1
    punctured = mother[np.tile([True, True, True, False, False, True], 72)]
    coded = interleave(punctured)
    labels = (coded.reshape(48, 6) @ (1 << np.arange(6))).astype(np.uint8)
    return labels, coded, state


def encode_psdu(psdu, seed):
    if not 1 <= len(psdu) <= 4095:
        raise ValueError('Legacy OFDM PSDU length must be 1..4095 bytes')
    count = (16+8*len(psdu)+6+215)//216
    plain = np.zeros(count*216, dtype=np.uint8)
    plain[16:16+8*len(psdu)] = np.unpackbits(np.frombuffer(psdu, dtype=np.uint8), bitorder='little')
    scrambled = plain ^ scramble_mask(len(plain), seed)
    scrambled[16+8*len(psdu):16+8*len(psdu)+6] = 0
    state, labels = 0, []
    for block in scrambled.reshape(-1, 216):
        output, _, state = encode_block(block, state)
        labels.append(output)
    return np.asarray(labels)


def constraint_matrix(subcarrier):
    if subcarrier not in DATA_BINS:
        raise ValueError('Select a legacy OFDM data bin, excluding pilots/DC/guards')
    selected = DATA_BINS.index(subcarrier)
    result = np.empty((6, 216), dtype=np.uint8)
    for k in range(216):
        basis = np.zeros(216, dtype=np.uint8)
        basis[k] = 1
        _, coded, _ = encode_block(basis)
        result[:, k] = coded[6*selected:6*selected+6]
    return result


def solve_constraints(matrix, target):
    work = np.c_[matrix, target].copy()
    row, pivots = 0, []
    for col in range(matrix.shape[1]):
        candidates = np.flatnonzero(work[row:, col])
        if not len(candidates):
            continue
        pivot = row+int(candidates[0])
        work[[row, pivot]] = work[[pivot, row]]
        for other in range(len(work)):
            if other != row and work[other, col]:
                work[other] ^= work[row]
        pivots.append(col)
        row += 1
        if row == len(work):
            break
    if row != len(work):
        raise ValueError('Selected constellation bits are not independently controllable')
    answer = np.zeros(matrix.shape[1], dtype=np.uint8)
    answer[pivots] = work[:, -1]
    return answer, pivots


def compile_frame(requested, seed=93, subcarrier=8, source=b'\x02\x00\x00\x89\x22\x01'):
    requested = list(requested)
    if not 1 <= len(requested) <= 128 or any(type(v) is not int or not 0 <= v < 64 for v in requested):
        raise ValueError('Expected 1..128 six-bit constellation labels')
    if len(source) != 6:
        raise ValueError('Source MAC must contain six bytes')
    matrix = constraint_matrix(subcarrier)
    index = DATA_BINS.index(subcarrier)
    start_symbol = 2
    nbytes = (start_symbol+len(requested))*27-2
    nsym = (16+8*(nbytes+4)+6+215)//216
    plain = np.zeros(nsym*216, dtype=np.uint8)
    header = struct.pack('<HH', 0x0008, 0)+b'\xff'*6+source+b'\x02\x00\x00\x89\x22\x02'+struct.pack('<H', 0x1230)
    prefix = header+bytes.fromhex('aaaa0300000088b5')+b'RTL8922-IFFT\0'
    if 16+8*len(prefix) > start_symbol*216:
        raise ValueError('Fixed MAC/LLC header overlaps controlled symbols')
    plain[16:16+8*len(prefix)] = np.unpackbits(np.frombuffer(prefix, dtype=np.uint8), bitorder='little')
    mask = scramble_mask(len(plain), seed)
    state, pivots = 0, []
    for symbol in range(start_symbol+len(requested)):
        region = slice(symbol*216, (symbol+1)*216)
        block = plain[region] ^ mask[region]
        baseline, coded, _ = encode_block(block, state)
        if symbol >= start_symbol:
            target = np.array([(requested[symbol-start_symbol] >> bit) & 1 for bit in range(6)], dtype=np.uint8)
            delta, pivots = solve_constraints(matrix, target ^ coded[6*index:6*index+6])
            plain[region] ^= delta
            block ^= delta
        _, _, state = encode_block(block, state)
    body = np.packbits(plain[16:16+8*nbytes], bitorder='little').tobytes()
    psdu = body+struct.pack('<I', zlib.crc32(body))
    actual = encode_psdu(psdu, seed)
    observed = actual[start_symbol:start_symbol+len(requested), index]
    if observed.tolist() != requested:
        raise AssertionError('Forward PHY did not reproduce every requested constellation label')
    wrong_seed = seed % 127+1
    wrong = encode_psdu(psdu, wrong_seed)[start_symbol:start_symbol+len(requested), index]
    points = qam64(requested)
    result = {'hardware_access': False, 'rf_demonstrated': False,
              'software_selected_subcarrier_preimage_verified': True,
              'rate_mbps': 54, 'nfft': 64, 'sample_rate': 20000000,
              'cp_samples': 16, 'symbol_seconds': .000004,
              'constellation_updates_per_second_inside_payload': 250000,
              'subcarrier': subcarrier, 'subcarrier_offset_hz': subcarrier*312500,
              'scrambler_seed_required': seed, 'controlled_symbol_start': start_symbol,
              'controlled_symbols': len(requested), 'total_data_symbols': len(actual),
              'psdu_bytes_including_fcs': len(psdu), 'psdu_sha256': hashlib.sha256(psdu).hexdigest(),
              'constraint_rank': len(pivots), 'input_bits_per_symbol': 216,
              'selected_coded_bits_per_symbol': 6, 'pivot_input_positions': pivots,
              'requested_labels': requested, 'forward_model_labels': observed.tolist(),
              'requested_complex_points': [[float(z.real), float(z.imag)] for z in points],
              'wrong_seed': wrong_seed, 'wrong_seed_matching_labels': int(np.count_nonzero(wrong == requested)),
              'mac_llc_prefix_preserved': psdu.startswith(prefix),
              'fcs_valid': zlib.crc32(psdu[:-4]) == int.from_bytes(psdu[-4:], 'little'),
              'constraints': ['One selected data subcarrier; other data tones are uncontrolled',
                              'Known/fixed hardware scrambler seed required', 'Legacy 54M fixed PHY rate',
                              'Cyclic prefix, pilots, guards and preamble remain',
                              'No zero constellation point in ordinary 64-QAM',
                              'Finite packet; continuous gapless SSB is not demonstrated']}
    return psdu, result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--labels-json', type=Path)
    parser.add_argument('--seed', type=int, default=93)
    parser.add_argument('--subcarrier', type=int, default=8)
    parser.add_argument('--report', type=Path, required=True)
    parser.add_argument('--frame-out', type=Path)
    args = parser.parse_args()
    if args.report.exists() or args.frame_out and args.frame_out.exists():
        parser.error('Use fresh output paths')
    if args.frame_out and args.frame_out.resolve().parent != Path('/tmp'):
        parser.error('Generated binary frames must stay outside the repository under /tmp')
    labels = json.loads(args.labels_json.read_text()) if args.labels_json else np.random.default_rng(8922).permutation(64).tolist()
    frame, report = compile_frame(labels, args.seed, args.subcarrier)
    if args.frame_out:
        args.frame_out.write_bytes(frame)
    report['compiler_sha256'] = hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
    args.report.write_text(json.dumps(report, indent=2)+'\n')


if __name__ == '__main__':
    main()
