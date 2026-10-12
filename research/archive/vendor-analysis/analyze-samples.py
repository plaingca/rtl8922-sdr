from pathlib import Path
import numpy as np,json,hashlib
folder=Path('output/rtl8922-iq-captures')
report=json.loads((folder/'report.json').read_text())
results=[]
for entry in report['attempts']:
    data=(folder/entry['file']).read_bytes(); assert hashlib.sha256(data).hexdigest()==entry['stats']['sha256']
    raw=np.frombuffer(data,dtype='<u8'); wptr=int(entry['after']['0x9664'],16)&65535
    assert wptr<len(raw)
    raw=np.roll(raw,-wptr) # all original captures wrapped
    bits=12 if entry['format']==1 else 14
    lanes=4 if bits==12 else 2
    x=np.stack([((raw>>np.uint64(bits*i))&np.uint64((1<<bits)-1)).astype(np.int32) for i in range(lanes)],axis=1)
    x[x>=(1<<(bits-1))]-=1<<bits
    stats=[]
    for i in range(lanes):
        z=x[:,i].astype(float); d=z-z.mean()
        stats.append({'lane':i,'mean':float(z.mean()),'std':float(z.std()),'min':int(z.min()),'max':int(z.max()),'lag1_correlation':float(np.corrcoef(d[:-1],d[1:])[0,1]),'clipped_fraction':float(np.mean((z==-(1<<(bits-1)))|(z==(1<<(bits-1))-1)))})
    item={'file':entry['file'],'packing':'candidate signed little-endian contiguous fields','bits':bits,'lanes':stats,'corr_matrix':np.corrcoef(x.T).tolist(),'upper_unused_zero_fraction':float(np.mean((raw>>np.uint64(bits*lanes))==0)),'state':(int(entry['after']['0x9664'],16)>>17)&7,'wrap':bool(int(entry['after']['0x9664'],16)&65536)}
    for pair in range(lanes//2):
        # Store candidate I/Q; polarity and I/Q order still require a known signal.
        iq=x[:,pair*2:pair*2+2].astype('<i2'); iq.tofile(folder/(Path(entry['file']).stem+f'-pair{pair}-candidate-sc16.bin'))
    results.append(item)
(folder/'analysis.json').write_text(json.dumps(results,indent=2));print(json.dumps(results,indent=2))
