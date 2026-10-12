from pathlib import Path
s=Path('tmp/pluto-iq/run-live-control.py').read_text().replace('live-control','fine-control')
s=s.replace("('live-'+stage['stage']+'.bin')","('fine-'+stage['stage']+'.bin')")
s=s.replace('    for stage in stages:', '    cfo=None\n    for stage in stages:')
s=s.replace("peak=float(np.fft.fftfreq(len(z),1/stage['rate'])[k]);expected=2422125000-stage['frequency']",'''freqs=np.fft.fftfreq(len(z),1/stage['rate']);global_k=k
        expected=2422125000-stage['frequency']
        if cfo is None:cfo=float(freqs[k])-expected
        indexes=np.flatnonzero(abs(freqs-(expected+cfo))<5000)
        k=int(indexes[np.argmax(P[indexes])]);peak=float(freqs[k])
        image_hz=-(2422125000-stage['rf_center']+cfo)-stage['bb_offset']
        image_hz=(image_hz+stage['rate']/2)%stage['rate']-stage['rate']/2
        indexes=np.flatnonzero(abs(freqs-image_hz)<5000);image_k=int(indexes[np.argmax(P[indexes])])''')
s=s.replace("'peak_hz':peak,", "'peak_hz':peak,'global_peak_hz':float(freqs[global_k]),'image_rejection_db':float(10*np.log10(P[k]/P[image_k])),")
s=s.replace('abs(peak-expected)<50000','abs(peak-(expected+cfo))<5000')
Path('tmp/pluto-iq/run-fine-control.py').write_text(s)
