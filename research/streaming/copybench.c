/* SPDX-License-Identifier: GPL-2.0-only */
/* Included after the working driver's IQ helpers in an isolated build.
 * Only channels 2..5 and a producer-owned PLE packet may be used. The LA
 * writer must be stopped. Flags 28/29 occur in ROM routine 0x20008904;
 * their meanings are not assumed. Every final copy is compared in full.
 */
static char iq_copybench_result[2048];
static ssize_t iq_copybench_read(struct file *f, char __user *b, size_t n, loff_t *p)
{
    return simple_read_from_buffer(b, n, p, iq_copybench_result,
                                   strlen(iq_copybench_result));
}

static ssize_t iq_copybench_write(struct file *f, const char __user *b,
                                  size_t n, loff_t *p)
{
    struct rtw89_dev *d = f->private_data;
    unsigned int channel, flags, physical_mode, staged, bytes, j, k;
    u32 aperture, saved[3], ctrl = 0, reg, dest, virtual, physical;
    u32 errors = 0, monitor = 0, busy = 0;
    u32 *reference = NULL;
    u16 id = 0;
    bool owned = false, active = false, have_regs = false;
    u64 start = 0, elapsed = 0;
    int ret = 0;
    char text[80];

    if (n >= sizeof(text) || copy_from_user(text, b, n)) return -EINVAL;
    text[n] = 0;
    if (sscanf(text, "%u %x %u %u %u", &channel, &flags, &physical_mode,
               &staged, &bytes) != 5 || channel < 2 || channel > 5 ||
        (flags & ~0x30000000U) || physical_mode > 1 || staged > 1 ||
        (bytes != 4096 && bytes != 8192 && bytes != 10240)) return -EINVAL;
    if (atomic_cmpxchg(&iq_stream_claimed, 0, 1)) return -EBUSY;
    reference = kvmalloc(bytes, GFP_KERNEL);
    if (!reference) { atomic_set(&iq_stream_claimed, 0); return -ENOMEM; }
    wiphy_lock(d->hw->wiphy);
    aperture = rtw89_read32(d, 0xc04);
    if ((rtw89_read32(d, 0x9660) & BIT(3)) ||
        (rtw89_read32(d, 0x21090) & 1)) { ret = -EBUSY; goto out; }
    reg = 0x80000 + channel * 16;
    rtw89_write32(d, 0xc04, 0x18008000);
    for (j = 0; j < 3; j++) saved[j] = rtw89_read32(d, reg + 4*j);
    if (saved[2] == 0xdeadbeef || (saved[2] & BIT(31)) ||
        (rtw89_read32(d, 0x800e8) & BIT(channel))) {
        ret = -EBUSY; goto out;
    }
    have_regs = true;
    /* Extra eight bytes allow an aligned physical destination at offset 32. */
    ret = iq_prepare_packet(d, bytes + 8, 0, &id);
    if (ret) goto out;
    owned = true;
    virtual = (0x08000000 | (id << 15)) + 24;
    physical = iq_owned_physical(d, id, bytes + 8);
    if (physical_mode && !physical) { ret = -ENOSPC; goto out; }
    dest = physical_mode ? physical + 8 : virtual;
    rtw89_write32(d, 0xc04, 0x18700000);
    for (k = 0; k < bytes/4; k++) reference[k] = rtw89_read32(d, 0x96000 + 4*k);
    rtw89_write32(d, 0xc04, 0x18008000);
    start = ktime_get_ns();
    for (j = 0; j < 100; j++) {
        if (fatal_signal_pending(current)) { ret = -EINTR; break; }
        rtw89_write32(d, reg, 0x18716000);
        rtw89_write32(d, reg + 4, dest);
        if (staged) rtw89_write32(d, reg + 8, flags | bytes);
        rtw89_write32(d, reg + 8, BIT(31) | flags | bytes);
        active = true;
        ret = read_poll_timeout_atomic(rtw89_read32, ctrl, !(ctrl & BIT(31)),
                                       0, 2000, false, d, reg + 8);
        if (ret) break;
        /* ROM also waits for the channel busy bit, not just ownership. */
        ret = read_poll_timeout_atomic(rtw89_read32, busy, !(busy & BIT(channel)),
                                       0, 2000, false, d, 0x800e8);
        if (ret) break;
        active = false;
        rtw89_write32(d, 0x800e4, BIT(channel));
    }
    elapsed = ktime_get_ns() - start;
    monitor = rtw89_read32(d, 0x800fc);
    if (!active) {
        rtw89_write32(d, 0xc04, dest & ~0x7ffff);
        for (k = 0; k < bytes/4; k++)
            if (reference[k] != rtw89_read32(d, 0x80000 + (dest & 0x7ffff) + 4*k)) errors++;
    }
out:
    if (owned && !active) iq_dispatch_packet(d, id, true);
    if (have_regs && !active) {
        rtw89_write32(d, 0xc04, 0x18008000);
        for (j = 0; j < 3; j++) rtw89_write32(d, reg + 4*j, saved[j]);
    }
    snprintf(iq_copybench_result, sizeof(iq_copybench_result),
             "ret=%d channel=%u flags=%x physical=%u staged=%u bytes=%u "
             "copies=100 elapsed_ns=%llu mismatched_words=%u active=%u ctrl=%x busy=%x monitor=%x\n",
             ret, channel, flags, physical_mode, staged, bytes, elapsed,
             errors, active, ctrl, busy, monitor);
    rtw89_write32(d, 0xc04, aperture);
    wiphy_unlock(d->hw->wiphy);
    kvfree(reference);
    atomic_set(&iq_stream_claimed, 0);
    return n;
}
static const struct file_operations iq_copybench_fops = {
    .owner = THIS_MODULE, .open = simple_open, .read = iq_copybench_read,
    .write = iq_copybench_write, .llseek = default_llseek,
};
