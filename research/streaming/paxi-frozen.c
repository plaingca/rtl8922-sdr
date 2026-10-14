/* SPDX-License-Identifier: GPL-2.0-only */
/* Frozen/bounded/continuous host-target packets through supported TX0. This deliberately
 * resets/holds the WCPU before borrowing TX0 with a private owned ring.
 * DCPU control is unavailable on this card and is recorded, never modified.
 * Mandatory module teardown/reinitialization follows; never resume firmware
 * from its old software queue state. No wireless transmit queue is selected.
 */
static char iq_paxi_frozen_result[16384];
static bool iq_paxi_cpu_held;
static bool iq_paxi_static_ring;
static u32 iq_paxi_burst = 1;
static bool iq_paxi_disable_watchdog;
static bool iq_paxi_mmio_valid(u32 value)
{
    return value != 0xeaeaeaea && value != 0xdeadbeef && value != 0xffffffff;
}
static int iq_paxi_disable_wcpu_watchdog(struct rtw89_dev *d)
{
    u32 saved = rtw89_read32(d, R_BE_FILTER_MODEL_ADDR), value;
    int ret = 0;

    /* Pinned mac.c rtw89_disable_fw_watchdog CPU-local sequence. Keep PCIe
     * error interrupts and recovery enabled; do not mask a watchdog failure. */
    rtw89_write32(d, R_BE_FILTER_MODEL_ADDR, CPU_LOCAL_BASE_ADDR_BE + R_AX_WDT_CTRL);
    value = rtw89_read32(d, R_BE_INDIR_ACCESS_ENTRY);
    if (!iq_paxi_mmio_valid(value)) { ret = -EIO; goto restore; }
    rtw89_write32(d, R_BE_INDIR_ACCESS_ENTRY, WDT_CTRL_ALL_DIS);
    if (rtw89_read32(d, R_BE_INDIR_ACCESS_ENTRY) != WDT_CTRL_ALL_DIS) { ret = -EIO; goto restore; }
    rtw89_write32(d, R_BE_FILTER_MODEL_ADDR, CPU_LOCAL_BASE_ADDR_BE + R_AX_WDT_STATUS);
    value = rtw89_read32(d, R_BE_INDIR_ACCESS_ENTRY);
    if (!iq_paxi_mmio_valid(value)) { ret = -EIO; goto restore; }
    value |= B_AX_FS_WDT_INT;
    value &= ~B_AX_FS_WDT_INT_MSK;
    rtw89_write32(d, R_BE_INDIR_ACCESS_ENTRY, value);
    value = rtw89_read32(d, R_BE_INDIR_ACCESS_ENTRY);
    if (!iq_paxi_mmio_valid(value) || (value & B_AX_FS_WDT_INT)) ret = -EIO;
restore:
    rtw89_write32(d, R_BE_FILTER_MODEL_ADDR, saved);
    return ret;
}
struct iq_paxi_snapshot {
    u32 ple[14], wde[5], freepg[2][2], empty[2][2], rx[2];
    u32 packets, host_packets, host_drops;
    u64 time_ns;
    int error;
};
/* Protected by iq_stream_claimed, like the diagnostic result buffer. */
static struct iq_paxi_snapshot iq_paxi_snapshots[8];
static u32 iq_paxi_original_controls[32];
static u32 iq_paxi_function_pointers[24];
struct iq_paxi_source {
    u32 last, state, loss, reason;
    u64 produced, consumed, max_backlog, origin;
    u32 last_stage, max_gap_from, max_gap_to;
    u64 last_poll, poll_limit, max_poll_gap;
};
static struct iq_paxi_source iq_paxi_source_state;
static int iq_paxi_source_poll(struct rtw89_dev *d, struct iq_paxi_source *s, u32 stage)
{
    u32 state = rtw89_read32(d, 0x9664), wp = state & 0xffff;
    u64 stamp = ktime_get_ns(), gap = stamp - s->last_poll;

    s->state = state;
    if (gap > s->max_poll_gap) {
        s->max_poll_gap = gap;
        s->max_gap_from = s->last_stage; s->max_gap_to = stage;
    }
    s->last_stage = stage;
    if (!iq_paxi_mmio_valid(state)) { s->reason = 5; return -EIO; }
    if (gap >= s->poll_limit) { s->reason = 1; return -EOVERFLOW; }
    if (((state >> 17) & 7) != 1) { s->reason = 2; return -EIO; }
    if (wp >= 40960) { s->reason = 3; return -ERANGE; }
    s->produced += (wp + 40960 - s->last) % 40960;
    s->last = wp; s->last_poll = stamp;
    s->max_backlog = max(s->max_backlog, s->produced - s->consumed);
    if (s->produced - s->consumed >= 40960) { s->reason = 4; return -EOVERFLOW; }
    return 0;
}
static int iq_paxi_dfi(struct rtw89_dev *d, unsigned int type,
                       unsigned int target, unsigned int addr, u32 *value)
{
    struct rtw89_mac_dle_dfi_ctrl ctrl = {
        .type = type, .target = target, .addr = addr,
    };
    int ret = rtw89_mac_dle_dfi_cfg(d, &ctrl);

    *value = ret ? 0xffffffff : ctrl.out_data;
    return ret;
}
static int iq_paxi_refresh_available(struct rtw89_dev *d)
{
    unsigned int k;
    u32 val, ctrl, mask, quota, type, saved;
    int ret;

    /* Pinned mac_be.c dle_upd_qta_aval_page_be protocol. Hardware recomputes
     * availability; this does not invent a return count. Only request it
     * between idle packets with both relevant quotas fully reclaimed. */
    if (rtw89_read32(d, 0x80104)) return -EBUSY;
    for (k = 0; k < 2; k++) {
        type = k ? DLE_CTRL_TYPE_WDE : DLE_CTRL_TYPE_PLE;
        quota = k ? 1 : 2;
        ret = iq_paxi_dfi(d, type, DLE_DFI_TYPE_QUOTA, quota, &val);
        if (ret) return ret;
        if (FIELD_GET(B_AX_DLE_USE_PGNUM, val) ||
            FIELD_GET(B_AX_DLE_RSV_PGNUM, val) != (k ? 6 : 192)) return -EBUSY;
    }
    for (k = 0; k < 2; k++) {
        ctrl = k ? R_BE_WDE_BUFMGN_CTL : R_BE_PLE_BUFMGN_CTL;
        mask = k ? B_BE_WDE_AVAL_UPD_QTAID_MASK : B_BE_PLE_AVAL_UPD_QTAID_MASK;
        quota = k ? 1 : 2;
        saved = rtw89_read32(d, ctrl);
        if (saved == 0xdeadbeef || saved == 0xffffffff ||
            (saved & B_BE_PLE_AVAL_UPD_REQ)) return -EIO;
        rtw89_write32_mask(d, ctrl, mask, quota);
        rtw89_write32_set(d, ctrl, B_BE_PLE_AVAL_UPD_REQ);
        ret = read_poll_timeout(rtw89_read32, val, !(val & B_BE_PLE_AVAL_UPD_REQ),
                                1, 2000, false, d, ctrl);
        if (ret) return ret;
        rtw89_write32_mask(d, ctrl, mask, FIELD_GET(B_BE_PLE_AVAL_UPD_QTAID_MASK, saved));
    }
    return 0;
}
static void iq_paxi_snapshot_read(struct rtw89_dev *d, struct iq_paxi_snapshot *s,
                                  unsigned int packets)
{
    struct rtw89_pci *pci = (struct rtw89_pci *)d->priv;
    unsigned int k, type, addr;

    s->packets = packets;
    s->time_ns = ktime_get_ns();
    s->host_packets = READ_ONCE(iq_scope_packets);
    s->host_drops = READ_ONCE(iq_scope_dropped);
    for (k = 0; k < ARRAY_SIZE(s->ple); k++)
        s->error |= iq_paxi_dfi(d, DLE_CTRL_TYPE_PLE, DLE_DFI_TYPE_QUOTA, k, &s->ple[k]);
    for (k = 0; k < ARRAY_SIZE(s->wde); k++)
        s->error |= iq_paxi_dfi(d, DLE_CTRL_TYPE_WDE, DLE_DFI_TYPE_QUOTA, k, &s->wde[k]);
    /* Raw free-page and empty-group views; do not infer undocumented fields. */
    for (type = 0; type < 2; type++)
        for (addr = 0; addr < 2; addr++) {
            s->error |= iq_paxi_dfi(d, type, DLE_DFI_TYPE_FREEPG, addr, &s->freepg[type][addr]);
            s->error |= iq_paxi_dfi(d, type, DLE_DFI_TYPE_QEMPTY, addr, &s->empty[type][addr]);
        }
    for (k = 0; k < 2; k++)
        s->rx[k] = rtw89_read32(d, pci->rx.rings[k].bd_ring.addr.idx);
}
/* Read only: leave watchdog control, interrupt masks and W1C status alone.
 * CPU-local access follows mac.c's indirect memory accessor exactly. */
