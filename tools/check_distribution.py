#!/usr/bin/env python3
"""Check the tracked distribution without opening hardware or using the network.

This is an artifact/provenance check, not a credential scanner. Run Gitleaks
against all reachable Git history before changing repository visibility.
"""
import hashlib
import json
from pathlib import Path, PurePosixPath
import re
import subprocess
import sys
from urllib.parse import unquote, urlsplit

ROOT = Path(__file__).resolve().parents[1]
FORBIDDEN_SUFFIXES = {
    '.bin', '.cf32', '.cs16', '.iq', '.raw', '.npy', '.npz', '.pcap', '.pcapng',
    '.sys', '.exe', '.dll', '.ko', '.o', '.so', '.a', '.pyc', '.pem', '.key',
    '.zip', '.7z', '.rar', '.tar', '.gz', '.xz', '.bz2', '.wav', '.flac', '.mp3',
}
MAGIC = (b'\x7fELF', b'MZ', b'PK\x03\x04', b'\x1f\x8b', b'BZh', b'\xfd7zXZ\x00')


def path_problem(name):
    path = PurePosixPath(name)
    if any(part in {'vendor', '__pycache__', '.ssh', '.aws'} or
           part.startswith(('build', '.venv')) for part in path.parts[:-1]):
        return 'local/vendor/build directory'
    if path.name in {'id_rsa', 'id_ed25519', 'credentials', '.netrc'} or (
            path.name.startswith('.env') and path.name != '.env.example'):
        return 'credential/environment file'
    # Owner-approved creative soundtrack; never a received RF/audio capture.
    if name == 'docs/media/music/announcer-breaks-the-sound.mp3':
        return None
    if path.suffix.lower() in FORBIDDEN_SUFFIXES:
        return 'capture, vendor, compiled, private or archive artifact'
    return None


def check(root):
    result = subprocess.run(['git', 'ls-files', '-z'], cwd=root, check=True, capture_output=True)
    names = result.stdout.decode().rstrip('\0').split('\0') if result.stdout else []
    tracked = set(names)
    directories = {str(parent) for name in names for parent in PurePosixPath(name).parents}
    problems = []
    for name in names:
        problem = path_problem(name)
        if problem:
            problems.append(f'{name}: {problem}')
            continue
        path = root / name
        if path.is_symlink():
            problems.append(f'{name}: symlink requires manual distribution review')
            continue
        if not path.is_file():
            problems.append(f'{name}: tracked file missing')
            continue
        if path.stat().st_size > 50 * 1024 * 1024:
            problems.append(f'{name}: exceeds the 50 MiB distribution limit')
        with path.open('rb') as source:
            if source.read(8).startswith(MAGIC):
                problems.append(f'{name}: executable/archive signature, including renamed files')
        if path.suffix == '.json':
            try:
                json.loads(path.read_text())
            except (ValueError, UnicodeError) as exc:
                problems.append(f'{name}: invalid JSON: {exc}')
        if path.suffix == '.md':
            for target in re.findall(r'!?\[[^\]]*\]\(([^)]+)\)', path.read_text()):
                target = target.split(' "')[0].strip('<>')
                parsed = urlsplit(target)
                if parsed.scheme or parsed.netloc or not parsed.path:
                    continue
                resolved = (path.parent / unquote(parsed.path)).resolve()
                try:
                    relative = resolved.relative_to(root.resolve()).as_posix()
                except ValueError:
                    problems.append(f'{name}: link leaves distribution: {target}')
                    continue
                if relative not in tracked and relative not in directories:
                    problems.append(f'{name}: link missing from tracked distribution: {target}')
    pin = json.loads((root / 'driver/upstream.json').read_text())
    digest = hashlib.sha256((root / 'driver' / pin['working_patch']).read_bytes()).hexdigest()
    if digest != pin['working_patch_sha256']:
        problems.append('driver/upstream.json: working patch SHA256 mismatch')
    return names, problems


def main():
    names, problems = check(ROOT)
    for problem in problems:
        print(problem, file=sys.stderr)
    if problems:
        print(f'Distribution check failed: {len(problems)} problem(s).', file=sys.stderr)
        return 1
    print(f'Distribution check passed: {len(names)} tracked files; JSON, local Markdown links, '
          'artifact policy and working patch verified. No hardware/network access.')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
