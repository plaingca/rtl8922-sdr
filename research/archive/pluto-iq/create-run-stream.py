from pathlib import Path
s=Path('tmp/pluto-iq/run-la-iddma.py').read_text();a=s.index('    setup(2,0,6)');b=s.index("'''+s[b:]",a)
s=s[:a]+'''    for duration in [100,1000]:
        setup(2,0,6);(dbg/'scope_data').write_bytes(b'1')
        (dbg/'iq_stream').write_text(str(duration));time.sleep(.05)
        state=rd(0x9664);field('la_en',0)
        data=(dbg/'scope_data').read_bytes();(out/f'stream-{duration}.bin').write_bytes(data)
        reference=(dbg/'iq_memory').read_bytes();(out/f'stream-ring-{duration}.bin').write_bytes(reference)
        chunks=[];sequences=[];pos=0
        while pos<len(data):
            h=struct.unpack_from('<6I',data,pos);assert h[0]==4096 and h[3]==4096,h
            sequences.append(h[1]);chunks.append(data[pos+24:pos+24+h[0]]);pos+=24+h[0]
        payload=b''.join(chunks);(out/f'stream-iq-{duration}.bin').write_bytes(payload)
        raw=np.frombuffer(payload,dtype='<u8');I=(raw&16383).astype(np.int32);Q=((raw>>14)&16383).astype(np.int32);I[I>=8192]-=16384;Q[Q>=8192]-=16384;z=I+1j*Q;z-=z.mean()
        nfft=min(65536,len(z));P=abs(np.fft.fft(z[-nfft:]*np.hanning(nfft)))**2;P[:1]=0;k=int(np.argmax(P))
        matches=[chunk==reference[(seq%40960)*8:(seq%40960)*8+4096] for seq,chunk in list(zip(sequences,chunks))[-60:]]
        phase=np.angle(z[1:]*np.conj(z[:-1]));edges=phase[np.arange(511,len(phase),512)]
        result={'duration_ms':duration,'result':(dbg/'iq_stream').read_text(),'state':hex(state),'host_packets':len(chunks),'host_bytes':len(payload),'dropped':(dbg/'scope_dropped').read_text(),'contiguous_sequences':sequences==list(range(0,len(chunks)*512,512)),'last_ring_chunks_match':sum(matches),'last_ring_chunks_checked':len(matches),'peak_hz':float(np.fft.fftfreq(nfft,1/1250000)[k]),'peak_median_db':float(10*np.log10(P[k]/np.median(P))),'phase_step_median':float(np.median(phase)),'boundary_phase_step_median':float(np.median(edges))}
        report['tests'].append(result);print(json.dumps(result),flush=True)
'''+s[b:]
s=s.replace('rtl8922-la-iddma-run','rtl8922-stream-run');Path('tmp/pluto-iq/run-stream.py').write_text(s)
