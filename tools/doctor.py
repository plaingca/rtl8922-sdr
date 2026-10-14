#!/usr/bin/env python3
"""Check local dependencies and driver provenance without accessing hardware."""
import argparse
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[1]


def python_dependency(name):
    # Import the numerical extension too: module discovery alone can miss an
    # incompatible NumPy/SciPy installation. These imports open no devices.
    target = 'scipy.signal' if name == 'scipy' else name
    command = ('import importlib,sys; importlib.import_module(sys.argv[1]); '
               'module=importlib.import_module(sys.argv[2]); '
               'print(getattr(module,"__version__","installed"))')
    try:
        result = subprocess.run([sys.executable, '-c', command, target, name],
                                cwd=ROOT, capture_output=True, text=True, timeout=15)
    except (OSError, subprocess.TimeoutExpired) as exc:
        return False, str(exc)
    if result.returncode:
        lines = result.stderr.strip().splitlines()
        return False, lines[-1] if lines else 'Import failed'
    return True, result.stdout.strip()


def checks(research=False):
    rows = []

    def add(name, ok, detail, required=True):
        rows.append(dict(name=name, ok=bool(ok), detail=detail, required=required))

    pin = json.loads((ROOT / 'driver/upstream.json').read_text())
    patch = ROOT / 'driver' / pin['working_patch']
    digest = hashlib.sha256(patch.read_bytes()).hexdigest() if patch.is_file() else None
    add('Working driver patch', digest == pin['working_patch_sha256'],
        f"Pinned upstream {pin['commit']}; patch SHA256 {digest}")
    modules = ['numpy'] + (['scipy', 'capstone', 'pefile', 'unicorn'] if research else [])
    for name in modules:
        ok, detail = python_dependency(name)
        add(f'Python: {name}', ok, f'{detail}; interpreter: {sys.executable}')
    for name in ('cc', 'cmake', 'make', 'git'):
        path = shutil.which(name)
        add(f'Tool: {name}', path is not None, path or f'Install {name}')
    for name, path in (
        ('Receiver bridge', Path(os.environ.get('RTL8922_BRIDGE', ROOT / 'build/live-bridge'))),
        ('Soapy plugin', ROOT / 'build/libRTL8922Support.so'),
        ('Offline TX compiler', ROOT / 'build/nco-compiler.so'),
    ):
        add(name, path.is_file(), str(path), required=False)
    add('Pluto Python (optional)', importlib.util.find_spec('adi') is not None,
        'Needed only for Pluto transmission in the demo', required=False)
    return rows


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--research', action='store_true', help='Also check offline research dependencies')
    parser.add_argument('--json', action='store_true', help='Emit a machine-readable report')
    args = parser.parse_args()
    rows = checks(args.research)
    ready = all(row['ok'] or not row['required'] for row in rows)
    if args.json:
        print(json.dumps(dict(hardware_access=False, required_checks_pass=ready, checks=rows), indent=2))
    else:
        print('Local setup only; no device, service, network or RF access.\n')
        for row in rows:
            label = 'OK' if row['ok'] else 'MISSING' if row['required'] else 'OPTIONAL'
            print(f"[{label}] {row['name']}: {row['detail']}")
        print('\nBuild artifacts do not establish driver load state, Soapy ABI compatibility or RF readiness.')
        if not ready:
            print('See docs/getting-started.md for setup and dependency commands.')
    return 0 if ready else 1


if __name__ == '__main__':
    raise SystemExit(main())
