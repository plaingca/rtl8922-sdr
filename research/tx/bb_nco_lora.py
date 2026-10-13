#!/usr/bin/env python3
"""Offline Meshtastic-preset LoRa packet generation, NCO compilation and decoding.

Uses separately built, pinned gr-lora_sdr; no radio/device access in this module.
"""
import argparse, hashlib, json, math, time
from pathlib import Path
import numpy as np
from gnuradio import gr, blocks, lora_sdr
import pmt

ROOT=Path('vendor/local-rf-captures/bb-nco-lora-20261013')
FS=32000000/3
SYNC=0x2b
# Pinned Meshtastic MeshRadio.h; Tiny maps the 15.6 label to hardware 15.625 kHz.
PRESETS={
 'SHORT_TURBO':(7,500000,5), 'SHORT_FAST':(7,250000,5), 'SHORT_SLOW':(8,250000,5),
 'MEDIUM_TURBO':(9,500000,5), 'MEDIUM_FAST':(9,250000,5), 'MEDIUM_SLOW':(10,250000,5),
 'LONG_TURBO':(11,500000,8), 'LONG_FAST':(11,250000,5), 'LONG_MODERATE':(11,125000,8),
 'LONG_SLOW':(12,125000,8), 'LITE_FAST':(9,125000,5), 'LITE_SLOW':(10,125000,5),
 'NARROW_FAST':(7,62500,6), 'NARROW_SLOW':(8,62500,6), 'TINY_FAST':(7,15625,5), 'TINY_SLOW':(8,15625,6)}
WIDE={500000:1625000,250000:812500,125000:406250}

def parameters(name,wide=False):
    sf,bw,cr=PRESETS[name]
    if wide:
        if name.startswith(('LITE','NARROW','TINY')):raise ValueError('Preset is not available in LORA_24 profile')
        bw=WIDE[bw]
    return {'preset':name,'wide_lora':wide,'sf':sf,'bandwidth_hz':bw,'coding_rate_denominator':cr,
            'preamble_symbols':12 if wide else 16,'sync_word':SYNC,'explicit_header':True,'payload_crc':True,
            'ldro':(1<<sf)/bw>=.016,'deprecated':name=='LONG_SLOW'}

def wait_output(tb,sink,minimum=1,timeout=5):
    deadline=time.monotonic()+timeout;last=-1;stable=0
    while time.monotonic()<deadline:
        n=sink.nitems_read(0)
        stable=stable+1 if n==last and n>=minimum else 0
        if stable>=3:return
        last=n;time.sleep(.01)
    raise TimeoutError('Offline GNU Radio output did not settle')

def encode(payload,p):
    sf=p['sf'];cr=p['coding_rate_denominator']-4;bw=p['bandwidth_hz']
    tb=gr.top_block();white=lora_sdr.whitening(True,False,',','packet_len')
    chain=[white,lora_sdr.header(False,True,cr),lora_sdr.add_crc(True),lora_sdr.hamming_enc(cr,sf),
           lora_sdr.interleaver(cr,sf,int(p['ldro']),bw),lora_sdr.gray_demap(sf)]
    sink=blocks.vector_sink_i();tb.connect(*chain,sink);tb.start()
    try:white.to_basic_block()._post(pmt.intern('msg'),pmt.intern(payload.hex()));wait_output(tb,sink)
    finally:tb.stop();tb.wait()
    symbols=np.asarray(sink.data(),dtype=np.uint32)
    if len(symbols)<8:raise ValueError('Incomplete LoRa encoding')
    return symbols

def modulate(symbols,p,osr=8):
    sf=p['sf'];bw=p['bandwidth_hz'];tag=gr.tag_t();tag.offset=0;tag.key=pmt.intern('frame_len');tag.value=pmt.from_long(len(symbols))
    tb=gr.top_block();src=blocks.vector_source_i(symbols.tolist(),False,1,[tag])
    mod=lora_sdr.modulate(sf,bw*osr,bw,[p['sync_word']],0,p['preamble_symbols'])
    mod.set_min_output_buffer(max(32768,2*(1<<sf)*osr))
    sink=blocks.vector_sink_c();tb.connect(src,mod,sink)
    count=int((len(symbols)+p['preamble_symbols']+4.25)*(1<<sf)*osr)
    tb.start()
    try:wait_output(tb,sink,count)
    finally:tb.stop();tb.wait()
    iq=np.asarray(sink.data(),dtype='<c8')
    if len(iq)<count:raise ValueError('Incomplete LoRa modulation')
    return iq[:count],bw*osr

