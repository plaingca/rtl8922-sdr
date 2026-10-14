/* SPDX-License-Identifier: GPL-2.0-only */
/* Manual frozen-LA experiment. No firmware-owned PAXI queues are touched.
 * Use only idle IDDMA channels 2..5 and producer-owned PLE allocations.
 * Poison and verify every destination, every round, outside the DMA timer.
 */
static char iq_parallel_result[2048];
static ssize_t iq_parallel_read(struct file *f, char __user *b, size_t n, loff_t *p)
{
    return simple_read_from_buffer(b, n, p, iq_parallel_result,
                                   strlen(iq_parallel_result));
}

static ssize_t iq_parallel_write(struct file *f, const char __user *b,
                                 size_t n, loff_t *p)
{
    struct rtw89_dev *d = f->private_data;
    unsigned int lanes, physical_mode, bytes, rounds, j, k, lane;
    u32 aperture, saved[4][3], dest[4] = {}, source[4], ctrl, busy;
    u32 owned = 0, active = 0, mask = 0, mismatches = 0, guards = 0;
    u32 completed = 0, saved_mask = 0, monitor = 0;
    u16 ids[4] = {};
    u32 *reference;
    u64 start, elapsed = 0, wall;
    int ret = 0, release_ret;
    char text[80];

    if (n >= sizeof(text) || copy_from_user(text, b, n)) return -EINVAL;
    text[n] = 0;
    if (sscanf(text, "%u %u %u %u", &lanes, &physical_mode, &bytes, &rounds) != 4 ||
        (lanes != 1 && lanes != 2 && lanes != 4) || physical_mode > 1 ||
        (bytes != 4096 && bytes != 8192) || !rounds || rounds > 100)
        return -EINVAL;
    if (atomic_cmpxchg(&iq_stream_claimed, 0, 1)) return -EBUSY;
    reference = kvmalloc(lanes * bytes, GFP_KERNEL);
    if (!reference) { atomic_set(&iq_stream_claimed, 0); return -ENOMEM; }
    wall = ktime_get_ns();
    wiphy_lock(d->hw->wiphy);
    aperture = rtw89_read32(d, 0xc04);
    if ((rtw89_read32(d, 0x9660) & BIT(3)) ||
        (rtw89_read32(d, 0x21090) & 1)) { ret = -EBUSY; goto out; }
    rtw89_write32(d, 0xc04, 0x18008000);
    for (lane = 0; lane < lanes; lane++) {
        u32 reg = 0x80020 + lane * 16;
        mask |= BIT(lane + 2);
        for (k = 0; k < 3; k++) saved[lane][k] = rtw89_read32(d, reg + k * 4);
        if (saved[lane][2] == 0xffffffff || saved[lane][2] == 0xdeadbeef ||
            (saved[lane][2] & BIT(31)) ||
            (rtw89_read32(d, 0x800e8) & BIT(lane + 2))) {
            ret = -EBUSY; goto out;
        }
        saved_mask |= BIT(lane);
    }
    for (lane = 0; lane < lanes; lane++) {
        u32 physical;
        /* Eight-byte pad gives a 32-byte aligned payload, plus two guards. */
        ret = iq_prepare_packet(d, bytes + 16, 0, &ids[lane]);
        if (ret) goto out;
        owned |= BIT(lane);
        physical = iq_owned_physical(d, ids[lane], bytes + 16);
        if (physical_mode && !physical) { ret = -ENOSPC; goto out; }
        dest[lane] = physical_mode ? physical + 8 :
                     (0x08000000 | (ids[lane] << 15)) + 32;
        if ((dest[lane] & 0x7ffff) + bytes + 4 >= 0x80000) {
            ret = -ENOSPC; goto out;
        }
        source[lane] = 0x18716000 + lane * bytes;
    }
    rtw89_write32(d, 0xc04, 0x18700000);
    for (k = 0; k < lanes * bytes / 4; k++)
        reference[k] = rtw89_read32(d, 0x96000 + k * 4);

    for (j = 0; j < rounds; j++) {
        if (fatal_signal_pending(current)) { ret = -EINTR; break; }
        /* Complementing the reference detects no-op or partial transfers. */
        for (lane = 0; lane < lanes; lane++) {
            u32 offset = 0x80000 + (dest[lane] & 0x7ffff);
            rtw89_write32(d, 0xc04, dest[lane] & ~0x7ffff);
            rtw89_write32(d, offset - 4, 0x13579bdf);
            for (k = 0; k < bytes / 4; k++)
                rtw89_write32(d, offset + k * 4, ~reference[lane * bytes / 4 + k]);
            rtw89_write32(d, offset + bytes, 0x2468ace0);
        }
        rtw89_write32(d, 0xc04, 0x18008000);
        start = ktime_get_ns();
        for (lane = 0; lane < lanes; lane++) {
            u32 reg = 0x80020 + lane * 16;
            rtw89_write32(d, reg, source[lane]);
            rtw89_write32(d, reg + 4, dest[lane]);
            rtw89_write32(d, reg + 8, BIT(31) | bytes);
            active |= BIT(lane);
        }
        for (lane = 0; lane < lanes; lane++) {
            ret = read_poll_timeout_atomic(rtw89_read32, ctrl, !(ctrl & BIT(31)),
                      0, 2000, false, d, 0x80028 + lane * 16);
            if (ret) break;
            ret = read_poll_timeout_atomic(rtw89_read32, busy,
                      !(busy & BIT(lane + 2)), 0, 2000, false, d, 0x800e8);
            if (ret) break;
            active &= ~BIT(lane);
        }
        elapsed += ktime_get_ns() - start;
        if (ret) break;
        rtw89_write32(d, 0x800e4, mask);
        monitor |= rtw89_read32(d, 0x800fc);
        for (lane = 0; lane < lanes; lane++) {
            u32 offset = 0x80000 + (dest[lane] & 0x7ffff);
            rtw89_write32(d, 0xc04, dest[lane] & ~0x7ffff);
            if (rtw89_read32(d, offset - 4) != 0x13579bdf) guards++;
            for (k = 0; k < bytes / 4; k++)
                if (rtw89_read32(d, offset + k * 4) != reference[lane * bytes / 4 + k])
                    mismatches++;
            if (rtw89_read32(d, offset + bytes) != 0x2468ace0) guards++;
        }
        completed++;
        if (mismatches || guards) { ret = -EIO; break; }
        /* No transfer is active; restore the shared aperture before yielding. */
        rtw89_write32(d, 0xc04, aperture);
        wiphy_unlock(d->hw->wiphy);
        cond_resched();
        wiphy_lock(d->hw->wiphy);
        aperture = rtw89_read32(d, 0xc04);
    }
out:
    rtw89_write32(d, 0xc04, 0x18008000);
    /* A timeout leaves ownership ambiguous. Retain allocations and registers
     * until module teardown instead of freeing a possible DMA destination. */
    if (!active) {
        for (lane = 0; lane < lanes; lane++) {
            if (owned & BIT(lane)) {
                release_ret = iq_dispatch_packet(d, ids[lane], true);
                if (release_ret && !ret) ret = release_ret;
            }
            if (saved_mask & BIT(lane))
                for (k = 0; k < 3; k++)
                    rtw89_write32(d, 0x80020 + lane * 16 + k * 4, saved[lane][k]);
        }
    }
    rtw89_write32(d, 0xc04, aperture);
    wiphy_unlock(d->hw->wiphy);
    snprintf(iq_parallel_result, sizeof(iq_parallel_result),
             "ret=%d lanes=%u physical=%u bytes=%u rounds=%u completed=%u "
             "dma_ns=%llu wall_ns=%llu mismatched_words=%u guard_errors=%u "
             "active=%x monitor=%x\n", ret, lanes, physical_mode, bytes, rounds,
             completed, elapsed, ktime_get_ns() - wall, mismatches, guards, active, monitor);
    kvfree(reference);
    atomic_set(&iq_stream_claimed, 0);
    return n;
}
static const struct file_operations iq_parallel_fops = {
    .owner = THIS_MODULE, .open = simple_open, .read = iq_parallel_read,
    .write = iq_parallel_write, .llseek = default_llseek,
};
