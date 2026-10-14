"""Bounded real-device GNU Radio/Soapy smoke test; no Pluto control here."""
import json
import os
import numpy as np
from gnuradio import gr, blocks, soapy

rate = int(os.environ.get('RTL8922_TEST_RATE', '5000000'))
tb = gr.top_block()
args = 'driver=rtl8922,experimental40=1' if rate==40000000 else 'driver=rtl8922,capture_mode=legacy'
source = soapy.source(args, 'fc32', 1, '', '', [''], [''])
source.set_sample_rate(0, rate)
source.set_frequency(0, 2_422_000_000 if rate==40000000 else 2_412_000_000)
source.set_bandwidth(0, max(rate, 5_000_000))
head = blocks.head(gr.sizeof_gr_complex, 2_000_000)
sink = blocks.vector_sink_c()
tb.connect(source, head, sink)
tb.run()
samples = np.asarray(sink.data(), dtype=np.complex64)
assert len(samples) == 2_000_000, len(samples)
samples[:65536].tofile('/home/plaing/rtl8922-iq-research/soapy/gnuradio-cf32.bin')
z = samples[-65536:]
z = z - z.mean()
p = abs(np.fft.fft(z * np.hanning(len(z)))) ** 2
p[0] = 0
k = int(p.argmax())
print(json.dumps({'application': 'GNU Radio gr-soapy', 'samples': len(samples), 'rate':rate,
                  'peak_hz': float(np.fft.fftfreq(len(z), 1/rate)[k]),
                  'peak_median_db': float(10*np.log10(p[k]/np.median(p)))}))
