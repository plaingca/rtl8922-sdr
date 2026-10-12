"""Timed Pluto reference tone with saved-state restoration."""
import math
import os
import threading
import time

import numpy as np


class PlutoTone:
    def __init__(self):
        self.lock = threading.RLock()
        self.device = None
        self.original = None
        self.lo = None
        self.enabled = False
        self.follow = True
        self.center = None
        self.offset = 500000.
        self.actual_offset = self.offset
        self.gain = -10.
        self.deadline = 0
        self.error = ''
        self.restored = None
        self.closed = False

    def snapshot(self):
        with self.lock:
            return dict(enabled=self.enabled, follow=self.follow, center_hz=self.center,
                        rf_hz=self.center+self.actual_offset if self.center is not None else None,
                        offset_hz=self.actual_offset, requested_offset_hz=self.offset, gain_db=self.gain,
                        remaining_seconds=max(0, round(self.deadline-time.monotonic(), 1)) if self.enabled else 0,
                        error=self.error, restored=self.restored, min_hz=70000000, max_hz=6000000000)

    def _open(self):
        if self.device is not None:
            return
        import adi
        s = adi.Pluto(os.environ.get('RTL8922_PLUTO_URI', 'ip:192.168.2.1'))
        s._ctx.set_timeout(2000)
        lo = s._ctrl.find_channel('altvoltage1', True)
        if lo.attrs['powerdown'].value != '1':
            raise ValueError('Pluto is already transmitting; stop its existing transmitter first')
        keys = ['sample_rate', 'rx_lo', 'tx_lo', 'rx_rf_bandwidth', 'tx_rf_bandwidth', 'tx_hardwaregain_chan0']
        self.original = {key:getattr(s, key) for key in keys}
        self.original_pd = lo.attrs['powerdown'].value
        self.device, self.lo = s, lo

    def _validate_center(self, center):
        if not math.isfinite(center) or not 70e6 <= center <= 6e9 or not 70e6 <= center+self.offset <= 6e9:
            raise ValueError('Pluto center and emitted tone must both be between 70 and 6000 MHz')

    def _configure(self, center):
        self._validate_center(center)
        s = self.device
        s.tx_hardwaregain_chan0 = -89.75
        s.tx_destroy_buffer()
        self.lo.attrs['powerdown'].value = '1'
        s.sample_rate = 4000000
        s.tx_rf_bandwidth = 3000000
        s.tx_lo = round(center)
        s.tx_cyclic_buffer = True
        n = np.arange(16384)
        # Use a coherent cyclic tone, report its actual quantized offset.
        self.actual_offset = round(self.offset*len(n)/int(s.sample_rate))*int(s.sample_rate)/len(n)
        wave = (24576*np.exp(2j*np.pi*self.actual_offset/int(s.sample_rate)*n)).astype(np.complex64)
        s.tx_hardwaregain_chan0 = self.gain
        self.lo.attrs['powerdown'].value = '0'
        s.tx(wave)
        self.center = int(s.tx_lo)
        self.enabled = True
        self.restored = False

    def command(self, cmd, receiver_hz):
        with self.lock:
            if self.closed:
                raise ValueError('Demo is stopping')
            if cmd.get('enabled') is False:
                self.disable()
                return self.snapshot()
            if cmd.get('enabled') is not True:
                raise ValueError('enabled must be true or false')
            follow = cmd.get('follow', True)
            if not isinstance(follow, bool):
                raise ValueError('follow must be true or false')
            offset = float(cmd.get('offset_khz', 500))*1000
            gain = float(cmd.get('gain_db', -10))
            seconds = float(cmd.get('seconds', 60))
            center = receiver_hz if follow else float(cmd['center_mhz'])*1e6
            if not math.isfinite(offset) or not -1e6 <= offset <= 1e6:
                raise ValueError('Tone offset must be between -1000 and +1000 kHz')
            if not math.isfinite(gain) or not -89.75 <= gain <= 0:
                raise ValueError('TX gain must be between -89.75 and 0 dB')
            if not math.isfinite(seconds) or not 5 <= seconds <= 300:
                raise ValueError('Tone duration must be between 5 and 300 seconds')
            if center is None:
                raise ValueError('Wait for live receiver samples before following its frequency')
            self.offset, self.gain, self.follow = offset, gain, follow
            self.error = ''
            try:
                self._validate_center(center)
                self._open()
                self._configure(center)
                self.deadline = time.monotonic()+seconds
            except Exception as exc:
                self.disable(str(exc))
                raise ValueError(str(exc)) from exc
            return self.snapshot()

    def close(self):
        with self.lock:
            self.closed = True
            self.disable()

    def disable(self, reason=''):
        with self.lock:
            self.enabled = False
            self.deadline = 0
            self.error = reason
            if self.device is None:
                return
            s, lo = self.device, self.lo
            failures = []
            for operation in (lambda:setattr(s, 'tx_hardwaregain_chan0', -89.75),
                              s.tx_destroy_buffer,
                              lambda:setattr(lo.attrs['powerdown'], 'value', '1')):
                try:
                    operation()
                except Exception as exc:
                    failures.append(str(exc))
            for key, value in self.original.items():
                try:
                    setattr(s, key, value)
                except Exception as exc:
                    failures.append(str(exc))
            try:
                lo.attrs['powerdown'].value = self.original_pd
                self.restored = all(getattr(s, key) == value for key,value in self.original.items()) and lo.attrs['powerdown'].value == self.original_pd
            except Exception as exc:
                failures.append(str(exc)); self.restored = False
            if failures:
                self.error = (reason+'; ' if reason else '')+'Pluto cleanup: '+'; '.join(failures)
                print(self.error, flush=True)
            self.device, self.lo, self.original = None, None, None

    def tick(self, receiver_hz, receiver_live=True):
        with self.lock:
            if not self.enabled:
                return
            if time.monotonic() >= self.deadline:
                self.disable()
            elif not receiver_live:
                self.disable('Receiver stopped or stale; Pluto tone switched off')
            elif self.follow and receiver_hz is not None and abs(receiver_hz-self.center) > 10:
                try:
                    self._configure(receiver_hz)
                except Exception as exc:
                    self.disable(str(exc))