static const u32 iq_watch_addresses[] = {
    CPU_LOCAL_BASE_ADDR_BE + R_AX_WDT_CTRL,
    CPU_LOCAL_BASE_ADDR_BE + R_AX_WDT_STATUS,
    R_BE_WCPU_FW_CTRL, R_BE_SYS_CFG5, R_BE_HISR0, R_BE_HALT_C2H,
    0x3050, 0x305c, 0x3068, 0x3080, 0x308c, 0x3098,
    0x3140, 0x314c, 0x3158, 0x3160, 0x3168,
};
static void iq_watch_read(struct rtw89_dev *d, u32 *values)
{
    u32 saved = rtw89_read32(d, R_BE_FILTER_MODEL_ADDR);
    unsigned int k;

    for (k = 0; k < ARRAY_SIZE(iq_watch_addresses); k++) {
        u32 addr = iq_watch_addresses[k];
        if (addr >= CPU_LOCAL_BASE_ADDR_BE) {
            rtw89_write32(d, R_BE_FILTER_MODEL_ADDR, addr);
            values[k] = rtw89_read32(d, R_BE_INDIR_ACCESS_ENTRY);
        } else {
            values[k] = rtw89_read32(d, addr);
        }
    }
    rtw89_write32(d, R_BE_FILTER_MODEL_ADDR, saved);
}
static ssize_t iq_paxi_frozen_read(struct file *f, char __user *b, size_t n, loff_t *p)
{
    return simple_read_from_buffer(b, n, p, iq_paxi_frozen_result,
                                   strlen(iq_paxi_frozen_result));
}

#include "chan.h"

/* Retune requests execute on the producer, between completed DMA batches.
 * Keep the private ring and held firmware; pause only LA sampling and TX0.
 * Channel programming uses pinned chip callbacks, without firmware H2C/RFK. */
static DEFINE_MUTEX(iq_paxi_retune_mutex);
static DECLARE_WAIT_QUEUE_HEAD(iq_paxi_retune_wait);
static u32 iq_paxi_retune_request, iq_paxi_retune_mhz, iq_paxi_retune_seq;
static u32 iq_paxi_retune_count;
static int iq_paxi_retune_ret;
static u64 iq_paxi_retune_pause_ns, iq_paxi_retune_discarded;

