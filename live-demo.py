"""Loopback-only live spectrum from the SoapyRTL8922 hardware receiver."""
import json
import os
import signal
import subprocess
import threading
import time
from collections import deque
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path

import numpy as np
from pluto_tone import PlutoTone
from demo_http import allowed_host, allowed_origin

BASE = Path(__file__).resolve().parent
state_lock = threading.Lock()
latest = {'live': False, 'message': 'Starting hardware receiver'}
events = deque(maxlen=12)
command_lock = threading.Lock()
stopping = threading.Event()
tone = PlutoTone()
proc = subprocess.Popen([os.environ.get('RTL8922_BRIDGE', str(BASE / 'build' / 'live-bridge'))], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
window = np.hanning(262144)


def read_exact(n):
    parts = bytearray()
    while len(parts) < n:
        block = proc.stdout.read(n - len(parts))
        if not block:
            raise EOFError('Hardware receiver ended')
        parts.extend(block)
    return parts


def receive():
    global latest
    try:
        while not stopping.is_set():
            line = proc.stdout.readline()
            if not line:
                raise EOFError('Hardware receiver ended')
            meta = json.loads(line)
            if meta['bytes'] != len(window)*8:
                raise ValueError('Invalid I/Q frame length')
            x = np.frombuffer(read_exact(meta['bytes']), dtype='<f4').reshape(-1, 2)
            z = x[:, 0] + 1j*x[:, 1]
            p = np.abs(np.fft.fftshift(np.fft.fft(z*window)))**2 / window.sum()**2
            # Overview bins preserve peaks; zoom retains the native FFT resolution.
            db = 10*np.log10(np.maximum(p.reshape(2048, -1).max(axis=1), 1e-14))
            tx = tone.snapshot()
            zoom_center = (tx['rf_hz']-meta['frequency']) if tx['rf_hz'] is not None else 750000
            zoom_center = max(-meta['rate']/2+750000, min(meta['rate']/2-750000, zoom_center))
            frequencies = np.fft.fftshift(np.fft.fftfreq(len(window), 1/meta['rate']))
            selection = np.flatnonzero(np.abs(frequencies-zoom_center) <= 750000)
            selection = selection[:len(selection)//4*4]
            zoom = 10*np.log10(np.maximum(p[selection].reshape(-1, 4).max(axis=1), 1e-14))
            meta.update(live=True, received_at=time.time(), fft=db.round(2).tolist(),
                        zoom_fft=zoom.round(2).tolist(), zoom_start_hz=float(frequencies[selection[0]]),
                        zoom_bin_hz=4*meta['rate']/len(window), fft_size=len(window),
                        rms=float(np.sqrt(np.mean(np.abs(z)**2))),
                        peak_dbfs=float(db.max()), peak_hz=float((np.argmax(p)-len(window)//2)*meta['rate']/len(window)),
                        message='Captured I/Q · 40 MS/s · 262144-point Hann FFT' +
                        (f" · {meta['recoveries']} receiver restart(s) after capture gaps" if meta.get('recoveries') else ''))
            with state_lock:
                latest = meta
    except Exception as exc:
        with state_lock:
            latest = {**latest, 'live': False, 'message': str(exc)}


def logs():
    for line in iter(proc.stderr.readline, b''):
        msg = line.decode(errors='replace').strip()
        with state_lock:
            events.append(msg)
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

    def do_GET(self):
        if not allowed_host(self.headers.get('Host')):
            return self.reply(403, b'{"error":"Open this demo through a localhost or loopback address"}')
        if self.path == '/':
            return self.reply(200, (BASE / 'live-demo.html').read_bytes(), 'text/html; charset=utf-8')
        if self.path == '/api/frame':
            with state_lock:
                data = {**latest, 'events': list(events)}
            data['age_ms'] = round(1000*(time.time()-data.get('received_at', time.time())))
            data['live'] = data['live'] and data['age_ms'] < 2000 and proc.poll() is None
            data['tone'] = tone.snapshot()
            return self.reply(200, json.dumps(data).encode())
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
                if not np.isfinite(hz) or not 2422e6 <= hz <= 2462e6:
                    raise ValueError('40 MS/s mode supports receiver centers from 2422 to 2462 MHz')
                if proc.poll() is not None:
                    raise ValueError('Receiver stopped; restart the demo')
                with command_lock:
                    proc.stdin.write((str(hz)+'\n').encode()); proc.stdin.flush()
                return self.reply(202, b'{"queued":true}')
            if self.path == '/api/stop':
                self.reply(200, b'{"stopping":true}')
                stopping.set()
                return
            self.reply(404, b'{}')
        except (ValueError, KeyError, BrokenPipeError) as exc:
            self.reply(400, json.dumps({'error': str(exc)}).encode())


server = ThreadingHTTPServer(('127.0.0.1', 8732), Handler)
server.daemon_threads = True
server.timeout = .2
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
        proc.kill(); proc.wait()
    server.server_close()
