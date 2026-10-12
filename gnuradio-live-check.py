"""Real GNU Radio flowgraphs: retune/change rate while gr-soapy is running."""
import gc
import json
import time
import numpy as np
from gnuradio import gr, blocks, soapy

def run(name, initial_rate, target_rate, target_frequency, skip):
    tb = gr.top_block()
    source = soapy.source('driver=rtl8922,experimental40=1,producer_scheduler=deadline', 'fc32', 1, '', '', [''], [''])
    source.set_sample_rate(0, initial_rate)
    source.set_frequency(0, 2_422_000_000)
    discard = blocks.skiphead(gr.sizeof_gr_complex, skip)
    head = blocks.head(gr.sizeof_gr_complex, 65536)
    sink = blocks.vector_sink_c()
    tb.connect(source, discard, head, sink)
    try:
        tb.start()
        time.sleep(.15)
        start = time.monotonic()
        source.set_frequency(0, target_frequency)
        source.set_sample_rate(0, target_rate)
        change_ms = (time.monotonic()-start)*1000
        tb.wait()
        z = np.asarray(sink.data(), dtype=np.complex64)
        assert len(z) == 65536, len(z)
        z -= z.mean()
        p = abs(np.fft.fft(z*np.hanning(len(z))))**2
        p[0] = 0
        k = int(p.argmax())
        peak = float(np.fft.fftfreq(len(z), 1/target_rate)[k])
        ratio = float(10*np.log10(p[k]/np.median(p)))
        expected = 2_422_125_000-target_frequency
        assert abs(peak-expected) < 50000 and ratio > 20, (peak, expected, ratio)
        print(json.dumps({'application': 'GNU Radio gr-soapy', 'stage': name, 'initial_rate': initial_rate,
                          'final_rate': target_rate, 'final_frequency': target_frequency,
                          'samples': len(z), 'peak_hz': peak, 'peak_median_db': ratio,
                          'setting_ms': change_ms}), flush=True)
    finally:
        tb.stop()
        tb.wait()
        tb.disconnect_all()

for args in [('retune20', 20_000_000, 20_000_000, 2_427_000_000, 12_000_000),
             ('fine20', 20_000_000, 20_000_000, 2_422_250_000, 12_000_000),
             ('fine40', 40_000_000, 40_000_000, 2_422_250_000, 12_000_000),
             ('rate20to40', 20_000_000, 40_000_000, 2_422_000_000, 20_000_000),
             ('rate40to5', 40_000_000, 5_000_000, 2_422_000_000, 12_000_000)]:
    run(*args)
    gc.collect()