static int iq_paxi_retune_live(struct rtw89_dev *d, struct iq_paxi_source *s,
                              u64 completed, u32 stop, unsigned int *slot, u32 mhz)
{
    u64 began = ktime_get_ns(), deadline;
    unsigned long flags;
    struct rtw89_chan chan;
    struct rtw89_channel_help_params help = {};
    enum rtw89_band band;
    u32 index, channel, expected_rf, path;
    int ret;

    if (mhz < 3000) {
        band = RTW89_BAND_2G;
        channel = mhz == 2484 ? 14 : (mhz - 2407) / 5;
    } else if (mhz < 5955) {
        band = RTW89_BAND_5G;
        channel = (mhz - 5000) / 5;
    } else {
        band = RTW89_BAND_6G;
        channel = (mhz - 5950) / 5;
    }
    rtw89_chan_create(&chan, channel, channel, band, RTW89_CHANNEL_WIDTH_160);
    /* nl80211 maps 5 GHz channel numbers 182..196 into Japan's 4.9 GHz
     * allocation. Diagnostic RF indexes here use (MHz-5000)/5 throughout
     * this band, so supply the requested RF frequency explicitly. */
    chan.freq = mhz;
    if (band == RTW89_BAND_5G && channel >= 149)
        chan.subband_type = RTW89_CH_5G_BAND_4;
    ret = iq_paxi_source_poll(d, s, 6);
    if (ret) return ret;
    rtw89_write32(d, 0x9660, (4 << 16) | (11 << 8));
    rtw89_write32_clr(d, 0x21090, BIT(0));
    deadline = ktime_get_ns() + 5000000;
    while (READ_ONCE(iq_scope_packets) < completed) {
        wiphy_unlock(d->hw->wiphy);
        usleep_range(25, 50);
        wiphy_lock(d->hw->wiphy);
        if (ktime_get_ns() >= deadline) return -ETIMEDOUT;
    }
    if (READ_ONCE(iq_scope_packets) != completed) return -EIO;
    rtw89_write32(d, 0xc04, 0x18006000);
    ret = iq_paxi_refresh_available(d);
    if (ret) return ret;
    rtw89_write32(d, 0x80004, stop | BIT(0));
    if (rtw89_read32(d, 0x80104)) return -EBUSY;
    /* Pure host register callbacks. Do not invoke firmware notifications,
     * calibration commands or mac80211 channel switching with WCPU held. */
    d->chip->ops->set_channel_help(d, true, &help, &chan, RTW89_MAC_0, RTW89_PHY_0);
    d->chip->ops->set_channel(d, &chan, RTW89_MAC_0, RTW89_PHY_0);
    d->chip->ops->set_channel_help(d, false, &help, &chan, RTW89_MAC_0, RTW89_PHY_0);
    expected_rf = rtw89_chip_chan_to_rf18_val(d, &chan);
    for (path = 0; path < 2; path++) {
        u32 rf = rtw89_read_rf(d, path, 0x10018, RFREG_MASK);
        u32 mask = RR_CFGCH_BAND1 | RR_CFGCH_BW_V2 | RR_CFGCH_BAND0 | RR_CFGCH_CH;
        if (rf > RFREG_MASK || (rf & mask) != (expected_rf & mask)) return -EIO;
    }
    wiphy_unlock(d->hw->wiphy);
    msleep(20);
    wiphy_lock(d->hw->wiphy);
    rtw89_write32(d, 0xc04, 0x18006000);
    if (READ_ONCE(iq_stop)) return -ECANCELED;
    /* Every old host completion is accounted; discard queued old-frequency
     * I/Q explicitly without resetting packet/drop counters. */
    spin_lock_irqsave(&iq_scope_lock, flags);
    iq_paxi_retune_discarded += s->produced - s->consumed;
    iq_paxi_retune_discarded += (u64)iq_live_count * 1024 / (8192 + 24);
    iq_live_head = iq_live_tail = iq_live_count = 0;
    spin_unlock_irqrestore(&iq_scope_lock, flags);
    rtw89_write16(d, 0x80420, 0);
    rtw89_write32(d, 0x8043c, 1);
    ret = read_poll_timeout(rtw89_read32, index, !(index & 0x1ff01ff),
                           1, 2000, false, d, 0x80420);
    if (ret || (rtw89_read16(d, 0x80320) & 0x1ff) != 120) return -EIO;
    *slot = 0;
    s->origin = s->consumed;
    s->produced = s->consumed;
    s->last = 0;
    rtw89_write32(d, 0x80004, stop & ~BIT(0));
    rtw89_write32_set(d, 0x21090, BIT(0));
    rtw89_write32(d, 0x9668, 0);
    rtw89_write32(d, 0x9660, (4 << 16) | (11 << 8) | 1);
    s->last_poll = ktime_get_ns();
    rtw89_write32(d, 0x9660, (4 << 16) | (11 << 8) | 9);
    iq_paxi_retune_seq = (u32)s->consumed;
    iq_paxi_retune_count++;
    iq_paxi_retune_pause_ns += ktime_get_ns() - began;
    return 0;
}
static ssize_t iq_paxi_retune_read(struct file *f, char __user *b, size_t n, loff_t *p)
{
    char text[256];
    int len = scnprintf(text, sizeof(text),
        "ret=%d mhz=%u seq=%u count=%u pause_ns=%llu discarded_records=%llu pending=%u\n",
        READ_ONCE(iq_paxi_retune_ret), READ_ONCE(iq_paxi_retune_mhz),
        READ_ONCE(iq_paxi_retune_seq), READ_ONCE(iq_paxi_retune_count),
        READ_ONCE(iq_paxi_retune_pause_ns), READ_ONCE(iq_paxi_retune_discarded),
        READ_ONCE(iq_paxi_retune_request));
    return simple_read_from_buffer(b, n, p, text, len);
}
static ssize_t iq_paxi_retune_write(struct file *f, const char __user *b, size_t n, loff_t *p)
{
    char text[24];
    u32 mhz;
    long waited;
    int ret;
    if (n >= sizeof(text) || copy_from_user(text, b, n)) return -EINVAL;
    text[n] = 0;
    if (kstrtouint(text, 10, &mhz) ||
        !((mhz >= 2412 && mhz <= 2472 && (mhz - 2412) % 5 == 0) || mhz == 2484 ||
          (mhz >= 5005 && mhz <= 5950 && mhz % 5 == 0) ||
          (mhz >= 5955 && mhz <= 7115 && mhz % 5 == 0)) ||
        READ_ONCE(iq_sample_rate) != 40000000 || !READ_ONCE(iq_paxi_static_ring)) return -EINVAL;
    if (!mutex_trylock(&iq_paxi_retune_mutex)) return -EBUSY;
    if (!READ_ONCE(iq_running) || !READ_ONCE(iq_paxi_cpu_held)) { ret = -ENODEV; goto unlock; }
    WRITE_ONCE(iq_paxi_retune_ret, -EINPROGRESS);
    WRITE_ONCE(iq_paxi_retune_mhz, mhz);
    smp_store_release(&iq_paxi_retune_request, mhz);
    waited = wait_event_interruptible_timeout(iq_paxi_retune_wait,
                 !smp_load_acquire(&iq_paxi_retune_request) || !READ_ONCE(iq_running), HZ);
    if (waited <= 0 || READ_ONCE(iq_paxi_retune_request)) {
        WRITE_ONCE(iq_stop, true); ret = waited < 0 ? waited : -ETIMEDOUT;
    } else ret = READ_ONCE(iq_paxi_retune_ret);
unlock:
    mutex_unlock(&iq_paxi_retune_mutex);
    return ret ? ret : n;
}
static const struct file_operations iq_paxi_retune_fops = {
    .owner = THIS_MODULE, .open = simple_open, .read = iq_paxi_retune_read,
    .write = iq_paxi_retune_write, .llseek = default_llseek,
};

