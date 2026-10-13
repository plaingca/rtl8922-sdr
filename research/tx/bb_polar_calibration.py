#!/usr/bin/env python3
"""Offline amplitude LUT and separate-packet timing calibration source builder.

This tool never opens hardware. Unequal I/Q attenuation improves desired-sideband
resolution at the cost of a conjugate image; it is not a finer scalar DAC.
"""
import argparse
import hashlib
import json
from pathlib import Path
import numpy as np
from bb_polar_ofdm import MESSAGE,make_frame,polar_table,require


def attenuation_lut(report,path):
    require(report['status']=='finite_polar_ofdm_captured','Rejected sweep')
    rows={r['code']:r for r in report['attenuation_sweep']}
    reference=rows[9]['power']-rows[9]['noise_power']
    require(reference>0 and rows[9]['above_noise_db']>=20,'Weak amplitude reference')
    lut=[]
    for i in range(1,8):
        for q in range(i,8):
            code=i+8*q;nominal=(2.**-i+2.**-q)/2;row=rows[code]
            require(row['clip_fraction']==0,'Clipped attenuation measurement')
            measured=.5*np.sqrt(max(0,row['power']-row['noise_power'])/reference)
            residual=20*np.log10(max(measured,1e-20)/nominal)
            trusted=row['above_noise_db']>=15 and abs(residual)<1.5
            lut.append({'code':code,'i_exponent':i,'q_exponent':q,
                'nominal_amplitude':nominal,'measured_amplitude':float(measured),
                'above_noise_db':row['above_noise_db'],'used_measurement':bool(trusted),
                'used_amplitude':float(measured) if trusted else nominal,
                'inferred_image_amplitude':(2.**-i-2.**-q)/2})
    order=sorted(lut,key=lambda r:r['used_amplitude'])
    return {'schema_version':1,'hardware_access':False,'attenuation_report':str(path.resolve()),
        'attenuation_report_sha256':hashlib.sha256(path.read_bytes()).hexdigest(),
        'levels':[r['used_amplitude'] for r in order],'codes':[r['code'] for r in order],'lut':lut,
        'scope':'Measured desired-sideband amplitudes when clean; power-of-two I/Q model for weak or contaminated measurements. Unequal attenuators intentionally create a conjugate image.'}


def generate(lut,folder,advances,calibration=False):
    message=np.random.default_rng(20261013).integers(0,256,36,dtype=np.uint8).tobytes() if calibration else MESSAGE
    manifest=[]
    for advance in advances:
        prefix=folder/('timing-' if calibration else 'validation-fine-')/str(round(advance*100))
        prefix.parent.mkdir(parents=True,exist_ok=True)
        paths=[prefix.with_suffix(s) for s in ('.bin','.json','.npz')]
        require(not any(p.exists() for p in paths),'Source output exists')
        z,packet,expected=make_frame(peak=.5,message=message)
        table,phase,amp,meta=polar_table(z,amp_advance=advance,levels=lut['levels'],codes=lut['codes'])
        payload=table.astype('<u4').tobytes()
        meta.update({'packet_hex':packet.hex(),'payload_message':None if calibration else MESSAGE.decode(),
            'calibration_waveform':calibration,'envelope_peak':.5,
            'amplitude_calibration':lut,'table_sha256':hashlib.sha256(payload).hexdigest()})
        paths[0].write_bytes(payload);paths[0].chmod(0o600)
        paths[1].write_text(json.dumps(meta,indent=2)+'\n')
        np.savez(paths[2],iq=z,table=table,phase_units=phase,levels=amp,expected=expected)
        manifest.append({'source':str(paths[1].resolve()),'payload':str(paths[0].resolve()),'amp_advance':advance})
    return manifest


def main():
    p=argparse.ArgumentParser(description=__doc__);sub=p.add_subparsers(dest='command',required=True)
    levels=sub.add_parser('levels');levels.add_argument('--sweep-report',type=Path,required=True)
    levels.add_argument('--output',type=Path,required=True)
    source=sub.add_parser('generate');source.add_argument('--levels-report',type=Path,required=True)
    source.add_argument('--private-dir',type=Path,required=True);source.add_argument('--manifest',type=Path,required=True)
    source.add_argument('--advances',type=float,nargs='+',required=True);source.add_argument('--calibration-packet',action='store_true')
    a=p.parse_args()
    if a.command=='levels':
        require(not a.output.exists(),'Output exists')
        result=attenuation_lut(json.loads(a.sweep_report.read_text()),a.sweep_report)
        a.output.write_text(json.dumps(result,indent=2)+'\n')
    else:
        require(not a.manifest.exists(),'Manifest exists')
        result=generate(json.loads(a.levels_report.read_text()),a.private_dir,a.advances,a.calibration_packet)
        a.manifest.write_text(json.dumps(result,indent=2)+'\n')

if __name__=='__main__':main()
