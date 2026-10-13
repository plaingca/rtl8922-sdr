#!/usr/bin/env python3
"""Run hardware-free TX/firmware tests with a freshly built temporary compiler."""
import argparse
import os
from pathlib import Path
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--cc', default='cc', help='C compiler executable')
    args = parser.parse_args()
    env = dict(os.environ, OPENBLAS_NUM_THREADS='1')
    with tempfile.TemporaryDirectory(prefix='rtl8922-offline-tests-') as directory:
        library = Path(directory) / 'nco-compiler.so'
        subprocess.run([args.cc, '-O3', '-Wall', '-Wextra', '-Werror', '-shared', '-fPIC',
                        str(ROOT / 'research/tx/bb_nco_realtime.c'), '-lm', '-o', str(library)], check=True)
        env['RTL8922_NCO_TEST_LIBRARY'] = str(library)
        # Load stdlib inspect before adding research/firmware, whose historical
        # inspect.py would otherwise shadow it during NumPy/SciPy imports.
        bootstrap = (
            'import inspect,sys,unittest; '
            'sys.path.extend(["research/tx", "research/firmware"]); '
            'unittest.main(module=None)'
        )
        for suite in ('research/tx', 'research/firmware'):
            print(f'\nOffline suite: {suite}', flush=True)
            subprocess.run([sys.executable, '-c', bootstrap, 'discover', '-s', suite, '-v'],
                           cwd=ROOT, env=env, check=True)
    print('\nOffline research checks passed. Optional modem/private-input skips are listed above.')


if __name__ == '__main__':
    try:
        main()
    except (OSError, subprocess.CalledProcessError) as exc:
        print(f'Research checks failed: {exc}', file=sys.stderr)
        print('Install research/requirements.txt with this Python interpreter; see docs/getting-started.md.',
              file=sys.stderr)
        raise SystemExit(1)
