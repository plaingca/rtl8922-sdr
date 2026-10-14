"""Exercise HTTP defaults and shutdown with a synthetic bridge and no radio imports."""
import json
import os
from pathlib import Path
import socket
import subprocess
import sys
import tempfile
import time
import unittest
from urllib.error import HTTPError, URLError
from urllib.request import Request, urlopen

ROOT = Path(__file__).resolve().parents[1]


class DemoBackendTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        directory = Path(self.temp.name)
        (directory / 'pluto_tone.py').write_text('''class PlutoTone:
    def snapshot(self): return {'rf_hz': None, 'enabled': False}
    def tick(self, *args): pass
    def disable(self, *args): pass
    def close(self): print('MOCK_TX_CLOSED', flush=True)
''')
        bridge = directory / 'bridge'
        bridge.write_text(f'#!{sys.executable}\n'+'''import json, os, sys, time, threading
if os.environ.get('FAKE_STARTED'): open(os.environ['FAKE_STARTED'], 'w').close()
assert os.environ['RTL8922_CAPTURE_RATE'] == '160000000'
assert 'capture_mode=paxi' in os.environ['RTL8922_DEVICE_ARGS']
frequency = float(sys.argv[1]) if len(sys.argv)>1 else 5250000000
generation = 0
def controls():
    global frequency, generation
    for line in sys.stdin:
        if line.startswith('zoom '): continue
        if line.strip() == 'stop': return
        frequency = float(line)
        generation += 1
threading.Thread(target=controls, daemon=True).start()
for i in range(10000):
    meta = dict(kind='spectrum', bytes=(2048+614)*4, fft_size=262144, fft_bins=2048,
                zoom_bins=614, zoom_start_hz=0, zoom_bin_hz=2441.40625, rms=0, peak_dbfs=-140,
                peak_hz=0, target_fps=240, fft_fps=240, rate=160000000, frequency=frequency,
                frame=i, samples=(i+1)*262144, errors=0, recoveries=0, generation=generation, retunes=generation)
    sys.stdout.buffer.write(json.dumps(meta).encode()+b'\\n'+bytes(meta['bytes']))
    sys.stdout.buffer.flush()
    if os.environ.get('FAKE_END'): break
    time.sleep(1/240)
''')
        bridge.chmod(0o755)
        with socket.socket() as sock:
            sock.bind(('127.0.0.1', 0))
            self.port = sock.getsockname()[1]
        self.base = f'http://127.0.0.1:{self.port}'
        self.env = dict(os.environ, RTL8922_BRIDGE=str(bridge), RTL8922_DEMO_PORT=str(self.port),
                        RTL8922_CAPTURE_MODE='paxi160')
        self.env.pop('RTL8922_DEVICE_ARGS', None)
        self.command = [sys.executable, '-c',
                        f'import sys,runpy; sys.path[:0]=[{str(directory)!r},{str(ROOT)!r}]; '
                        f'runpy.run_path({str(ROOT / "live-demo.py")!r},run_name="__main__")']
        self.proc = None
        self.addCleanup(self.shutdown)

    def shutdown(self):
        if self.proc and self.proc.poll() is None:
            self.proc.terminate()
            self.proc.communicate(timeout=8)

    def request(self, path, payload=None, origin=None):
        data = None if payload is None else json.dumps(payload).encode()
        req = Request(self.base+path, data=data, headers={'Origin': origin or self.base,
                                                       'Content-Type': 'application/json'})
        with urlopen(req, timeout=2) as response:
            return json.load(response)

    def start(self):
        self.proc = subprocess.Popen(self.command, env=self.env, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        deadline = time.monotonic()+8
        while time.monotonic() < deadline:
            try:
                frame = self.request('/api/frame')
                if frame['live']:
                    return frame
            except (URLError, TimeoutError):
                pass
            if self.proc.poll() is not None:
                self.fail(self.proc.communicate())
            time.sleep(.05)
        self.fail('Demo did not publish a live synthetic frame')

    def test_continuous_defaults_http_tuning_and_shutdown(self):
        frame = self.start()
        config = self.request('/api/config')
        self.assertEqual(config['target_fps'], 240)
        self.assertEqual(config['rate'], 160000000)
        self.assertEqual(config['frequency'], 5250000000)
        self.assertTrue(frame['continuous'])
        self.assertTrue(frame['can_retune'])
        self.assertEqual(len(frame['fft']), 2048)
        self.assertIn('160 MS/s', frame['message'])
        with self.assertRaises(HTTPError) as rejected:
            self.request('/api/tune', {'mhz': 5301})
        self.assertEqual(rejected.exception.code, 400)
        self.assertEqual(self.request('/api/tune', {'mhz': 5250}), {'unchanged': True})
        with self.assertRaises(HTTPError) as rejected:
            self.request('/api/stop', {}, origin='http://evil.example')
        self.assertEqual(rejected.exception.code, 403)
        self.request('/api/stop', {})
        out, err = self.proc.communicate(timeout=8)
        self.assertEqual(self.proc.returncode, 0, err)
        self.assertIn(b'MOCK_TX_CLOSED', out)

    def test_bridge_end_shuts_down_and_closes_tx(self):
        self.env['FAKE_END'] = '1'
        self.proc = subprocess.Popen(self.command, env=self.env, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        out, err = self.proc.communicate(timeout=8)
        self.assertEqual(self.proc.returncode, 1, err)
        self.assertIn(b'RECEIVER_STOPPED Hardware receiver ended', out)
        self.assertIn(b'MOCK_TX_CLOSED', out)

    def test_recovered_session_preserves_frequency_and_gap_counts(self):
        state = Path(self.temp.name)/'recovery.json'
        state.write_text(json.dumps(dict(restarts=2, retunes=3, frequency=5350000000)))
        self.env['RTL8922_DEMO_STATE'] = str(state)
        frame = self.start()
        self.assertEqual(frame['frequency'], 5350000000)
        self.assertEqual(frame['capture_restarts'], 2)
        self.assertEqual((frame['errors'], frame['recoveries']), (2, 2))
        self.assertEqual(frame['retunes'], 3)
        self.assertEqual(frame['generation'], 2000000)
        self.assertEqual(self.request('/api/config')['frequency'], 5350000000)

    def test_pending_tune_is_applied_after_recovery(self):
        state = Path(self.temp.name)/'pending-recovery.json'
        state.write_text(json.dumps(dict(restarts=1, retunes=3, frequency=5250000000,
                                         requested_frequency=5350000000)))
        self.env['RTL8922_DEMO_STATE'] = str(state)
        frame = self.start()
        self.assertEqual(frame['frequency'], 5350000000)
        self.assertFalse(frame['tune_pending'])
        self.assertEqual(frame['retunes'], 4)
        saved = json.loads(state.read_text())
        self.assertEqual(saved['frequency'], 5350000000)
        self.assertNotIn('requested_frequency', saved)

    def test_busy_http_port_does_not_start_receiver(self):
        marker = Path(self.temp.name) / 'receiver-started'
        self.env['FAKE_STARTED'] = str(marker)
        with socket.socket() as sock:
            sock.bind(('127.0.0.1', self.port))
            sock.listen()
            self.proc = subprocess.Popen(self.command, env=self.env, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            _, err = self.proc.communicate(timeout=8)
        self.assertNotEqual(self.proc.returncode, 0)
        self.assertIn(b'Address already in use', err)
        self.assertFalse(marker.exists())

    def test_stream_delivers_fresh_frames_and_rejects_remote_host(self):
        self.start()
        with urlopen(self.base+'/api/stream', timeout=3) as response:
            self.assertEqual(response.headers['Content-Type'], 'text/event-stream')
            frames = []
            while len(frames) < 4:
                line = response.readline()
                if line.startswith(b'data:'):
                    frames.append(json.loads(line[5:]))
        self.assertTrue(all(b['frame'] > a['frame'] for a, b in zip(frames, frames[1:])))
        self.assertTrue(all(f['target_fps'] == 240 for f in frames))
        with self.assertRaises(HTTPError) as rejected:
            urlopen(Request(self.base+'/api/stream', headers={'Host': 'evil.example'}), timeout=2)
        self.assertEqual(rejected.exception.code, 403)

    def test_retune_keeps_server_and_receiver_process_running(self):
        first = self.start()
        pid = self.proc.pid
        self.request('/api/tune', {'mhz': 2442})
        deadline = time.monotonic()+3
        while time.monotonic() < deadline:
            frame = self.request('/api/frame')
            if frame['frequency'] == 2442000000 and not frame['tune_pending']:
                break
            time.sleep(.01)
        else:
            self.fail('Retune did not complete')
        self.assertEqual(self.proc.pid, pid)
        self.assertEqual(frame['generation'], 1)
        self.assertEqual(frame['retunes'], 1)
        self.assertEqual(frame['errors'], 0)
        self.assertGreater(frame['samples'], first['samples'])
        self.assertIn('capture gap marked', frame['tune_message'])
