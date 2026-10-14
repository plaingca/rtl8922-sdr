"""Loopback-only live spectrum from the SoapyRTL8922 hardware receiver."""
import json
import os
import signal
import subprocess
import threading
import time
import uuid
from collections import deque
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path

import numpy as np
from pluto_tone import PlutoTone
from demo_http import allowed_host, allowed_origin
from receiver_modes import receiver_mode
from demo_state import load_state, save_state

BASE = Path(__file__).resolve().parent
state_lock = threading.Lock()
latest = {'live': False, 'message': 'Starting hardware receiver'}
events = deque(maxlen=12)
command_lock = threading.Lock()
stopping = threading.Event()
tone = PlutoTone()
mode = receiver_mode()
recovery_state = load_state()
session = uuid.uuid4().hex
receiver_failed = False
startup_frequency = recovery_state.get('requested_frequency', recovery_state.get('frequency', mode.frequency))
mode.validate_frequency(startup_frequency)
bridge_env = dict(os.environ)
bridge_env.setdefault("RTL8922_DEVICE_ARGS", mode.device_args)
bridge_env["RTL8922_CAPTURE_RATE"] = str(mode.rate)
frame_ready = threading.Condition(state_lock)
stream_frames = deque(maxlen=480)  # Two seconds at 240 fps; bounded for slow clients.
stream_clients = threading.BoundedSemaphore(4)
stream_serial = 0
tune_status = {'pending': 'requested_frequency' in recovery_state, 'message': '', 'frequency': startup_frequency}


def read_exact(n):
    parts = bytearray()
    while len(parts) < n:
        block = proc.stdout.read(n - len(parts))
        if not block:
            raise EOFError('Hardware receiver ended')
        parts.extend(block)
    return parts


def receive():
    global latest, stream_serial, receiver_failed
    processed = 0
    measured_at = time.monotonic()
    measured_fps = 0.
    zoom_offset = 750000.
    try:
        while not stopping.is_set():
            line = proc.stdout.readline()
            if not line:
                raise EOFError('Hardware receiver ended')
            meta = json.loads(line)
            if (meta.get('kind') != 'spectrum' or meta['fft_size'] != 262144 or
                    meta['fft_bins'] != 2048 or not 1 <= meta['zoom_bins'] <= 65536 or
                    meta['bytes'] != (meta['fft_bins']+meta['zoom_bins'])*4):
                raise ValueError('Invalid spectrum frame length')
            bins = np.frombuffer(read_exact(meta['bytes']), dtype='<f4').round(2).tolist()
            tx = tone.snapshot()
            new_offset = tx['rf_hz']-meta['frequency'] if tx['rf_hz'] is not None else 750000.
            if new_offset != zoom_offset:
                with command_lock:
                    proc.stdin.write(f'zoom {new_offset}\n'.encode())
                    proc.stdin.flush()
                zoom_offset = new_offset
            processed += 1
            now = time.monotonic()
            if now-measured_at >= 1:
                measured_fps = processed/(now-measured_at)
                processed = 0
                measured_at = now
            meta.update(live=True, received_at=time.time(), fft=bins[:2048], zoom_fft=bins[2048:],
                        can_retune=mode.can_retune, continuous=True, backend_fps=measured_fps,
                        message=f'Captured I/Q · {meta["rate"]/1e6:g} MS/s · continuous · 262144-point Hann FFT')
            with frame_ready:
                if tune_status['pending'] and meta['frequency'] == tune_status['frequency']:
                    tune_status.update(pending=False, message=f"Tuned to {meta['frequency']/1e6:g} MHz · capture gap marked")
                    recovery_state['frequency'] = meta['frequency']
                    recovery_state.pop('requested_frequency', None)
                    recovery_state['retunes'] += 1
                    save_state(recovery_state)
                meta.update(session=session, capture_restarts=recovery_state['restarts'])
                meta['errors'] += recovery_state['restarts']
                meta['recoveries'] += recovery_state['restarts']
                meta['retunes'] = recovery_state['retunes']
                meta['generation'] += recovery_state['restarts'] * 1_000_000
                meta.update(tune_pending=tune_status['pending'], tune_message=tune_status['message'])
                latest = meta
                stream_serial += 1
                encoded = json.dumps({**meta, 'tone': tx, 'events': list(events)}, separators=(',', ':')).encode()
                stream_frames.append((stream_serial, encoded))
                frame_ready.notify_all()
    except Exception as exc:
        with frame_ready:
            if not stopping.is_set():
                receiver_failed = True
                recovery_state['receiver_failed'] = bool(latest.get('live')) or bool(recovery_state['restarts'])
                save_state(recovery_state)
            latest = {**latest, 'live': False, 'message': str(exc)}
            stopping.set()
            frame_ready.notify_all()
        print(f'RECEIVER_STOPPED {exc}', flush=True)


def logs():
    for line in iter(proc.stderr.readline, b''):
        msg = line.decode(errors='replace').strip()
        with state_lock:
            events.append(msg)
            if msg.startswith('TUNE_ERROR'):
                tune_status.update(pending=False, message=msg.removeprefix('TUNE_ERROR '))
                recovery_state.pop('requested_frequency', None)
                save_state(recovery_state)
        print(msg, flush=True)


def tone_watchdog():
    while not stopping.wait(.025):
        with state_lock:
            hz = latest.get('frequency')
            live = latest.get('live', False) and time.time()-latest.get('received_at', 0) < 2
        tone.tick(hz, live and proc.poll() is None)