def decode(iq,rate,p,sync=None,soft=True,audit=False):
    """Stock gr-lora_sdr RX: no transmitted bytes or source symbols supplied."""
    sf=p['sf'];bw=p['bandwidth_hz'];cr=p['coding_rate_denominator']-4
    if rate%bw or rate//bw<2:raise ValueError('Decoder needs integer oversampling >=2')
    tb=gr.top_block();src=blocks.vector_source_c(np.asarray(iq,dtype='<c8').tolist(),False)
    src.set_min_output_buffer(max(32768,8*(1<<sf)*int(rate//bw)))
    syncer=lora_sdr.frame_sync(2422000000,bw,sf,False,[p['sync_word'] if sync is None else sync],int(rate//bw),p['preamble_symbols'])
    syncer.set_min_output_buffer(max(32768,2*(1<<sf)*int(rate//bw)))
    fft=lora_sdr.fft_demod(soft,True);gray=lora_sdr.gray_mapping(soft);it=lora_sdr.deinterleaver(soft)
    ham=lora_sdr.hamming_dec(soft);header=lora_sdr.header_decoder(False,cr,255,True,int(p['ldro']),False)
    white=lora_sdr.dewhitening();crc=lora_sdr.crc_verif(0,False);sink=blocks.vector_sink_b()
    tb.connect(src,syncer,fft,gray,it,ham,header,white,crc,sink)
    tb.msg_connect((header,'frame_info'),(syncer,'frame_info'))
    if audit:
        class HeaderAudit(gr.basic_block):
            def __init__(self):
                gr.basic_block.__init__(self,'LoRa header audit',in_sig=None,out_sig=None)
                self.rows=[];self.message_port_register_in(pmt.intern('in'))
                self.set_msg_handler(pmt.intern('in'),self.handle)
            def handle(self,msg):self.rows.append(pmt.to_python(msg))
        headers=HeaderAudit();symbol_sink=blocks.vector_sink_c();byte_sink=blocks.vector_sink_b()
        tb.msg_connect((header,'frame_info'),(headers,'in'));tb.connect(syncer,symbol_sink);tb.connect(white,byte_sink)
    tb.start()
    try:
        deadline=time.monotonic()+10
        while src.nitems_written(0)<len(iq) and time.monotonic()<deadline:time.sleep(.01)
        if src.nitems_written(0)<len(iq):raise TimeoutError('Decoder source did not drain')
        # Allow the finite tail to work through feedback and downstream buffers.
        time.sleep(.15)
    finally:tb.stop();tb.wait()
    data=bytes(sink.data());packets=[]
    for tag in sink.tags():
        if pmt.symbol_to_string(tag.key)!='frame_info':continue
        info=pmt.to_python(tag.value);length=int(info['pay_len']);body=data[tag.offset:tag.offset+length]
        packets.append({'payload_hex':body.hex(),'crc_ok':bool(info.get('crc_valid',False)),'header':info})
    result={'packets':packets,'crc_valid_packets':sum(v['crc_ok'] for v in packets),
            'decoder':'pinned gr-lora_sdr stock synchronization, header, FEC and CRC','repetition_averaging':False}
    if audit:
        raw=bytes(byte_sink.data());before_crc=[]
        for tag in byte_sink.tags():
            if pmt.symbol_to_string(tag.key)=='frame_info':
                info=pmt.to_python(tag.value);length=int(info['pay_len'])+2
                before_crc.append({'offset':tag.offset,'bytes_hex':raw[tag.offset:tag.offset+length].hex(),'header':info})
        result['audit']={'headers':headers.rows,'before_crc':before_crc,
                        'synchronized_tags':[{'offset':t.offset,'info':pmt.to_python(t.value)} for t in symbol_sink.tags() if pmt.symbol_to_string(t.key)=='frame_info']}
        result['_synchronized_iq']=np.asarray(symbol_sink.data(),dtype='<c8')
    return result

def packet_payload(index):
    # Meshtastic 16-byte wire header followed by unencrypted Data protobuf:
    # portnum=TEXT_MESSAGE_APP, payload=<text>. No existing mesh identity/keys.
    import struct
    text=f'RTL8922 LoRa {index:02d}'.encode()
    header=struct.pack('<IIIBBBB',0xffffffff,0xf8922001,0x89220000+index,0,0,0,0)
    return header+b'\x08\x01\x12'+bytes([len(text)])+text

def compile_frequency(iq,rate,carrier,path,playback_rate=FS,compensate_holds=False,first_command=0):
    """Round cumulative phase to the 250-kHz NCO increment grid, no AM/mute.

    playback_rate controls chirp time scaling; physical slot phase increment
    uses the measured average playback interval. Guard muting is outside
    packets. Commands are precomputed here; hardware timer gaps are not removed.
    """
    phase=np.unwrap(np.angle(iq).astype(np.float64));phase=np.r_[phase,phase[-1]+(phase[-1]-phase[-2])]
    total=int(math.ceil(len(iq)/rate*playback_rate));q=2*np.pi*250000/playback_rate
    output=np.empty(total,dtype=np.uint8);previous=0
    if compensate_holds:
        q=2*np.pi*250000/FS;gap=4096*(1/playback_rate-1/FS)
        if not 0<=gap<.000005:raise ValueError('Invalid calibrated buffer gap')
        actual=0.;first_block=first_command//4096;start=0;last=0
        while start<total:
            if start and (first_command+start)%4096==0:actual+=last*gap*FS
            end=min(total,start+4096-(first_command+start)%4096)
            n=np.arange(start+1,end+1,dtype=np.float64)
            pauses=((first_command+n.astype(np.int64)-1)//4096-first_block)*gap
            t=n/FS+pauses
            target=(np.interp(t*rate,np.arange(len(phase)),phase)+2*np.pi*carrier*t)/q
            # Recover the phase error caused by holding the last frequency
            # through native service. Limit every recovery command to 1..9.
            # Near the upper/lower frequency bound, phase recovery can require
            # more than 64 slots. Keep clipping during that bounded prefix;
            # once recovered this gives the same rounding as the bulk path.
            head=min(512,end-start)
            for k in range(head):
                value=int(np.clip(np.rint(target[k]-actual),1,9));output[start+k]=value;actual+=value
            if head<len(target):
                steps=np.rint(target[head:]-actual).astype(np.int64)
                values=np.diff(np.r_[0,steps])
                if values.min()<1 or values.max()>9:raise ValueError('Hold recovery did not converge')
                output[start+head:end]=values;actual+=steps[-1]
            last=int(output[end-1]);start=end
        if path is not None:output.tofile(path)
        return output
    for first in range(0,total,1048576):
        end=min(total,first+1048576);n=np.arange(first+1,end+1,dtype=np.float64)
        t=n/playback_rate
        target=np.interp(t*rate,np.arange(len(phase)),phase)+2*np.pi*carrier*t
        units=np.rint(target/q).astype(np.int64)
        codes=np.diff(np.r_[previous,units]);previous=units[-1]
        if np.min(codes)<1 or np.max(codes)>9:raise ValueError('Frequency compiler exceeds explicitly bounded indices 1..9')
        output[first:end]=codes
    if path is not None:output.tofile(path)
    return output

def pack(codes):
    codes=np.asarray(codes,dtype=np.uint8)
    if len(codes)%8 or np.max(codes,initial=0)>9:raise ValueError('Packed command bounds')
    return np.sum(codes.reshape(-1,8).astype(np.uint32) << (4*np.arange(8,dtype=np.uint32)),axis=1,dtype=np.uint32).astype('<u4')

def generate(name,preset,wide=False,packets=2,playback_rate=FS,compensate_holds=False,carrier_offset=None,packet_start=0):
    p=parameters(preset,wide);ROOT.mkdir(parents=True,exist_ok=True);prefix=ROOT/name
    if prefix.with_suffix('.json').exists() or prefix.with_suffix('.bin').exists():raise ValueError('Output exists')
    carrier=1250000 if wide else 750000 if compensate_holds and p['bandwidth_hz']==500000 else 500000
    if carrier_offset is not None:carrier=int(carrier_offset)
    if not 1<=packets<=10 or not 0<=packet_start<=90:raise ValueError('Finite packet count/ID bound')
    parts=[np.zeros(int(.005*FS),dtype=np.uint8)];sources=[];ideal=[]
    for i in range(packet_start,packet_start+packets):
        body=packet_payload(i);symbols=encode(body,p);iq,rate=modulate(symbols,p)
        pilot=np.r_[np.zeros(int(.01*rate),dtype='<c8'),iq,np.zeros(int(.03*rate),dtype='<c8')]
        control=decode(pilot,rate,p)
        if not any(v['crc_ok'] and v['payload_hex']==body.hex() for v in control['packets']):raise ValueError('Ideal packet failed stock LoRa decoder')
        codes=compile_frequency(iq,rate,carrier,None,playback_rate,compensate_holds,sum(map(len,parts)))
        sources.append({'payload_hex':body.hex(),'symbol_count':len(symbols),'symbol_sha256':hashlib.sha256(symbols.astype('<u4').tobytes()).hexdigest(),
                        'nominal_airtime_seconds':len(iq)/rate,'first_native_command':sum(map(len,parts)),'native_commands':len(codes),
                        'ideal_crc_packets':control['crc_valid_packets']})
        parts.extend([codes,np.zeros(int(.01*FS),dtype=np.uint8)]);ideal.append(iq)
    commands=np.concatenate(parts);padding=(-len(commands))%4096;commands=np.r_[commands,np.zeros(padding,dtype=np.uint8)]
    if len(commands)//4096>16384:raise ValueError('Bounded RF command budget exceeded')
    raw=pack(commands).tobytes();prefix.with_suffix('.bin').write_bytes(raw);prefix.with_suffix('.bin').chmod(0o600)
    meta={'schema_version':1,'hardware_access':False,'kind':'meshtastic-lora-frequency-dither','parameters':p,
          'frame_samples':len(commands),'stream_blocks':len(commands)//4096,'carrier_offset_hz':carrier,
          'sources':sources,'packet_count':packets,'packet_start':packet_start,'body_bytes':len(packet_payload(0)),
          'table_sha256':hashlib.sha256(raw).hexdigest(),'native_rate_hz':FS,'chirp_playback_rate_hz':playback_rate,
          'buffer_hold_phase_compensation':compensate_holds,
          'modeled_buffer_service_gap_seconds':4096*(1/playback_rate-1/FS) if compensate_holds else None,
          'nco_command_max':9,'nco_codebook':list(range(10)),
          'scope':'Offline phase-accumulation frequency dithering; no amplitude compiler. Stock LoRa header/FEC/CRC, Meshtastic sync and preamble. RF carrier is in WiFi band, not sub-GHz.'}
    prefix.with_suffix('.json').write_text(json.dumps(meta,indent=2)+'\n');print(json.dumps(meta,indent=2))
    return meta

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--name',required=True);p.add_argument('--preset',choices=PRESETS,required=True)
    p.add_argument('--wide',action='store_true');p.add_argument('--packets',type=int,choices=range(1,11),default=2)
    p.add_argument('--carrier-offset',type=int,help='Explicit IF in Hz; compiler still enforces indices 1..9')
    p.add_argument('--packet-start',type=int,default=0,help='First distinct test packet ID/text index (0..90)')
    p.add_argument('--playback-rate',type=float,default=FS)
    p.add_argument('--compensate-holds',action='store_true')
    a=p.parse_args();generate(a.name,a.preset,a.wide,a.packets,a.playback_rate,a.compensate_holds,a.carrier_offset,a.packet_start)
