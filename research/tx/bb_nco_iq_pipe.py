#!/usr/bin/env python3
"""Compile little-endian CF32 into packed NCO commands, entirely offline."""
import argparse
from contextlib import ExitStack
import json
from pathlib import Path
import sys
import time

import numpy as np
from bb_nco_realtime import Compiler, FS


def compile_stream(source, target, compiler, factor=20, chunk_samples=256):
    """Keep compiler state across reads, including reads split inside a sample."""
    pending = b''
    samples = words = 0
    compute = 0.0
    started = time.perf_counter()
    while True:
        block = source.read(chunk_samples * 8)
        if not block:
            break
        pending += block
        complete = len(pending) // 8 * 8
        if not complete:
            continue
        iq = np.frombuffer(pending[:complete], dtype='<c8')
        pending = pending[complete:]
        before = time.perf_counter()
        out = compiler.feed_iq(iq, factor)
        compute += time.perf_counter() - before
        target.write(out.astype('<u4', copy=False).tobytes())
        target.flush()
        samples += len(iq)
        words += len(out)
    if pending:
        raise ValueError('Truncated CF32 sample at EOF; expected 8 bytes per I/Q pair')
    if not samples:
        raise ValueError('Input contains no CF32 samples')
    return {
        'hardware_access': False,
        'input_format': 'CF32_LE',
        'input_samples': samples,
        'input_sample_rate_hz': FS / factor,
        'output_commands': words * 8,
        'nominal_command_rate_hz': FS,
        'compiler_seconds': compute,
        'elapsed_seconds': time.perf_counter() - started,
        'lookahead_input_samples': 1,
        'uncompiled_command_slots': max(0, (samples - 1) * factor - words * 8),
        'scope': 'Offline commands only; one lookahead sample and sub-word tail are not padded at EOF. RF transport and scheduling are separate.',
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__, epilog=(
        'Input: finite interleaved float32 I,Q with complex magnitude <= 1. '
        'Default factor 20 means 533.333 kS/s input. Output: eight 4-bit commands '
        'per little-endian uint32. JSON statistics go to stderr. This does not transmit.'
    ))
    parser.add_argument('--library', type=Path, default=Path(__file__).resolve().parents[2] / 'build/nco-compiler.so',
                        help='Compiled C library (default: build/nco-compiler.so; build with make tx-compiler)')
    parser.add_argument('--input', default='-', help='CF32 file, or - for stdin (default)')
    parser.add_argument('--output', default='-', help='New command file, or - for stdout (default); existing files are refused')
    parser.add_argument('--factor', type=int, default=20, help='Interpolation factor, 1–128 (default: 20)')
    parser.add_argument('--feedback', type=float, default=.97)
    parser.add_argument('--phase-weight', type=float, default=1.)
    parser.add_argument('--chunk-samples', type=int, default=256)
    args = parser.parse_args()
    if not 1 <= args.factor <= 128 or not 1 <= args.chunk_samples <= 65536:
        parser.error('Factor must be 1–128; chunk size must be 1–65536')
    if not args.library.is_file():
        parser.error(f'Compiler library not found: {args.library}. Run make tx-compiler first.')
    if args.output == '-' and sys.stdout.isatty():
        parser.error('Binary output needs --output commands.bin or a pipe/file redirect')
    compiler = Compiler(args.library.resolve(), args.feedback, args.phase_weight)
    created = None
    try:
        with ExitStack() as stack:
            source = sys.stdin.buffer if args.input == '-' else stack.enter_context(open(args.input, 'rb'))
            if args.output == '-':
                target = sys.stdout.buffer
            else:
                target = stack.enter_context(open(args.output, 'xb'))
                created = Path(args.output)
            stats = compile_stream(source, target, compiler, args.factor, args.chunk_samples)
    except BaseException:
        if created is not None:
            created.unlink(missing_ok=True)
        raise
    print(json.dumps(stats), file=sys.stderr)


if __name__ == '__main__':
    try:
        main()
    except (ValueError, OSError, AttributeError) as exc:
        print(f'Compile failed: {exc}', file=sys.stderr)
        raise SystemExit(1)
