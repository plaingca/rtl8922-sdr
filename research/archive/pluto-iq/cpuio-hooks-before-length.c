/* Diagnostic ownership test: only a newly allocated card PLE buffer. */
static char iq_cpuio_result[512];
static ssize_t iq_cpuio_read(struct file *file, char __user *buf, size_t count, loff_t *pos)
{
    return simple_read_from_buffer(buf, count, pos, iq_cpuio_result, strlen(iq_cpuio_result));
}
static ssize_t iq_cpuio_write(struct file *file, const char __user *buf, size_t count, loff_t *pos)
{
    struct rtw89_dev *rtwdev = file->private_data;
    const struct rtw89_mac_gen_def *mac = rtwdev->chip->mac_def;
    struct rtw89_cpuio_ctrl ctrl = {};
    u32 filter, addr, aperture, initial, values[32] = {};
    u32 dma_old[3] = {}, dma_ctrl = 0, dma_monitor = 0, copied = 0;
    int dma_ret = -999;
    unsigned int command, i;
    u16 id;
    int ret, release_ret;
    bool verified = true;
    char text[32];
    if (count >= sizeof(text)) return -EINVAL;
    if (copy_from_user(text, buf, count)) return -EFAULT;
    text[count] = 0;
    if (kstrtouint(text, 0, &command) || (command != 0 && command != 8 && command != 104 && command != 64 && command != 72 && command != 96 && command != 128)) return -EINVAL;
    wiphy_lock(rtwdev->hw->wiphy);
    ret = mac->dle_buf_req(rtwdev, 128, false, &id);
    if (ret) {
        snprintf(iq_cpuio_result, sizeof(iq_cpuio_result), "allocate=%d\n", ret);
        goto unlock;
    }
    addr = 0x08000000 | (id << 15);
    aperture = 0x80000 + (addr & 0x7ffff);
    filter = rtw89_read32(rtwdev, 0xc04);
    rtw89_write32(rtwdev, 0xc04, addr & ~0x7ffff);
    initial = rtw89_read32(rtwdev, aperture);
    if (initial == 0xffffffff || initial == 0xdeadbeef) {
        verified = false;
    } else {
        values[0] = (3 << 24) | (command ? command : 72);
        values[1] = id | (1 << 16);
        values[4] = command;
        values[5] = 0x1234abcd;
        for (i = 6; i < ARRAY_SIZE(values); ++i) values[i] = 0x49510000 | i;
        for (i = 0; i < ARRAY_SIZE(values); ++i) rtw89_write32(rtwdev, aperture + i * 4, values[i]);
        for (i = 0; i < ARRAY_SIZE(values); ++i)
            if (rtw89_read32(rtwdev, aperture + i * 4) != values[i]) verified = false;
    }
    if (verified && command == 128) {
        rtw89_write32(rtwdev, 0xc04, 0x18008000);
        for (i = 0; i < 3; ++i) dma_old[i] = rtw89_read32(rtwdev, 0x80050 + 4 * i);
        dma_ctrl = dma_old[2];
        if (dma_ctrl != 0xdeadbeef && !(dma_ctrl & BIT(31)) && !(rtw89_read32(rtwdev, 0x800e8) & BIT(5))) {
            rtw89_write32(rtwdev, 0x80050, addr + 96);
            rtw89_write32(rtwdev, 0x80054, addr + 24);
            rtw89_write32(rtwdev, 0x80058, 32);
            rtw89_write32(rtwdev, 0x80058, BIT(31) | 32);
            dma_ret = read_poll_timeout_atomic(rtw89_read32, dma_ctrl, !(dma_ctrl & BIT(31)), 1, 1000, false, rtwdev, 0x80058);
            dma_monitor = rtw89_read32(rtwdev, 0x800fc);
            if (!dma_ret) {
                for (i = 0; i < 3; ++i) rtw89_write32(rtwdev, 0x80050 + 4 * i, dma_old[i]);
                rtw89_write32(rtwdev, 0x800e4, BIT(5));
            }
        }
        rtw89_write32(rtwdev, 0xc04, addr & ~0x7ffff);
        copied = rtw89_read32(rtwdev, aperture + 24);
    }
    rtw89_write32(rtwdev, 0xc04, filter);
    ctrl.cmd_type = CPUIO_OP_CMD_ENQ_TO_TAIL;
    ctrl.start_pktid = id; ctrl.end_pktid = id;
    if (command && verified) {
        ctrl.dst_pid = PLE_DLE_PORT_ID_DISPATCH;
        ctrl.dst_qid = 0;
    } else {
        ctrl.dst_pid = PLE_DLE_PORT_ID_PLRLS;
        ctrl.dst_qid = PLE_DLE_QUEID_NO_REPORT;
    }
    release_ret = mac->set_cpuio(rtwdev, &ctrl, false);
    snprintf(iq_cpuio_result, sizeof(iq_cpuio_result),
             "id=%u virtual=0x%x initial=0x%x verified=%u port=%u queue=%u enqueue=%d dma=%d ctrl=0x%x mon=0x%x copied=0x%x\n",
             id, addr, initial, verified, ctrl.dst_pid, ctrl.dst_qid, release_ret, dma_ret, dma_ctrl, dma_monitor, copied);
unlock:
    wiphy_unlock(rtwdev->hw->wiphy);
    return count;
}
static const struct file_operations iq_cpuio_fops = {
    .owner = THIS_MODULE, .open = simple_open, .read = iq_cpuio_read,
    .write = iq_cpuio_write, .llseek = default_llseek,
};
