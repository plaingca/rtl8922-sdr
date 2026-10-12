/* Bounded experimental capture of DMA BB-scope reports; no packet injection. */
#define IQ_SCOPE_LIMIT (16 * 1024 * 1024)
static u8 *iq_scope_data;
static u32 iq_scope_used;
static u64 iq_scope_packets, iq_scope_dropped;
static DEFINE_SPINLOCK(iq_scope_lock);

void rtw89_scope_record(struct sk_buff *skb, struct rtw89_rx_desc_info *desc)
{
    unsigned long flags;
    __le32 hdr[6];
    u64 now = ktime_get_mono_fast_ns();
    hdr[0] = cpu_to_le32(skb->len);
    hdr[1] = cpu_to_le32(desc->free_run_cnt);
    hdr[2] = cpu_to_le32(desc->seq | (desc->bb_sel << 16));
    hdr[3] = cpu_to_le32(desc->pkt_size);
    hdr[4] = cpu_to_le32((u32)now);
    hdr[5] = cpu_to_le32(now >> 32);
    spin_lock_irqsave(&iq_scope_lock, flags);
    iq_scope_packets++;
    if (iq_scope_data && iq_scope_used + sizeof(hdr) + skb->len <= IQ_SCOPE_LIMIT) {
        memcpy(iq_scope_data + iq_scope_used, hdr, sizeof(hdr));
        iq_scope_used += sizeof(hdr);
        memcpy(iq_scope_data + iq_scope_used, skb->data, skb->len);
        iq_scope_used += skb->len;
    } else {
        iq_scope_dropped++;
    }
    spin_unlock_irqrestore(&iq_scope_lock, flags);
}

static ssize_t iq_scope_read(struct file *file, char __user *buf,
                            size_t count, loff_t *pos)
{
    return simple_read_from_buffer(buf, count, pos, iq_scope_data, READ_ONCE(iq_scope_used));
}
static ssize_t iq_scope_reset(struct file *file, const char __user *buf,
                             size_t count, loff_t *pos)
{
    unsigned long flags;
    spin_lock_irqsave(&iq_scope_lock, flags);
    iq_scope_used = 0; iq_scope_packets = 0; iq_scope_dropped = 0;
    spin_unlock_irqrestore(&iq_scope_lock, flags);
    return count;
}
static const struct file_operations iq_scope_fops = {
    .owner = THIS_MODULE, .read = iq_scope_read, .write = iq_scope_reset,
    .llseek = default_llseek,
};
