"""Receiver defaults shared by the launcher and browser backend; no hardware I/O."""
from dataclasses import asdict, dataclass
import math
import os


@dataclass(frozen=True)
class ReceiverMode:
    name: str
    rate: int
    frequency: int
    minimum_mhz: int
    maximum_mhz: int
    can_retune: bool
    device_args: str

    def public(self):
        return {k: v for k, v in asdict(self).items() if k != 'device_args'}

    def channels(self, enabled):
        if self.name == 'paxi160':
            centers = [c for c in enabled if 2412 <= c <= 2484]
            if 5180 in enabled:
                centers += list(range(5005, 5951, 5))
            if any(c >= 5955 for c in enabled):
                centers += list(range(5955, 7116, 5))
            return sorted(set(centers))
        return sorted({c for c in enabled if 2422 <= c <= 2462 and c-10 in enabled and c+10 in enabled})

    def validate_frequency(self, hz):
        if self.name == 'paxi160':
            mhz = hz/1e6
            if not math.isfinite(mhz) or not (
                    (2412 <= mhz <= 2472 and (mhz-2412) % 5 == 0) or mhz == 2484 or
                    (5005 <= mhz <= 7115 and mhz % 5 == 0)):
                raise ValueError('Choose a 2.4 GHz channel center or a 5 MHz center from 5005 to 7115 MHz')
        if not self.minimum_mhz*1e6 <= hz <= self.maximum_mhz*1e6:
            raise ValueError(f'{self.rate/1e6:g} MS/s supports {self.minimum_mhz}–{self.maximum_mhz} MHz centers')


MODES = {
    'paxi160': ReceiverMode('paxi160', 160000000, 5250000000, 2412, 7115, True,
                            'driver=rtl8922,capture_mode=paxi,producer_scheduler=deadline'),
    'legacy40': ReceiverMode('legacy40', 40000000, 2422000000, 2422, 2462, True,
                             'driver=rtl8922,capture_mode=legacy,experimental40=1,producer_scheduler=deadline'),
}


def receiver_mode(name=None):
    name = name if name is not None else os.environ.get('RTL8922_CAPTURE_MODE', 'paxi160')
    if name not in MODES:
        raise ValueError('RTL8922_CAPTURE_MODE must be paxi160 or legacy40')
    return MODES[name]
