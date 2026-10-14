"""Small per-launch recovery state; no hardware access."""
import json
import os
from pathlib import Path


def load_state(path=None):
    path = path or os.environ.get('RTL8922_DEMO_STATE')
    if path and Path(path).exists():
        return json.loads(Path(path).read_text())
    return {'restarts': 0, 'retunes': 0, 'receiver_failed': False}


def save_state(state, path=None):
    path = path or os.environ.get('RTL8922_DEMO_STATE')
    if path:
        target = Path(path)
        temporary = target.with_suffix('.tmp')
        temporary.write_text(json.dumps(state)+'\n')
        temporary.replace(target)
