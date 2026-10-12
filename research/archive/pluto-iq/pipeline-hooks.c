/* Packet preparation and host dispatch overlap IDDMA; never enqueue an
 * unfinished copy or write a packet after dispatch transfers ownership. */
static int iq_prepare_packet(struct rtw89_dev *rtwdev, u32 bytes, u32 seq, u16 *id)
{
    u32 addr, aperture, headers[6];
    int i, ret = iq_dle_req(rtwdev, bytes + 24, false, id);
    if (ret) return ret;
    addr = 0x08000000 | (*id << 15);
    aperture = 0x80000 + (addr & 0x7ffff);
    rtw89_write32(rtwdev, 0xc04, addr & ~0x7ffff);
    headers[0]=(3<<24)|bytes; headers[1]=*id|(8<<16);
    headers[2]=headers[3]=headers[4]=0; headers[5]=seq;
    for (i=0;i<6;i++) rtw89_write32(rtwdev, aperture+4*i, headers[i]);
    rtw89_write32(rtwdev, 0xc04, 0x18008000);
    return 0;
}

static int iq_dispatch_packet(struct rtw89_dev *rtwdev, u16 id, bool release)
{
    struct rtw89_cpuio_ctrl q = {
        .cmd_type=CPUIO_OP_CMD_ENQ_TO_TAIL,
        .start_pktid=id, .end_pktid=id,
        .dst_pid=release ? PLE_DLE_PORT_ID_PLRLS : PLE_DLE_PORT_ID_DISPATCH,
        .dst_qid=0,
    };
    return iq_set_cpuio(rtwdev,&q,false);
}

