"""Exercise restart/stop decisions without loading a driver or opening radios."""
import importlib.util
import json
import os
from pathlib import Path
import sys
import tempfile
import unittest

from demo_state import load_state, save_state

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('service', ROOT/'run-demo-service.py')
service = importlib.util.module_from_spec(spec)
spec.loader.exec_module(service)


class RecoveryTests(unittest.TestCase):
    def run_child(self, body):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory)/'state.json'
            result = service.supervise([sys.executable, '-c', body], os.environ, path, retry_delay=0)
            return result, load_state(path)

    def test_fault_recovers_at_saved_frequency_and_clean_stop_stays_stopped(self):
        result, state = self.run_child('''import os, json
from pathlib import Path
p = Path(os.environ['RTL8922_DEMO_STATE']); s = json.loads(p.read_text())
if s['restarts'] == 0:
    s.update(receiver_failed=True, frequency=6675000000, retunes=3)
    p.write_text(json.dumps(s))
    raise SystemExit(1)
assert s['frequency'] == 6675000000 and s['retunes'] == 3
assert s['restarts'] == 1 and not s['receiver_failed']
''')
        self.assertEqual(result, 0)
        self.assertEqual(state['restarts'], 1)
        self.assertEqual(state['frequency'], 6675000000)

    def test_setup_error_does_not_retry_or_touch_other_receiver(self):
        result, state = self.run_child('raise SystemExit(2)')
        self.assertEqual(result, 2)
        self.assertEqual(state['restarts'], 0)

    def test_manual_stop_does_not_retry(self):
        result, state = self.run_child('pass')
        self.assertEqual(result, 0)
        self.assertEqual(state['restarts'], 0)
