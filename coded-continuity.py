"""Compare repeated received QPSK periods; include a one-sample-loss control.

Uses RX waveform as template so unknown RF channel and fixed CFO cancel.
Timing is estimated from correlation magnitude; this is not an absolute
sample-clock calibration or proof about captures longer than this file.
"""
import argparse
import json
from pathlib import Path
import numpy as np
from scipy.signal import correlate, firwin, lfilter

ROOT = Path('/home/plaing/rtl8922-iq-research/soapy')
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--rate', type=int, default=20000000)
parser.add_argument('--input', type=Path, default=ROOT/'coded-cf32.bin')
parser.add_argument('--output', type=Path, default=ROOT/'coded-continuity.json')
parser.add_argument('--analysis-lowpass-hz', type=float, default=0.)
args = parser.parse_args()
if args.rate not in (20000000, 40000000):
    parser.error('Qualified analyzer rates are 20000000 and 40000000')
SCALE = args.rate // 20000000
PERIOD = 655360 * SCALE  # 32768 symbols, 1 Msymbol/s
STEP = 2000000 * SCALE
if not 0 <= args.analysis_lowpass_hz < args.rate/2:
    parser.error('Analysis lowpass must be zero or below Nyquist')
analysis_taps = (firwin(257, args.analysis_lowpass_hz, fs=args.rate)
                 if args.analysis_lowpass_hz else None)


def measure(z):
    # Both the original and injected deletion pass through the same filter.
    # Fixed filter delay cancels between periods. This validates timing of
    # the coded signal's band, not fidelity across the full receive bandwidth.
    if analysis_taps is not None:
        z = lfilter(analysis_taps, [1.], z)
    rows = []
    width, search = 4096*SCALE, 180*SCALE
    for cycle in range(1, 6):
        for offset in range(4096*SCALE, PERIOD - width - search, 16384*SCALE):
            center = offset + cycle * PERIOD
            if center + width + search >= len(z):
                continue
            a = z[offset:offset + width].astype(np.complex128)
            b = z[center - search:center + width + search].astype(np.complex128)
            a -= a.mean()
            b -= b.mean()
            c = np.abs(correlate(b, a, mode='valid', method='fft'))
            k = int(c.argmax())
            if k == 0 or k == len(c)-1:
                raise RuntimeError('Correlation peak outside timing search')
            frac = .5 * (c[k-1]-c[k+1]) / (c[k-1]-2*c[k]+c[k+1])
            coherence = c[k] / np.sqrt(np.vdot(a,a).real * np.vdot(b[k:k+width],b[k:k+width]).real)
            rows.append([cycle, offset, cycle*PERIOD+k-search+frac, coherence])
    rows = np.asarray(rows)
    # Every template refers to cycle zero. Fit period through zero; separate
    # per-cycle summaries expose a loss that a clock-only fit could conceal.
    period = np.dot(rows[:,0], rows[:,2]) / np.dot(rows[:,0], rows[:,0])
    residual = rows[:,2] - rows[:,0]*period
    step = (rows[:,0]*PERIOD+rows[:,1] >= STEP).astype(float)
    model = np.column_stack((rows[:,0], step))
    coeff = np.linalg.lstsq(model, rows[:,2]-rows[:,0]*PERIOD, rcond=None)[0]
    fit_error = rows[:,2]-rows[:,0]*PERIOD-model@coeff
    step_se = np.sqrt(np.sum(fit_error**2)/(len(rows)-2)*np.linalg.inv(model.T@model)[1,1])
    return dict(step_sample=STEP, estimated_step_samples=float(coeff[1]),
                step_fit_standard_error=float(step_se),
                estimated_period_samples=float(period),
                nominal_period_samples=PERIOD,
                clock_ratio_error_ppm=float((period/PERIOD-1)*1e6),
                coherence_median=float(np.median(rows[:,3])),
                coherence_min=float(rows[:,3].min()),
                residual_rms_samples=float(np.sqrt(np.mean(residual**2))),
                residual_peak_to_peak_samples=float(np.ptp(residual)),
                cycles=[dict(cycle=i, lag_minus_nominal_median=float(np.median(rows[rows[:,0]==i,2]-i*PERIOD)),
                             residual_median=float(np.median(residual[rows[:,0]==i]))) for i in range(1,6)],
                measurements=rows.tolist())


z = np.fromfile(args.input, dtype='<c8')
report = {'received_samples':len(z), 'sample_rate':args.rate,
          'analysis_lowpass_hz':args.analysis_lowpass_hz,
          'analysis_filter_taps':257 if analysis_taps is not None else 0,
          'waveform':'repeating seeded QPSK, 1 Msymbol/s, 32.768 ms period',
          'original':measure(z),
          'deleted_one_sample':measure(np.delete(z,STEP))}
original = report['original']
control = report['deleted_one_sample']
report['checks'] = {
    'all_windows_coherence_at_least_half': original['coherence_min'] >= .5,
    'median_coherence_at_least_point8': original['coherence_median'] >= .8,
    'no_step_resolved_at_test_boundary': abs(original['estimated_step_samples']) <= max(.25, 3*original['step_fit_standard_error']),
    'injected_loss_detected': abs(control['estimated_step_samples']-original['estimated_step_samples']+1) < .1,
}
report['timing_check_passed'] = all(report['checks'].values())
args.output.write_text(json.dumps(report,indent=2))
print(json.dumps({k:({a:b for a,b in v.items() if a!='measurements'} if isinstance(v,dict) else v) for k,v in report.items()},indent=2))
