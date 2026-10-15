"""Fixed-channel, phase-independent timing measurements for the Pluto code.

No received-I/Q filtering crosses a tested boundary. The known transmitter
reference is convolved with one short, frozen channel estimate. Complex gain
is a nuisance parameter; timing is the shared real displacement of the code.
"""

import numpy as np
from scipy.signal import resample

from continuity_reference import make_reference

RATE = 160000000


def periodic_interp(x, dx, u):
    u = u % len(x)
    n = np.floor(u).astype(np.int64)
    f = u - n
    nxt = (n + 1) % len(x)
    return (
        (2 * f**3 - 3 * f * f + 1) * x[n]
        + (f**3 - 2 * f * f + f) * dx[n]
        + (-2 * f**3 + 3 * f * f) * x[nxt]
        + (f**3 - f * f) * dx[nxt]
    )


def robust_clock(coarse):
    good = coarse[:, 2] > 0.3
    for _ in range(6):
        fit = np.polyfit(coarse[good, 0], coarse[good, 1], 1)
        error = coarse[:, 1] - np.polyval(fit, coarse[:, 0])
        sigma = max(0.4, np.median(abs(error[good] - np.median(error[good]))) * 1.4826)
        good = (abs(error - np.median(error[good])) < 3 * sigma) & (coarse[:, 2] > 0.15)
    return fit


