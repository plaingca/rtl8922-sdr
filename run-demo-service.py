#!/usr/bin/env python3
"""Keep the demo running after capture faults, with complete driver teardown."""
import os
from pathlib import Path
import signal
import subprocess
import sys
import tempfile
import threading

from demo_state import load_state, save_state


def supervise(command, env, state_path, retry_delay=2):
    stopping = threading.Event()
    child = None

    def stop(*_):
        stopping.set()
        if child and child.poll() is None:
            child.terminate()

    saved_handlers = {s: signal.signal(s, stop) for s in (signal.SIGTERM, signal.SIGINT)}
    try:
        while not stopping.is_set():
            state = load_state(state_path)
            state['receiver_failed'] = False
            save_state(state, state_path)
            child = subprocess.Popen(command, env=dict(env, RTL8922_DEMO_STATE=str(state_path)))
            result = child.wait()  # run-receiver.sh finishes teardown before returning.
            if stopping.is_set() or result == 0:
                return 0
            state = load_state(state_path)
            if not state.get('receiver_failed'):
                return result  # Setup failures are not overflow recovery.
            state['restarts'] += 1
            save_state(state, state_path)
            print(f"CAPTURE_RECOVERY {state['restarts']}: driver released; retrying in {retry_delay:g}s", flush=True)
            stopping.wait(retry_delay)
        return 0
    finally:
        if child and child.poll() is None:
            child.terminate()
            child.wait(timeout=30)
        for sig, handler in saved_handlers.items():
            signal.signal(sig, handler)


def main():
    root = Path(__file__).resolve().parent
    env = dict(os.environ)
    # Avoid numerical-library thread pools during cold Pluto imports and TX setup.
    for key in ('OPENBLAS_NUM_THREADS', 'OMP_NUM_THREADS', 'MKL_NUM_THREADS', 'NUMEXPR_NUM_THREADS'):
        env[key] = '1'
    env['RTL8922_TRACE'] = '1'
    with tempfile.TemporaryDirectory(prefix='rtl8922-demo-') as directory:
        state_path = Path(directory)/'state.json'
        command = ['/bin/bash', str(root/'run-receiver.sh'), sys.executable, str(root/'run-live-demo.py')]
        return supervise(command, env, state_path)


if __name__ == '__main__':
    raise SystemExit(main())