static ssize_t iq_stream_pipeline(struct file *file, const char __user *buf, size_t count, loff_t *pos)
{
    struct rtw89_dev *rtwdev=file->private_data;
    u32 filter, dma_old[3], ctrl=0, state, last=0, wp, rp=0;
    u32 produced=0, consumed=0, packets=0, backlog=0, max_backlog=0;
    u32 raw_rate=READ_ONCE(iq_sample_rate), bytes=READ_ONCE(iq_chunk_bytes), records=bytes/8;
    u16 id=0, previous_id=0, next_id=0;
    bool owned=false, previous=false, next_owned=false, dma_active=false, started=false;
    u64 start=ktime_get_ns(), end, now, last_poll, poll_limit, stamp, timing[4]={};
    int ret=0, next_ret=0, i, queued;
    unsigned int ms;
    char text[24];
    if(count>=sizeof(text)||copy_from_user(text,buf,count)) return -EINVAL;
    text[count]=0;
    if(kstrtouint(text,0,&ms)||(ms&&ms<10)||ms>60000) return -EINVAL;
    if((bytes!=4096&&bytes!=8192)||!raw_rate||raw_rate>160000000) return -EINVAL;
    if(atomic_cmpxchg(&iq_stream_claimed,0,1)) return -EBUSY;
    wiphy_lock(rtwdev->hw->wiphy);
    WRITE_ONCE(iq_stop,false); WRITE_ONCE(iq_running,true);
    filter=rtw89_read32(rtwdev,0xc04);
    rtw89_write32(rtwdev,0xc04,0x18008000);
    for(i=0;i<3;i++) dma_old[i]=rtw89_read32(rtwdev,0x80050+4*i);
    if((dma_old[2]&BIT(31))||dma_old[2]==0xdeadbeef||(rtw89_read32(rtwdev,0x800e8)&BIT(5))) {
        ret=-EBUSY; goto finish;
    }
    ret=iq_prepare_packet(rtwdev,bytes,0,&id);
    if(ret) goto finish;
    owned=true;
    rtw89_write32(rtwdev,0x9668,0);
    rtw89_write32(rtwdev,0x9660,(4<<16)|(11<<8)|1);
    start=ktime_get_ns(); end=start+(u64)ms*1000000;
    last_poll=start; poll_limit=40960ULL*900000000ULL/raw_rate;
    rtw89_write32(rtwdev,0x9660,(4<<16)|(11<<8)|9); started=true;
    while(!READ_ONCE(iq_stop)&&(!ms||ktime_get_ns()<end)) {
        now=ktime_get_ns();
        if(now-last_poll>=poll_limit) { ret=-EOVERFLOW; break; }
        last_poll=now;
        if(fatal_signal_pending(current)) { ret=-EINTR; break; }
        state=rtw89_read32(rtwdev,0x9664); wp=state&0xffff;
        if(wp>=40960) { ret=-ERANGE; break; }
        produced+=(wp+40960-last)%40960; last=wp;
        backlog=produced-consumed; max_backlog=max(backlog,max_backlog);
        if(backlog>=40960) { ret=-EOVERFLOW; break; }
        if(backlog<records) { udelay(2); cond_resched(); continue; }
        stamp=ktime_get_ns();
        rtw89_write32(rtwdev,0x80050,0x18716000+rp*8);
        rtw89_write32(rtwdev,0x80054,(0x08000000|(id<<15))+24);
        rtw89_write32(rtwdev,0x80058,BIT(31)|bytes); dma_active=true;
        timing[1]+=ktime_get_ns()-stamp; stamp=ktime_get_ns();
        if(previous) {
            queued=iq_dispatch_packet(rtwdev,previous_id,false);
            previous=false; /* On timeout, ownership is uncertain; unload. */
            if(queued) next_ret=queued; else packets++;
        }
        timing[3]+=ktime_get_ns()-stamp; stamp=ktime_get_ns();
        if(!next_ret) {
            next_ret=iq_prepare_packet(rtwdev,bytes,consumed+records,&next_id);
            next_owned=!next_ret;
        }
        timing[0]+=ktime_get_ns()-stamp; stamp=ktime_get_ns();
        ret=read_poll_timeout_atomic(rtw89_read32,ctrl,!(ctrl&BIT(31)),1,1000,false,rtwdev,0x80058);
        timing[2]+=ktime_get_ns()-stamp;
        if(ret) break; /* Never free a packet while DMA may still be writing. */
        dma_active=false; rtw89_write32(rtwdev,0x800e4,BIT(5));
        now=ktime_get_ns();
        if(now-last_poll>=poll_limit) { ret=-EOVERFLOW; break; }
        last_poll=now;
        wp=rtw89_read32(rtwdev,0x9664)&0xffff;
        if(wp>=40960) { ret=-ERANGE; break; }
        produced+=(wp+40960-last)%40960; last=wp;
        backlog=produced-consumed; max_backlog=max(backlog,max_backlog);
        /* Source must not wrap onto a block during the copy itself. */
        if(backlog>=40960) { ret=-EOVERFLOW; break; }
        consumed+=records; rp=(rp+records)%40960;
        previous_id=id; previous=true; owned=false;
        if(next_ret) { ret=next_ret; break; }
        id=next_id; owned=next_owned; next_owned=false;
        cond_resched();
    }
finish:
    if(started) rtw89_write32(rtwdev,0x9660,(4<<16)|(11<<8));
    if(previous) { queued=iq_dispatch_packet(rtwdev,previous_id,false); if(!queued) packets++; else if(!ret) ret=queued; }
    if(owned&&!dma_active) iq_dispatch_packet(rtwdev,id,true);
    if(next_owned) iq_dispatch_packet(rtwdev,next_id,true);
    rtw89_write32(rtwdev,0xc04,0x18008000);
    if(!(rtw89_read32(rtwdev,0x80058)&BIT(31)))
        for(i=0;i<3;i++) rtw89_write32(rtwdev,0x80050+4*i,dma_old[i]);
    snprintf(iq_cpuio_result,sizeof(iq_cpuio_result),
      "ret=%d pipeline=1 packets=%u produced=%u consumed=%u max_backlog=%u elapsed_ns=%llu loss=0x%x stages_ns=%llu,%llu,%llu,%llu\n",
      ret,packets,produced,consumed,max_backlog,ktime_get_ns()-start,rtw89_read32(rtwdev,0x966c),timing[0],timing[1],timing[2],timing[3]);
    rtw89_write32(rtwdev,0xc04,filter);
    wiphy_unlock(rtwdev->hw->wiphy);
    WRITE_ONCE(iq_running,false); atomic_set(&iq_stream_claimed,0);
    return ret==-EBUSY?ret:count;
}

static ssize_t iq_stream_write(struct file *file, const char __user *buf, size_t count, loff_t *pos)
{
    return READ_ONCE(iq_pipeline) ? iq_stream_pipeline(file,buf,count,pos) : iq_stream_serial(file,buf,count,pos);
}