class Handler(BaseHTTPRequestHandler):
    def log_message(self, *_):
        pass

    def reply(self, code, data, kind='application/json'):
        self.send_response(code)
        self.send_header('Content-Type', kind)
        self.send_header('Cache-Control', 'no-store')
        self.send_header('X-Content-Type-Options', 'nosniff')
        self.end_headers()
        self.wfile.write(data)

    def stream(self):
        if not stream_clients.acquire(blocking=False):
            return self.reply(429, b'{"error":"Too many spectrum viewers"}')
        try:
            self.connection.settimeout(3)
            self.send_response(200)
            self.send_header('Content-Type', 'text/event-stream')
            self.send_header('Cache-Control', 'no-store')
            self.send_header('X-Accel-Buffering', 'no')
            self.end_headers()
            with frame_ready:
                serial = stream_serial-1
            while not stopping.is_set():
                with frame_ready:
                    frame_ready.wait_for(lambda: stream_serial > serial or stopping.is_set(), timeout=1)
                    batch = [(n, data) for n, data in stream_frames if n > serial]
                if not batch:
                    self.wfile.write(b': keepalive\n\n')
                for serial, data in batch:
                    self.wfile.write(b'data:'+data+b'\n\n')
                self.wfile.flush()
        except (BrokenPipeError, ConnectionError, TimeoutError):
            pass
        finally:
            stream_clients.release()

    def do_GET(self):
        if not allowed_host(self.headers.get('Host')):
            return self.reply(403, b'{"error":"Open this demo through a localhost or loopback address"}')
        if self.path == '/':
            return self.reply(200, (BASE / 'live-demo.html').read_bytes(), 'text/html; charset=utf-8')
        if self.path == '/api/stream':
            return self.stream()
        if self.path == '/api/frame':
            with state_lock:
                data = {**latest, 'events': list(events)}
            data['age_ms'] = round(1000*(time.time()-data.get('received_at', time.time())))
            data['live'] = data['live'] and data['age_ms'] < 2000 and proc.poll() is None
            data['tone'] = tone.snapshot()
            return self.reply(200, json.dumps(data).encode())
        if self.path == '/api/config':
            return self.reply(200, json.dumps({**mode.public(), 'frequency': startup_frequency, 'target_fps': 240, 'fft_size': 262144}).encode())
        if self.path == '/api/channels':
            return self.reply(200, (BASE / 'live-channels.json').read_bytes())
        self.reply(404, b'{}')

    def do_POST(self):
        if not allowed_host(self.headers.get('Host')):
            return self.reply(403, b'{"error":"Open this demo through a localhost or loopback address"}')
        # Reject cross-origin browser commands; this controls real hardware.
        origin = self.headers.get('Origin')
        if not allowed_origin(self.headers.get('Host'), origin):
            return self.reply(403, b'{"error":"Origin rejected"}')
        try:
            length = int(self.headers.get('Content-Length', '0'))
            if length < 1 or length > 1024:
                raise ValueError('Invalid command length')
            cmd = json.loads(self.rfile.read(length))
            if self.path == '/api/tone':
                if stopping.is_set():
                    raise ValueError('Demo is stopping')
                with state_lock:
                    hz = latest.get('frequency')
                    live = latest.get('live', False) and time.time()-latest.get('received_at', 0) < 2
                if cmd.get('enabled') is True and (not live or proc.poll() is not None):
                    raise ValueError('Wait for live receiver samples before starting Pluto')
                return self.reply(200, json.dumps(tone.command(cmd, hz)).encode())
            if self.path == '/api/tune':
                hz = float(cmd['mhz'])*1e6
                mode.validate_frequency(hz)
                if proc.poll() is not None:
                    raise ValueError('Receiver stopped; restart the demo')
                with state_lock:
                    unchanged = latest.get('frequency') == hz
                if unchanged:
                    return self.reply(200, b'{"unchanged":true}')
                tone.disable('Receiver retuning')
                with state_lock:
                    tune_status.update(pending=True, message=f'Retuning to {hz/1e6:g} MHz…', frequency=hz)
                    recovery_state['requested_frequency'] = hz
                    save_state(recovery_state)
                with command_lock:
                    proc.stdin.write((str(hz)+'\n').encode())
                    proc.stdin.flush()
                return self.reply(202, b'{"queued":true}')
            if self.path == '/api/stop':
                self.reply(200, b'{"stopping":true}')
                stopping.set()
                return
            self.reply(404, b'{}')
        except (ValueError, KeyError, BrokenPipeError) as exc:
            self.reply(400, json.dumps({'error': str(exc)}).encode())


server = ThreadingHTTPServer(('127.0.0.1', int(os.environ.get('RTL8922_DEMO_PORT', '8732'))), Handler)
server.daemon_threads = True
server.timeout = .2
if hasattr(tone, 'prepare'):
    tone.prepare()  # Import/code generation only, before the real-time receiver starts.
proc = subprocess.Popen([os.environ.get('RTL8922_BRIDGE', str(BASE / 'build' / 'live-bridge')), str(startup_frequency)], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, env=bridge_env)
for target in (receive, logs, tone_watchdog):
    threading.Thread(target=target, daemon=True).start()
for sig in (signal.SIGTERM, signal.SIGINT):
    signal.signal(sig, lambda *_: stopping.set())
try:
    while not stopping.is_set():
        server.handle_request()
finally:
    tone.close()
    proc.terminate()
    try:
        proc.wait(timeout=5)
    except subprocess.TimeoutExpired:
        proc.kill()
        proc.wait()
    server.server_close()
raise SystemExit(1 if receiver_failed else 0)
