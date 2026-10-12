/* Bounded raw LA -> IDDMA channel 5 -> owned PLE -> host dispatch test. */
static ssize_t iq_stream_write(struct file *file, const char __user *buf, size_t count, loff_t *pos)
{
    struct rtw89_dev *rtwdev = file->private_data;
    const struct rtw89_mac_gen_def *mac = rtwdev->chip->mac_def;
    struct rtw89_cpuio_ctrl queue = { .cmd_type = CPUIO_OP_CMD_ENQ_TO_TAIL };
    u32 filter, dma_old[3], ctrl, monitor = 0, addr, aperture, state;
    u32 last = 0, wp, rp = 0, backlog = 0, max_backlog = 0;
    u32 produced = 0, consumed = 0, packets = 0, loss, headers[6];
    u16 id;
    int ret = 0, i;
    u64 start, elapsed, end;
    unsigned int ms;
    char text[24];
    if (count >= sizeof(text) || copy_from_user(text, buf, count)) return -EINVAL;
    text[count] = 0;
    if (kstrtouint(text, 0, &ms) || ms < 10 || ms > 1000) return -EINVAL;
    wiphy_lock(rtwdev->hw->wiphy);
    filter = rtw89_read32(rtwdev, 0xc04);
    rtw89_write32(rtwdev, 0xc04, 0x18008000);
    for (i = 0; i < 3; ++i) dma_old[i] = rtw89_read32(rtwdev, 0x80050 + 4*i);
    if ((dma_old[2] & BIT(31)) || dma_old[2] == 0xdeadbeef || (rtw89_read32(rtwdev, 0x800e8) & BIT(5))) { ret = -EBUSY; goto finish; }
    rtw89_write32(rtwdev, 0x9668, 0);
    rtw89_write32(rtwdev, 0x9660, (4<<16)|(11<<8)|1);
    start = ktime_get_ns(); end = start + (u64)ms * 1000000;
    rtw89_write32(rtwdev, 0x9660, (4<<16)|(11<<8)|9);
    while (ktime_get_ns() < end) {
        state = rtw89_read32(rtwdev, 0x9664); wp = state & 0xffff;
        if (wp >= 40960) { ret = -ERANGE; break; }
        produced += (wp + 40960 - last) % 40960; last = wp;
        backlog = produced - consumed;
        if (backlog > max_backlog) max_backlog = backlog;
        if (backlog >= 40960) { ret = -EOVERFLOW; break; }
        if (backlog < 512) { udelay(2); cond_resched(); continue; }
        ret = mac->dle_buf_req(rtwdev, 4120, false, &id);
        if (ret) break;
        addr = 0x08000000 | (id << 15); aperture = 0x80000 + (addr & 0x7ffff);
        rtw89_write32(rtwdev, 0xc04, addr & ~0x7ffff);
        headers[0] = (3<<24)|4096; headers[1] = id|(8<<16);
        headers[2] = 0; headers[3] = 0; headers[4] = 0; headers[5] = consumed;
        for (i=0; i<6; ++i) rtw89_write32(rtwdev, aperture+4*i, headers[i]);
        rtw89_write32(rtwdev, 0xc04, 0x18008000);
        rtw89_write32(rtwdev, 0x80050, 0x18716000+rp*8);
        rtw89_write32(rtwdev, 0x80054, addr+24);
        rtw89_write32(rtwdev, 0x80058, BIT(31)|4096);
        ret = read_poll_timeout_atomic(rtw89_read32, ctrl, !(ctrl & BIT(31)), 1, 1000, false, rtwdev, 0x80058);
        monitor = rtw89_read32(rtwdev, 0x800fc);
        queue.start_pktid = id; queue.end_pktid = id;
        queue.dst_pid = ret ? PLE_DLE_PORT_ID_PLRLS : PLE_DLE_PORT_ID_DISPATCH;
        queue.dst_qid = 0;
        if (!ret) rtw89_write32(rtwdev, 0x800e4, BIT(5));
        i = mac->set_cpuio(rtwdev, &queue, false);
        if (ret || i) { if (!ret) ret = i; break; }
        consumed += 512; rp = (rp+512)%40960; packets++;
        cond_resched();
    }
    elapsed = ktime_get_ns()-start;
    rtw89_write32(rtwdev, 0x9660, (4<<16)|(11<<8));
    loss = rtw89_read32(rtwdev, 0x966c);
    snprintf(iq_cpuio_result,sizeof(iq_cpuio_result),"ret=%d packets=%u produced=%u consumed=%u max_backlog=%u elapsed_ns=%llu loss=0x%x monitor=0x%x\n",ret,packets,produced,consumed,max_backlog,elapsed,loss,monitor);
finish:
    rtw89_write32(rtwdev, 0xc04, 0x18008000);
    if (!(rtw89_read32(rtwdev, 0x80058) & BIT(31)))
        for (i=0; i<3; ++i) rtw89_write32(rtwdev,0x80050+4*i,dma_old[i]);
    rtw89_write32(rtwdev, 0xc04, filter);
    wiphy_unlock(rtwdev->hw->wiphy);
    return ret == -EBUSY ? ret : count;
}
static const struct file_operations iq_stream_fops = {
    .owner=THIS_MODULE, .open=simple_open, .read=iq_cpuio_read,
    .write=iq_stream_write, .llseek=default_llseek,
};