static ssize_t iq_paxi_run(struct rtw89_dev *d, const char *text, size_t n,
                            unsigned int live_ms, bool live)
{
    u32 aperture, platform = 0, dcpu = 0, base = 0, index = 0, next = 0;
    u32 stop = 0, busy = 0, physical = 0, source = 0, error = 0;
    u32 guard_errors = 0, changed = 0, platform_before = 0;
    u32 ple_quota = 0, wde_quota = 0, fc710 = 0, fc714 = 0;
    u32 quota_before[2] = {}, quota_after[2] = {}, rx_index = 0;
    u32 controls[32] = {}, *original_controls = iq_paxi_original_controls;
    u32 *function_pointers = iq_paxi_function_pointers;
    struct iq_paxi_source *live_source = &iq_paxi_source_state;
    bool live_started = false;
    bool watchdog_disabled = false;
    u32 record_rate = READ_ONCE(iq_sample_rate);
    u32 pc_before = 0, pc_after = 0, base_after = 0, platform_after = 0;
    struct iq_paxi_snapshot *snapshots = iq_paxi_snapshots;
    unsigned int nsnap = 0, host_service_us = 0, trace = 1;
    u32 fc710_applied = 0;
    bool fc_changed = false;
    u32 watch_pre[ARRAY_SIZE(iq_watch_addresses)] = {};
    u32 watch_held[ARRAY_SIZE(iq_watch_addresses)] = {};
    u32 watch_post[ARRAY_SIZE(iq_watch_addresses)] = {};
    const u32 flow_offsets[] = {0x100, 0x104, 0x110, 0x114, 0x700, 0x704,
                               0x710, 0x714, 0x750, 0x754, 0x770, 0x774,
                               0x400, 0x404, 0x408};
    u32 flow_before[ARRAY_SIZE(flow_offsets)] = {}, flow_after[ARRAY_SIZE(flow_offsets)] = {};
    u16 id = 0, count = 0;
    u16 count_before = 0;
    unsigned int mode, k, slot, rounds = 1, bytes = 256, packet, segment;
    u64 completed = 0;
    unsigned int recredit = 0, credit_updates = 0, credit_checks = 0;
    unsigned int header_bytes, reported_bytes, allocation_bytes, header_offset, header_count, burst;
    unsigned int hold_delay_ms = 0;
    unsigned int refresh_every = 64;
    bool owned = false, submitted = false, held = false, stopped = false, active = false;
    bool tracking_quiesced = false;
    u64 started = 0, elapsed = 0, yield_at, held_at = 0, hold_to_dma_ns = 0, hold_total_ns = 0;
    int ret = 0;
    k = sscanf(text, "%u %u %u %u %u %u %u %u", &mode, &rounds, &bytes, &recredit,
               &hold_delay_ms, &host_service_us, &trace, &refresh_every);
    if ((k != 1 && k < 3) || k > 8 || trace > 1 || host_service_us > 1000 ||
        (refresh_every != 64 && refresh_every != 128) ||
        hold_delay_ms > 200 || mode > 1 || recredit > 14 || !rounds || rounds > 4096 ||
        (bytes != 224 && bytes != 256 && bytes != 4096 && bytes != 8160 && bytes != 8192 &&
         bytes != 12288 && bytes != 16352) ||
        (!mode && bytes != 256))
        return -EINVAL;
    if (recredit >= 13 && (mode != 1 || bytes != 8192)) return -EINVAL;
    if (live && (live_ms > 1800000 || mode != 1 || (recredit != 11 && recredit != 13 && recredit != 14) || trace ||
                    !READ_ONCE(iq_paxi_disable_watchdog) ||
                    bytes < 8192 || (record_rate != 10000000 && record_rate != 20000000 &&
                                     record_rate != 40000000))) return -EINVAL;
    header_bytes = recredit == 7 ? 24 : 32;
    reported_bytes = bytes + (recredit == 6 ? 8 : 0);
    allocation_bytes = recredit >= 13 ? 4096 : 1024;
    header_offset = recredit >= 13 ? 1024 : 256;
    header_count = recredit >= 13 ? 40 : 1;
    burst = recredit == 14 ? 4 : 1;
    if (atomic_cmpxchg(&iq_stream_claimed, 0, 1)) return -EBUSY;
    memset(snapshots, 0, sizeof(iq_paxi_snapshots));
    memset(original_controls, 0, sizeof(iq_paxi_original_controls));
    memset(function_pointers, 0, sizeof(iq_paxi_function_pointers));
    memset(live_source, 0, sizeof(*live_source));
    if (live) { WRITE_ONCE(iq_stop, false); WRITE_ONCE(iq_running, true); }
    wiphy_lock(d->hw->wiphy);
    aperture = rtw89_read32(d, 0xc04);
    if (iq_paxi_cpu_held || (rtw89_read32(d, 0x9660) & BIT(3)) ||
        (rtw89_read32(d, 0x21090) & 1)) { ret = -EBUSY; goto out; }
    ret = iq_dle_req(d, allocation_bytes, false, &id);
    if (ret) goto out;
    owned = true;
    physical = iq_owned_physical(d, id, allocation_bytes - 24);
    if (!physical) { ret = -ENOSPC; goto out; }
    physical -= 24;
    if ((physical & 0x7ffff) + allocation_bytes >= 0x80000) { ret = -ENOSPC; goto out; }
    rtw89_write32(d, 0xc04, physical & ~0x7ffff);
    for (k = 0; k < allocation_bytes / 4; k++)
        rtw89_write32(d, 0x80000 + (physical & 0x7ffff) + k * 4, 0x91ac0000 ^ k);
    /* Modes 6/7 test a plain RX descriptor without driver information.
     * Mode 6 retains the firmware's 32-byte first segment: eight bytes of
     * that segment count as payload. Mode 7 uses only the 24-byte RXD. */
    for (k = 0; k < header_count; k++) {
        unsigned int word;
        u32 hdr = 0x80000 + (physical & 0x7ffff) + header_offset + 32*k;
        rtw89_write32(d, hdr,
                      (3 << 24) | ((recredit == 6 || recredit == 7) ? 0 : BIT(18)) | reported_bytes);
        rtw89_write32(d, hdr + 4, 8 << 16);
        for (word = 2; word < 8; word++)
            rtw89_write32(d, hdr + word*4, word == 5 ? 0xface0000 : 0);
    }
    source = mode ? 0x18716000 : physical + 512;

    platform_before = rtw89_read32(d, R_BE_PLATFORM_ENABLE);
    dcpu = rtw89_read32(d, R_BE_DCPU_PLATFORM_ENABLE);
    ple_quota = rtw89_read32(d, R_BE_PLE_QTA2_CFG);
    wde_quota = rtw89_read32(d, R_BE_WDE_QTA1_CFG);
    for (k = 0; k < 2; k++) {
        struct rtw89_mac_dle_dfi_ctrl dfi = {
            .type = k ? DLE_CTRL_TYPE_WDE : DLE_CTRL_TYPE_PLE,
            .target = DLE_DFI_TYPE_QUOTA, .addr = k ? 1 : 2,
        };
        if (!rtw89_mac_dle_dfi_cfg(d, &dfi)) quota_before[k] = dfi.out_data;
    }
    if (platform_before == 0xffffffff || platform_before == 0xdeadbeef) {
        ret = -EIO; goto out;
    }
    /* Pinned mac_be.c WCPU hold sequence. The private owned ring below
     * avoids overwriting any firmware descriptors. An unavailable DCPU
     * readback is not interpreted as proof that all device CPUs are stopped. */
    iq_watch_read(d, watch_pre);
    if (READ_ONCE(iq_paxi_disable_watchdog)) {
        ret = iq_paxi_disable_wcpu_watchdog(d);
        if (ret) goto out;
        watchdog_disabled = true;
    }
    /* The normal two-second worker changes RF/DIG/CFO and takes wiphy.
     * It cannot cooperate with held firmware or our borrowed MMIO aperture.
     * Follow the pinned suspend path; keep tracking stopped until teardown. */
    set_bit(RTW89_FLAG_FORBIDDEN_TRACK_WORK, d->flags);
    wiphy_delayed_work_cancel(d->hw->wiphy, &d->track_work);
    wiphy_delayed_work_cancel(d->hw->wiphy, &d->track_ps_work);
    wiphy_delayed_work_cancel(d->hw->wiphy, &d->cfo_track_work);
    wiphy_delayed_work_cancel(d->hw->wiphy, &d->antdiv_work);
    tracking_quiesced = true;
    clear_bit(RTW89_FLAG_FW_RDY, d->flags);
    rtw89_write32_clr(d, R_BE_PLATFORM_ENABLE, B_BE_WCPU_EN);
    rtw89_write32_set(d, R_BE_PLATFORM_ENABLE, B_BE_HOLD_AFTER_RESET);
    rtw89_write32_set(d, R_BE_PLATFORM_ENABLE, B_BE_WCPU_EN);
    held = true; iq_paxi_cpu_held = true;
    held_at = ktime_get_ns();
    platform = rtw89_read32(d, R_BE_PLATFORM_ENABLE);
    if (platform == 0xffffffff || platform == 0xdeadbeef ||
        !(platform & B_BE_HOLD_AFTER_RESET)) {
        ret = -EIO; goto out;
    }
    if (hold_delay_ms) {
        rtw89_write32(d, 0xc04, aperture);
        wiphy_unlock(d->hw->wiphy);
        msleep(hold_delay_ms);
        wiphy_lock(d->hw->wiphy);
        aperture = rtw89_read32(d, 0xc04);
    }
    iq_watch_read(d, watch_held);
    rtw89_write32(d, 0xc04, 0x20200000);
    for (k = 0; k < ARRAY_SIZE(iq_paxi_function_pointers); k++)
        function_pointers[k] = rtw89_read32(d, 0x82140 + 4*k);
    rtw89_write32(d, 0xc04, 0x18006000);
    index = rtw89_read32(d, 0x80420);
    count = rtw89_read16(d, 0x80320) & 0x1ff;
    count_before = count;
    base = rtw89_read32(d, 0x80620);
    busy = rtw89_read32(d, 0x80104);
    stop = rtw89_read32(d, 0x80004);
    fc710 = rtw89_read32(d, 0x80710);
    fc714 = rtw89_read32(d, 0x80714);
    for (k = 0; k < ARRAY_SIZE(flow_offsets); k++)
        flow_before[k] = rtw89_read32(d, 0x80000 + flow_offsets[k]);
    if (count != 32 || (index & 0x1ff) >= count ||
        (index & 0x1ff) != ((index >> 16) & 0x1ff) ||
        (busy & BIT(8)) || base < 0x20300000 || base + 256 > 0x20310000) {
        ret = -EBUSY; goto out;
    }
    rtw89_write32(d, 0x80004, stop | BIT(0)); stopped = true;
    ret = read_poll_timeout(rtw89_read32, busy, !(busy & BIT(8)),
                                  1, 2000, false, d, 0x80104);
    if (ret) goto out;
    slot = index & 0x1ff;
    rtw89_write32(d, 0xc04, base & ~0x7ffff);
    for (k = 0; k < 32; k++) {
        original_controls[k] = rtw89_read32(d, 0x80000 + (base & 0x7ffff) + k*8);
        if (original_controls[k] == 0xdeadbeef || original_controls[k] == 0xffffffff) {
            ret = -EIO; goto out;
        }
    }
    rtw89_write32(d, 0xc04, physical & ~0x7ffff);
    /* Unused slots reference only owned, initialized memory. An unexpected
     * doorbell cannot name arbitrary memory. The selected source is either
     * this allocation or the stopped LA block owned by this experiment. */
    if (recredit >= 13) count = 120;
    for (k = 0; k < count; k++) {
        u32 control = BIT(30) | 32, address = physical + header_offset;
        if (recredit >= 13) {
            control = k % 3 ? 4096 | (k % 3 == 2 ? BIT(30) : 0) : 32;
            if (k % 3) address = 0x18716000 + (k / 3) * 8192 + (k % 3 - 1) * 4096;
            else address += (k / 3) * 32;
        }
        rtw89_write32(d, 0x80000 + (physical & 0x7ffff) + k*8, control);
        rtw89_write32(d, 0x80004 + (physical & 0x7ffff) + k*8, address);
    }
    changed = 1;
    rtw89_write32(d, 0xc04, 0x18006000);
    rtw89_write32(d, 0x80620, physical);
    if (rtw89_read32(d, 0x80620) != physical) { ret = -EIO; goto out; }
    if (recredit >= 13) {
        /* Owned 120-descriptor ring covers all 40 LA blocks. Reset only the
         * idle TX0 index (ROM TX initialization uses reset register 0x43c).
         * CPU stays held until teardown, so firmware never sees this layout. */
        rtw89_write16(d, 0x80320, count);
        rtw89_write16(d, 0x80420, 0);
        rtw89_write32(d, 0x8043c, 1);
        ret = read_poll_timeout(rtw89_read32, index, !(index & 0x1ff01ff),
                                1, 2000, false, d, 0x80420);
        if (ret || (rtw89_read16(d, 0x80320) & 0x1ff) != count) { ret = -EIO; goto out; }
        slot = 0;
    }
    if (recredit == 2) {
        /* Same low-bit disable used by pinned ROM/RAM FC initialization.
         * With firmware held, fresh DLE quotas below bound every submission. */
        rtw89_write32(d, 0x80700, flow_before[4] & ~3U);
        if (rtw89_read32(d, 0x80700) != (flow_before[4] & ~3U)) {
            ret = -EIO; goto out;
        }
    }
    if (recredit >= 3) {
        u32 dfi, pages, units, cfg = rtw89_read32(d, R_BE_PLE_QTA2_CFG);
        u32 page_sel = rtw89_read32(d, R_BE_PLE_PKTBUF_CFG) & 3;

        /* Pinned initializer 0x20123078: limit is C2H minimum pages in
         * 64-byte units. Change only this field, while TX0 is stopped/idle;
         * disable/re-enable the same FC bits as the initializer. No attempt
         * to synthesize a per-packet credit return. Teardown remains required. */
        ret = iq_paxi_dfi(d, DLE_CTRL_TYPE_PLE, DLE_DFI_TYPE_QUOTA, 2, &dfi);
        if (ret) goto out;
        pages = cfg & 0xfff;
        if (cfg == 0xdeadbeef || cfg == 0xffffffff || page_sel != 1 ||
            pages != 192 || FIELD_GET(B_AX_DLE_RSV_PGNUM, dfi) != pages ||
            FIELD_GET(B_AX_DLE_USE_PGNUM, dfi) != 0) { ret = -EINVAL; goto out; }
        units = pages << page_sel;
        if (units > 0x1fff || (flow_before[4] & 3) != 3) { ret = -EINVAL; goto out; }
        fc710_applied = (fc710 & ~0x1fff0000U) | units << 16;
        /* Control arm: identical idle FC toggle/write sequence, old limit. */
        if (recredit == 4) fc710_applied = fc710;
        rtw89_write32(d, 0x80700, flow_before[4] & ~3U);
        rtw89_write32(d, 0x80710, fc710_applied);
        fc_changed = true;
        rtw89_write32(d, 0x80700, flow_before[4]);
        if (rtw89_read32(d, 0x80710) != fc710_applied ||
            rtw89_read32(d, 0x80700) != flow_before[4]) { ret = -EIO; goto out; }
    }
    if (recredit >= 8) {
        ret = iq_paxi_refresh_available(d);
        if (ret) goto out;
        credit_updates++;
    }
    if (trace) iq_paxi_snapshot_read(d, &snapshots[nsnap++], 0);
    rtw89_write32(d, 0x80004, stop & ~BIT(0));
    started = ktime_get_ns(); yield_at = started + 2000000;
    hold_to_dma_ns = started - held_at;
    if (live) {
        rtw89_write32_set(d, 0x21090, BIT(0));
        rtw89_write32(d, 0x9668, 0);
        rtw89_write32(d, 0x9660, (4 << 16) | (11 << 8) | 1);
        started = ktime_get_ns();
        live_source->last_poll = started;
        live_source->poll_limit = 40960ULL * 900000000ULL / record_rate;
        rtw89_write32(d, 0x9660, (4 << 16) | (11 << 8) | 9);
        live_started = true;
    }
    pc_before = rtw89_read32(d, R_BE_WLCPU_PORT_PC);
    for (packet = 0; live || packet < rounds; packet += burst) {
        unsigned int packets_this_time = live ? burst : min(burst, rounds - packet);
        u32 offset = 0x80000 + (physical & 0x7ffff);
        u32 source_offset = live ? ((live_source->consumed - live_source->origin) % 40960) * 8 :
                                     (packet * bytes) % 327680;
        if (fatal_signal_pending(current)) { ret = -EINTR; break; }
        if (live && smp_load_acquire(&iq_paxi_retune_request)) {
            u32 mhz = READ_ONCE(iq_paxi_retune_request);
            ret = iq_paxi_retune_live(d, live_source, completed, stop, &slot, mhz);
            WRITE_ONCE(iq_paxi_retune_ret, ret);
            smp_store_release(&iq_paxi_retune_request, 0);
            wake_up_all(&iq_paxi_retune_wait);
            if (ret) break;
            source_offset = 0;
        }
        if (live) {
            if (READ_ONCE(iq_stop) || (live_ms && ktime_get_ns() - started >= (u64)live_ms * 1000000)) break;
            do {
                ret = iq_paxi_source_poll(d, live_source, 1);
                if (ret || live_source->produced - live_source->consumed >= packets_this_time * (bytes / 8)) break;
                if (READ_ONCE(iq_stop) || fatal_signal_pending(current)) break;
                if ((live_ms && ktime_get_ns() - started >= (u64)live_ms * 1000000)) break;
                udelay(2); cond_resched();
            } while (true);
            if (fatal_signal_pending(current)) { ret = -EINTR; break; }
            if (ret || READ_ONCE(iq_stop) ||
                (live_ms && ktime_get_ns() - started >= (u64)live_ms * 1000000)) break;
        } else if (ktime_get_ns() - started > 1000000000ULL) { ret = -ETIMEDOUT; break; }
        if (recredit == 2) {
            for (k = 0; k < 2; k++) {
                struct rtw89_mac_dle_dfi_ctrl dfi = {
                    .type = k ? DLE_CTRL_TYPE_WDE : DLE_CTRL_TYPE_PLE,
                    .target = DLE_DFI_TYPE_QUOTA, .addr = k ? 1 : 2,
                };
                u32 used, reserved, required = k ? 1 : DIV_ROUND_UP(bytes + 32, 128);
                ret = rtw89_mac_dle_dfi_cfg(d, &dfi);
                if (ret) break;
                used = FIELD_GET(B_AX_DLE_USE_PGNUM, dfi.out_data);
                reserved = FIELD_GET(B_AX_DLE_RSV_PGNUM, dfi.out_data);
                if (reserved < used || reserved - used < required) { ret = -ENOSPC; break; }
                credit_checks++;
            }
            if (ret) break;
        }
        source = mode ? 0x18716000 + source_offset : physical + 512;
        rtw89_write32(d, 0xc04, physical & ~0x7ffff);
        if (recredit >= 13) {
            unsigned int j;
            if (source_offset != (slot / 3) * 8192) { ret = -EIO; break; }
            for (j = 0; j < packets_this_time; j++) {
                u32 hdr = offset + header_offset + ((slot / 3 + j) % 40) * 32;
                u32 seq = live ? live_source->consumed + j * (bytes / 8) :
                          rounds == 1 ? 0xface0000 : (packet + j) * (bytes / 8);
                rtw89_write32(d, hdr + 20, seq);
            }
            next = (slot + 3 * packets_this_time) % count;
        } else {
            rtw89_write32(d, offset + header_offset + 20,
                          live ? live_source->consumed : rounds == 1 ? 0xface0000 : packet * (bytes / 8));
            /* Mode 5 follows ROM 0x20004dc2 exactly: preserve bits 16..29,
             * replace the 16-bit length, clear bit31 and set only last bit30. */
            rtw89_write32(d, offset + slot*8,
                          (recredit == 5 ? original_controls[slot] & 0x3fff0000U : 0) | header_bytes);
            rtw89_write32(d, offset + slot*8 + 4, physical + header_offset);
            next = (slot + 1) % count;
            /* No payload segment may cross a 4 KiB boundary. */
            for (segment = 0; segment < bytes;) {
                u32 address = mode ? 0x18716000 + (source_offset + segment) % 327680 :
                                     source + segment;
                u32 length = min_t(u32, bytes - segment,
                                   4096 - (address & 4095));
                if (mode) length = min_t(u32, length, 0x18766000 - address);
                rtw89_write32(d, offset + next*8,
                              (recredit == 5 ? original_controls[next] & 0x3fff0000U : 0) |
                              (segment + length == bytes ? BIT(30) : 0) | length);
                rtw89_write32(d, offset + next*8 + 4, address);
                next = (next + 1) % count;
                segment += length;
            }
        }
        rtw89_write32(d, 0xc04, 0x18006000);
        if (live) {
            ret = iq_paxi_source_poll(d, live_source, 2);
            if (ret) break;
        }
        submitted = true; active = true;
        rtw89_write16(d, 0x80420, next);
        ret = read_poll_timeout(rtw89_read32, index,
                  !iq_paxi_mmio_valid(index) || ((index >> 16) & 0x1ff) == next,
                  0, 2000, false, d, 0x80420);
        if (!iq_paxi_mmio_valid(index)) ret = -EIO;
        if (ret) break;
        ret = read_poll_timeout(rtw89_read32, busy, !iq_paxi_mmio_valid(busy) || !(busy & BIT(8)),
                                      0, 2000, false, d, 0x80104);
        if (!iq_paxi_mmio_valid(busy)) ret = -EIO;
        if (ret) break;
        active = false; completed += packets_this_time; slot = next;
        if (live) {
            ret = iq_paxi_source_poll(d, live_source, 3);
            live_source->consumed += packets_this_time * (bytes / 8);
            if (ret) break;
        }
        if (trace && (completed == 1 || completed == 6 || completed == 64 ||
                      completed == 94 || completed == 95 || completed == 96))
            iq_paxi_snapshot_read(d, &snapshots[nsnap++], completed);
        if (recredit == 1) {
            struct rtw89_mac_dle_dfi_ctrl dfi = {
                .type = DLE_CTRL_TYPE_WDE, .target = DLE_DFI_TYPE_QUOTA, .addr = 1,
            };
            u32 used, reserved;
            /* ROM 0x200058a4 writes the available WCPU WDE count to both
             * 0x750/0x754. Never advertise more than a fresh DLE read proves
             * free, and never replenish while this DMA is in flight. */
            ret = rtw89_mac_dle_dfi_cfg(d, &dfi);
            if (ret) break;
            used = FIELD_GET(B_AX_DLE_USE_PGNUM, dfi.out_data);
            reserved = FIELD_GET(B_AX_DLE_RSV_PGNUM, dfi.out_data);
            if (used > reserved || reserved != (wde_quota & 0xfff)) { ret = -EIO; break; }
            rtw89_write32(d, 0x80750, reserved - used);
            rtw89_write32(d, 0x80754, reserved - used);
            credit_updates++;
        }
        if (recredit >= 9 && completed % refresh_every == 0 && (live || completed < rounds)) {
            u64 drain_deadline = ktime_get_ns() + 2000000;

            while (READ_ONCE(iq_scope_packets) < completed) {
                rtw89_write32(d, 0xc04, aperture);
                wiphy_unlock(d->hw->wiphy);
                usleep_range(25, 50);
                wiphy_lock(d->hw->wiphy);
                aperture = rtw89_read32(d, 0xc04);
                rtw89_write32(d, 0xc04, 0x18006000);
                if (ktime_get_ns() > drain_deadline) { ret = -ETIMEDOUT; break; }
            }
            if (ret) break;
            if (READ_ONCE(iq_scope_packets) != completed) { ret = -EIO; break; }
            if (live) {
                ret = iq_paxi_source_poll(d, live_source, 4);
                if (ret) break;
            }
            ret = iq_paxi_refresh_available(d);
            if (ret) break;
            if (recredit >= 10) {
                /* Diagnostic full FC reinitialization only after all host
                 * packets arrived and hardware proves both quotas reclaimed.
                 * These are pinned initializer values, never a timeout retry. */
                rtw89_write32(d, 0x80004, stop | BIT(0));
                if (recredit != 11 && recredit < 13) rtw89_write32(d, 0x80700, flow_before[4] & ~3U);
                if (recredit != 12) rtw89_write32(d, 0x80710, fc710_applied);
                if (recredit == 10) {
                    rtw89_write32(d, 0x80714, fc714);
                    rtw89_write32(d, 0x80750, 6);
                    rtw89_write32(d, 0x80754, 6);
                }
                if (recredit != 11 && recredit < 13) rtw89_write32(d, 0x80700, flow_before[4]);
                if (rtw89_read32(d, 0x80710) != fc710_applied ||
                    rtw89_read32(d, 0x80700) != flow_before[4]) { ret = -EIO; break; }
                rtw89_write32(d, 0x80004, stop & ~BIT(0));
            }
            credit_updates++;
        }
        if (host_service_us || ktime_get_ns() >= yield_at) {
            rtw89_write32(d, 0xc04, aperture);
            wiphy_unlock(d->hw->wiphy);
            /* A voluntary service window also runs pending threaded IRQ/NAPI
             * work when cond_resched() alone has no reason to switch tasks. */
            usleep_range(host_service_us ? host_service_us : 25,
                         host_service_us ? host_service_us + 50 : 50);
            wiphy_lock(d->hw->wiphy);
            aperture = rtw89_read32(d, 0xc04);
            yield_at = ktime_get_ns() + 2000000;
            if (live) {
                ret = iq_paxi_source_poll(d, live_source, 5);
                if (ret) break;
            }
        }
    }
    elapsed = ktime_get_ns() - started;
    if (live_started) {
        live_source->loss = rtw89_read32(d, 0x966c);
        rtw89_write32(d, 0x9660, (4 << 16) | (11 << 8));
        rtw89_write32_clr(d, 0x21090, BIT(0));
        live_started = false;
    }
    if (trace) iq_paxi_snapshot_read(d, &snapshots[nsnap++], completed);
    hold_total_ns = ktime_get_ns() - held_at;
    iq_watch_read(d, watch_post);
    rtw89_write32(d, 0xc04, 0x18006000);
    base_after = rtw89_read32(d, 0x80620);
    pc_after = rtw89_read32(d, R_BE_WLCPU_PORT_PC);
    platform_after = rtw89_read32(d, R_BE_PLATFORM_ENABLE);
    for (k = 0; k < ARRAY_SIZE(flow_offsets); k++)
        flow_after[k] = rtw89_read32(d, 0x80000 + flow_offsets[k]);
    rtw89_write32(d, 0x80004, stop | BIT(0));
    busy = rtw89_read32(d, 0x80104);
    error = rtw89_read32(d, R_BE_PL_AXIDMA_IDCT);
    {
        struct rtw89_pci *pci = (struct rtw89_pci *)d->priv;
        rx_index = rtw89_read32(d, pci->rx.rings[RTW89_RXCH_RXQ].bd_ring.addr.idx);
    }
    for (k = 0; k < 2; k++) {
        struct rtw89_mac_dle_dfi_ctrl dfi = {
            .type = k ? DLE_CTRL_TYPE_WDE : DLE_CTRL_TYPE_PLE,
            .target = DLE_DFI_TYPE_QUOTA, .addr = k ? 1 : 2,
        };
        if (!rtw89_mac_dle_dfi_cfg(d, &dfi)) quota_after[k] = dfi.out_data;
    }
    rtw89_write32(d, 0xc04, physical & ~0x7ffff);
    for (k = 0; k < 32; k++)
        controls[k] = rtw89_read32(d, 0x80000 + (physical & 0x7ffff) + k*8);
    rtw89_write32(d, 0xc04, 0x18006000);
    if (!active) {
        if (recredit >= 13) rtw89_write16(d, 0x80320, count_before);
        rtw89_write32(d, 0x80620, base);
        changed = 0;
        rtw89_write32(d, 0xc04, physical & ~0x7ffff);
        for (k = 0; k < allocation_bytes / 4; k++) {
            u32 expected = 0x91ac0000 ^ k;
            if (k < count * 2 || (k >= header_offset / 4 && k < (header_offset + 32 * header_count) / 4)) continue;
            if (rtw89_read32(d, 0x80000 + (physical & 0x7ffff) + 4*k) != expected)
                guard_errors++;
        }
    }
out:
    if (live_started) {
        live_source->loss = rtw89_read32(d, 0x966c);
        rtw89_write32(d, 0x9660, (4 << 16) | (11 << 8));
        rtw89_write32_clr(d, 0x21090, BIT(0));
    }
    /* Keep WCPU held and TX0 stopped until the wrapper unloads the card.
     * Do not release source memory if completion is uncertain. */
    if (stopped) {
        rtw89_write32(d, 0xc04, 0x18006000);
        rtw89_write32(d, 0x80004, stop | BIT(0));
        busy = rtw89_read32(d, 0x80104);
        if (!iq_paxi_mmio_valid(busy) || (busy & BIT(8))) active = true;
        if (changed && !active) {
            if (recredit >= 13) rtw89_write16(d, 0x80320, count_before);
            rtw89_write32(d, 0x80620, base);
            changed = 0;
        }
        if (recredit == 2 && !active) rtw89_write32(d, 0x80700, flow_before[4]);
        if (fc_changed && !active) {
            rtw89_write32(d, 0x80700, flow_before[4] & ~3U);
            rtw89_write32(d, 0x80710, fc710);
            rtw89_write32(d, 0x80700, flow_before[4]);
        }
    }
    if (owned && (!submitted || !active)) {
        int release_ret = iq_dispatch_packet(d, id, true);
        if (!ret && release_ret) ret = release_ret;
    }
    rtw89_write32(d, 0xc04, aperture);
    wiphy_unlock(d->hw->wiphy);
    snprintf(iq_paxi_frozen_result, sizeof(iq_paxi_frozen_result),
             "ret=%d mode=%u held=%u platform=%x platform_before=%x dcpu=%x base=%x index=%x next=%u "
             "count=%u busy=%x physical=%x source=%x submitted=%u completed=%llu "
             "elapsed_ns=%llu guard_errors=%u base_changed=%u descriptors_changed=0 error=%x "
             "rounds=%u bytes=%u active=%u ple_quota=%x wde_quota=%x fc710=%x fc714=%x "
             "c2h_before=%x c2h_after=%x wcpu_before=%x wcpu_after=%x hci_rx_index=%x "
             "pc_before=%x pc_after=%x base_after=%x platform_after=%x recredit=%u credit_updates=%u credit_checks=%u "
             "hold_delay_ms=%u hold_to_dma_ns=%llu hold_total_ns=%llu "
             "fc710_applied=%x host_service_us=%u trace=%u snapshots=%u header_bytes=%u reported_bytes=%u refresh_every=%u "
             "live_ms=%u record_rate=%u allocation_bytes=%u header_offset=%u count_before=%u watchdog_disabled=%u burst=%u "
             "produced=%llu consumed=%llu max_backlog=%llu source_state=%x source_loss=%x "
             "source_guard=%u max_poll_gap_ns=%llu poll_limit_ns=%llu "
             "tracking_quiesced=%u max_gap_from=%u max_gap_to=%u host_seen=%llu continuous=%u counter_bits=64\n",
             ret, mode, held, platform, platform_before, dcpu, base, index, next, count, busy,
             physical, source, submitted, completed, elapsed, guard_errors, changed, error,
             rounds, bytes, active, ple_quota, wde_quota, fc710, fc714,
             quota_before[0], quota_after[0], quota_before[1], quota_after[1], rx_index,
             pc_before, pc_after, base_after, platform_after, recredit, credit_updates, credit_checks,
             hold_delay_ms, hold_to_dma_ns, hold_total_ns,
             fc710_applied, host_service_us, trace, nsnap, header_bytes, reported_bytes, refresh_every,
             live_ms, record_rate, allocation_bytes, header_offset, count_before, watchdog_disabled, burst,
             live_source->produced, live_source->consumed, live_source->max_backlog,
             live_source->state, live_source->loss, live_source->reason,
             live_source->max_poll_gap, live_source->poll_limit, tracking_quiesced,
             live_source->max_gap_from, live_source->max_gap_to, READ_ONCE(iq_scope_packets), live && !live_ms);
    for (k = 0; k < nsnap; k++) {
        struct iq_paxi_snapshot *s = &snapshots[k];
        unsigned int j, type, addr;
        size_t used = strlen(iq_paxi_frozen_result);
        scnprintf(iq_paxi_frozen_result + used, sizeof(iq_paxi_frozen_result) - used,
                  " snap%u_packets=%x snap%u_host=%x snap%u_drops=%x snap%u_time_ns=%llx snap%u_error=%x",
                  k, s->packets, k, s->host_packets, k, s->host_drops, k, s->time_ns, k, s->error);
        for (j = 0; j < ARRAY_SIZE(s->ple); j++) {
            used = strlen(iq_paxi_frozen_result);
            scnprintf(iq_paxi_frozen_result + used, sizeof(iq_paxi_frozen_result) - used,
                      " snap%u_ple%u=%x", k, j, s->ple[j]);
        }
        for (j = 0; j < ARRAY_SIZE(s->wde); j++) {
            used = strlen(iq_paxi_frozen_result);
            scnprintf(iq_paxi_frozen_result + used, sizeof(iq_paxi_frozen_result) - used,
                      " snap%u_wde%u=%x", k, j, s->wde[j]);
        }
        for (type = 0; type < 2; type++)
            for (addr = 0; addr < 2; addr++) {
                used = strlen(iq_paxi_frozen_result);
                scnprintf(iq_paxi_frozen_result + used, sizeof(iq_paxi_frozen_result) - used,
                          " snap%u_free%u_%u=%x snap%u_empty%u_%u=%x",
                          k, type, addr, s->freepg[type][addr], k, type, addr, s->empty[type][addr]);
            }
        for (j = 0; j < 2; j++) {
            used = strlen(iq_paxi_frozen_result);
            scnprintf(iq_paxi_frozen_result + used, sizeof(iq_paxi_frozen_result) - used,
                      " snap%u_rx%u=%x", k, j, s->rx[j]);
        }
    }
    for (k = 0; k < ARRAY_SIZE(iq_watch_addresses); k++) {
        size_t used = strlen(iq_paxi_frozen_result);
        scnprintf(iq_paxi_frozen_result + used, sizeof(iq_paxi_frozen_result) - used,
                  " watchpre%x=%x watchheld%x=%x watchpost%x=%x",
                  iq_watch_addresses[k], watch_pre[k], iq_watch_addresses[k], watch_held[k],
                  iq_watch_addresses[k], watch_post[k]);
    }
    for (k = 0; k < 32; k++) {
        size_t used = strlen(iq_paxi_frozen_result);
        scnprintf(iq_paxi_frozen_result + used, sizeof(iq_paxi_frozen_result) - used,
                  " bd%u=%x originalbd%u=%x", k, controls[k], k, original_controls[k]);
    }
    for (k = 0; k < ARRAY_SIZE(iq_paxi_function_pointers); k++) {
        size_t used = strlen(iq_paxi_frozen_result);
        scnprintf(iq_paxi_frozen_result + used, sizeof(iq_paxi_frozen_result) - used,
                  " fp%x=%x", 0x2140 + 4*k, function_pointers[k]);
    }
    for (k = 0; k < ARRAY_SIZE(flow_offsets); k++) {
        size_t used = strlen(iq_paxi_frozen_result);
        scnprintf(iq_paxi_frozen_result + used, sizeof(iq_paxi_frozen_result) - used,
                  " before%x=%x after%x=%x", flow_offsets[k], flow_before[k],
                  flow_offsets[k], flow_after[k]);
    }
    if (live) {
        WRITE_ONCE(iq_running, false);
        if (READ_ONCE(iq_paxi_retune_request)) {
            WRITE_ONCE(iq_paxi_retune_ret, ret ? ret : -ECANCELED);
            smp_store_release(&iq_paxi_retune_request, 0);
        }
        wake_up_all(&iq_paxi_retune_wait);
    }
    atomic_set(&iq_stream_claimed, 0);
    return n;
}
static ssize_t iq_paxi_frozen_write(struct file *f, const char __user *b,
                                   size_t n, loff_t *p)
{
    char text[96];
    if (n >= sizeof(text) || copy_from_user(text, b, n)) return -EINVAL;
    text[n] = 0;
    return iq_paxi_run(f->private_data, text, n, 0, false);
}
static ssize_t iq_paxi_stream_write(struct file *f, const char __user *b,
                                   size_t n, loff_t *p)
{
    char text[24], command[96];
    unsigned int ms;
    ssize_t ret;

    if (n >= sizeof(text) || copy_from_user(text, b, n)) return -EINVAL;
    text[n] = 0;
    if (kstrtouint(text, 0, &ms) || (ms && ms < 10) || ms > 1800000) return -EINVAL;
    snprintf(command, sizeof(command), "1 4096 %u %u 0 0 0 128",
             READ_ONCE(iq_chunk_bytes), READ_ONCE(iq_paxi_static_ring) ?
             (READ_ONCE(iq_paxi_burst) == 4 ? 14 : 13) : 11);
    ret = iq_paxi_run(f->private_data, command, strlen(command), ms, true);
    return ret < 0 ? ret : n;
}
static const struct file_operations iq_paxi_frozen_fops = {
    .owner = THIS_MODULE, .open = simple_open, .read = iq_paxi_frozen_read,
    .write = iq_paxi_frozen_write, .llseek = default_llseek,
};
static const struct file_operations iq_paxi_stream_fops = {
    .owner = THIS_MODULE, .open = simple_open, .read = iq_paxi_frozen_read,
    .write = iq_paxi_stream_write, .llseek = default_llseek,
};
