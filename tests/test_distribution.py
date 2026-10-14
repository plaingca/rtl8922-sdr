"""Ensure publication checks catch artifacts even when renamed or only staged."""
import importlib.util
import json
from pathlib import Path
import subprocess
import tempfile
import unittest

SPEC = importlib.util.spec_from_file_location(
    'check_distribution', Path(__file__).resolve().parents[1] / 'tools/check_distribution.py')
distribution = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(distribution)


class DistributionTests(unittest.TestCase):
    def test_private_paths_and_media_exception(self):
        for name in ('capture.cf32', 'firmware.bin', 'vendor/source.c', 'build-debug/result.json',
                     '.venv/bin/python', '.env.local', 'private.key', 'trace.pcapng'):
            with self.subTest(name=name):
                self.assertIsNotNone(distribution.path_problem(name))
        for name in ('docs/media/music/announcer-breaks-the-sound.mp3', '.env.example',
                     'research/firmware/inspect.py', 'driver/patches/driver.patch'):
            with self.subTest(name=name):
                self.assertIsNone(distribution.path_problem(name))
        self.assertIsNotNone(distribution.path_problem('output/recorded.mp3'))

    def test_tracked_snapshot_and_renamed_artifact(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            subprocess.run(['git', 'init', '-q', directory], check=True)
            (root / 'driver').mkdir()
            (root / 'driver/patch').write_bytes(b'patch fixture')
            pin = {'working_patch': 'patch', 'working_patch_sha256':
                   distribution.hashlib.sha256(b'patch fixture').hexdigest()}
            (root / 'driver/upstream.json').write_text(json.dumps(pin))
            (root / 'README.md').write_text('[driver](driver/upstream.json)')
            subprocess.run(['git', 'add', '.'], cwd=root, check=True)
            # Local ignored/untracked data must not affect what gets distributed.
            (root / 'local.bin').write_bytes(b'private local fixture')
            self.assertEqual(distribution.check(root)[1], [])
            (root / 'report.txt').write_bytes(b'\x7fELFrenamed executable')
            (root / 'README.md').write_text('[local-only](local.bin)')
            subprocess.run(['git', 'add', 'report.txt', 'README.md'], cwd=root, check=True)
            problems = distribution.check(root)[1]
            self.assertTrue(any('executable/archive signature' in p for p in problems))
            self.assertTrue(any('link missing from tracked distribution' in p for p in problems))
            (root / 'driver/patch').write_bytes(b'changed patch fixture')
            self.assertTrue(any('SHA256 mismatch' in p for p in distribution.check(root)[1]))


if __name__ == '__main__':
    unittest.main()