def acquire(z):
    wave, meta = make_reference()
    ref = resample(wave, meta["receiver_period_samples"])
    period = len(ref)
    spectrum = np.fft.fft(ref).conj()
    coarse = []
    for k in range(len(z) // period):
        seg = z[k * period : k * period + 8192]
        cc = np.fft.ifft(np.fft.fft(seg, period) * spectrum)
        ix = int(np.argmax(abs(cc)))
        lag = ix if ix < period // 2 else ix - period
        denominator = np.sqrt(
            np.vdot(seg, seg).real
            * np.sum(abs(ref[(np.arange(len(seg)) - lag) % period]) ** 2)
        )
        coarse.append([k * period, -lag, float(abs(cc[ix]) / denominator)])
    coarse = np.array(coarse)
    fit = robust_clock(coarse)
    return ref, coarse, fit


def channel_model(z, ref, fit):
    period = len(ref)
    folded = np.zeros(period, dtype=complex)
    for k in range(1, 33):
        t = (np.arange(period) + k * period - fit[1]) / (1 + fit[0])
        n = np.floor(t).astype(int)
        f = t - n
        rx = z[n] * (1 - f) + z[n + 1] * f
        gain = np.vdot(ref, rx) / np.vdot(ref, ref)
        folded += rx / gain
    folded /= 32
    x = np.fft.fft(ref)
    mask = abs(np.fft.fftfreq(period, 1 / RATE)) < 12.8e6
    response = np.where(
        mask,
        np.fft.fft(folded)
        * x.conj()
        / (abs(x) ** 2 + np.median(abs(x[mask]) ** 2) * 0.01),
        0,
    )
    impulse = np.fft.ifft(response)
    ix = np.r_[np.arange(129), np.arange(period - 128, period)]
    limited = np.zeros(period, dtype=complex)
    limited[ix] = (
        impulse[ix] * np.hanning(259)[np.r_[np.arange(129, 258), np.arange(1, 129)]]
    )
    model_fft = x * np.fft.fft(limited) * mask
    omega = 2j * np.pi * np.fft.fftfreq(period)
    return [np.fft.ifft(model_fft * omega**k) for k in range(4)]


def basis(model, fit, count):
    out = [np.empty(count, dtype=np.complex64) for _ in range(3)]
    for start in range(0, count, 1048576):
        n = np.arange(start, min(count, start + 1048576))
        u = n + np.polyval(fit, n)
        for k in range(3):
            out[k][start : start + len(n)] = periodic_interp(
                model[k], model[k + 1], u
            ) / (2 if k == 2 else 1)
    return out


def window_sum(values, starts, ends):
    # Float64 accumulation avoids losing precision after millions of samples.
    prefix = np.r_[
        0,
        np.cumsum(
            values, dtype=np.complex128 if np.iscomplexobj(values) else np.float64
        ),
    ]
    return prefix[ends] - prefix[starts]


def statistics(z, q, starts, ends, shift=0):
    count = min(len(z), len(q[0]))
    if shift >= 0:
        source = z[shift:count]
        target = [v[: count - shift] for v in q]
    else:
        source = z[: count + shift]
        target = [v[-shift:count] for v in q]
        starts, ends = starts + shift, ends + shift
    c = np.array([window_sum(v.conj() * source, starts, ends) for v in target]).T
    return c


def gram(q, starts, ends):
    g = np.empty((len(starts), 3, 3), dtype=complex)
    for i in range(3):
        for j in range(i, 3):
            g[:, i, j] = window_sum(q[i].conj() * q[j], starts, ends)
            g[:, j, i] = g[:, i, j].conj()
    return g


def solve(c, g):
    delta = np.zeros(len(c))
    d0 = g[:, 0, 0].real
    d1 = 2 * g[:, 0, 1].real
    d2 = g[:, 1, 1].real + 2 * g[:, 0, 2].real
    d3 = 2 * g[:, 1, 2].real
    d4 = g[:, 2, 2].real
    for _ in range(8):
        a = c[:, 0] + delta * c[:, 1] + delta**2 * c[:, 2]
        da = c[:, 1] + 2 * delta * c[:, 2]
        dda = 2 * c[:, 2]
        n = abs(a) ** 2
        dn = 2 * np.real(a.conj() * da)
        ddn = 2 * np.real(da.conj() * da + a.conj() * dda)
        d = d0 + delta * d1 + delta**2 * d2 + delta**3 * d3 + delta**4 * d4
        dd = d1 + 2 * delta * d2 + 3 * delta**2 * d3 + 4 * delta**3 * d4
        ddd = 2 * d2 + 6 * delta * d3 + 12 * delta**2 * d4
        gradient = dn / n - dd / d
        curvature = ddn / n - (dn / n) ** 2 - ddd / d + (dd / d) ** 2
        step = -gradient / curvature
        delta += np.clip(step, -0.75, 0.75)
    strength = abs(a) / d
    return delta, strength


def projection_snr(z, model, fit, starts, ends, c, g, delta):
    """Calibrate matched-code significance with four wrong-code projections.

    Receiver gain is a nuisance parameter. A global amplitude floor would
    reject clear, low-gain code intervals; compare with independent code lags
    observed in each same window instead.
    """
    null_power = np.zeros(len(starts))
    for divisor in (7, 5, 3, 2):
        wrong = np.empty(len(z), dtype=np.complex64)
        for first in range(0, len(z), 1048576):
            n = np.arange(first, min(len(z), first + 1048576))
            u = n + np.polyval(fit, n) + len(model[0]) // divisor
            wrong[first : first + len(n)] = periodic_interp(model[0], model[1], u)
        numerator = window_sum(wrong.conj() * z, starts, ends)
        denominator = window_sum(abs(wrong) ** 2, starts, ends)
        null_power += abs(numerator) ** 2 / denominator / 4
    v = np.array([np.ones(len(delta)), delta, delta**2]).T
    norm = np.einsum("bi,bij,bj->b", v, g, v).real
    matched = abs(np.sum(v * c, axis=1)) ** 2 / norm
    return np.sqrt(matched / np.maximum(null_power, 1e-30))


def evaluate(z, model, fit, boundaries, window=16384, injection_controls=True):
    q = basis(model, fit, len(z))
    b = np.asarray(boundaries, dtype=np.int64)
    b = b[(b >= 4096) & (b <= len(z) - 4096 - 1)]
    width = np.minimum(window, np.minimum(b, len(z) - b - 1))
    starts = np.r_[b - width, b]
    ends = np.r_[b, b + width]
    g = gram(q, starts, ends)
    c = statistics(z, q, starts, ends)
    d, strength = solve(c, g)
    left, right = d[: len(b)], d[len(b) :]
    steps = right - left
    snr = projection_snr(z, model, fit, starts, ends, c, g, d)
    quality = (snr[: len(b)] >= 6) & (snr[len(b) :] >= 6)
    clean = (abs(steps) < 0.5) & quality & (np.maximum(abs(left), abs(right)) < 2)
    controls = []
    if injection_controls:
        for shift in (1, -1):
            ci = statistics(z, q, b, b + width, shift)
            di, si = solve(ci, g[len(b) :])
            detected = (abs(di - left) > 0.5) & (
                abs(di - right - shift * (1 + fit[0])) < 0.1
            )
            controls.append(
                dict(
                    samples_removed=shift,
                    trials=len(b),
                    detected=int(detected.sum()),
                    min_abs_step=float(np.min(abs(di - left))),
                    median_added_step=float(np.median(di - right)),
                )
            )
        for shift in (2048, 4096, -4096, 163840, -163840):
            eligible = np.flatnonzero((b + shift >= 0) & (b + width + shift < len(z)))
            selected = eligible[
                np.linspace(0, len(eligible) - 1, min(128, len(eligible)), dtype=int)
            ]
            ci = statistics(z, q, b[selected], b[selected] + width[selected], shift)
            di, si = solve(ci, g[len(b) + selected])
            detected = (
                (abs(di - left[selected]) > 0.5)
                | (si < 0.25 * strength[len(b) + selected])
                | (abs(di) > 2)
            )
            controls.append(
                dict(
                    samples_removed=shift,
                    trials=len(selected),
                    detected=int(detected.sum()),
                    detector="Timing step or failed fixed-code projection",
                )
            )
    return dict(
        boundaries=b,
        steps=steps,
        delay_left=left,
        delay_right=right,
        strength=strength,
        projection_snr=snr,
        clean=clean,
        quality=quality,
        controls=controls,
        window_samples=window,
        minimum_window_samples=int(width.min()),
    )
