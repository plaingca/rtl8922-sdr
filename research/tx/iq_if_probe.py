"""Programmable complex IF envelope through the measured triangular IQC matrix.

With DDS I=cos(wt), Q=sin(wt), the measured matrix gives
z=A*cos(wt)+j*(sin(wt)+B*cos(wt)). Thus z=m*exp(jwt)+(m-1)*exp(-jwt)
for A=2*Re(m)-1, B=2*Im(m). The lower spectral image is unavoidable here.
This hypothesis must pass independent RF held-out prediction before use.
"""

import json
from pathlib import Path
import random


def coefficients(i, q):
    if any(type(c) is not int or not -512 <= c <= 512 for c in (i, q)):
        raise ValueError('IF envelope components must be signed integer codes in [-512,512]')
    return 2*i - 1024, 2*q


def payload(filename=None):
    if filename:
        values = json.loads(Path(filename).read_text())
    else:
        rng = random.Random(8922)
        values = [[rng.randrange(-480, 481), rng.randrange(-480, 481)] for _ in range(16)]
    if not isinstance(values, list) or not 1 <= len(values) <= 16:
        raise ValueError('Expected 1..16 IF envelope pairs')
    for pair in values:
        if not isinstance(pair, (list, tuple)) or len(pair) != 2:
            raise ValueError('Expected I/Q pairs')
        coefficients(*pair)
    return [tuple(v) for v in values]


def schedule(values):
    """Fixed training, then at most four unknown levels between known references."""
    values = list(values)
    if not 1 <= len(values) <= 16:
        raise ValueError('Expected 1..16 IF envelope pairs')
    for pair in values:
        coefficients(*pair)
    states = [(0, 0)]
    for _ in range(2):
        for pair in ((-512, 0), (512, 0), (0, -512), (0, 512)):
            states.extend((pair, (0, 0)))
    training = list(range(len(states)))
    references = [3, 11]
    heldout = []
    for start in range(0, len(values), 4):
        references.append(len(states))
        states.append((512, 0))
        for pair in values[start:start+4]:
            heldout.append(len(states))
            states.append(tuple(pair))
    references.append(len(states))
    states.append((512, 0))
    return {'states': states, 'training_indices': training,
            'reference_indices': references, 'payload_indices': heldout,
            'dwell_seconds': .04, 'initial_pilot_seconds': .2}
