from pathlib import Path
r=Path('/home/plaing/rtl8922-iq-research');p=r/'la-driver/debug.c';s=p.read_text()
s=s.replace('static DEFINE_SPINLOCK(iq_scope_lock);','''static DEFINE_SPINLOCK(iq_scope_lock);
static bool iq_live_mode;
static u32 iq_live_head, iq_live_tail, iq_live_count;
static void iq_live_append(const void *data, u32 len)
{
    u32 first = min_t(u32, len, IQ_SCOPE_LIMIT - iq_live_head);
    memcpy(iq_scope_data + iq_live_head, data, first);
    memcpy(iq_scope_data, (const u8 *)data + first, len - first);
    iq_live_head = (iq_live_head + len) % IQ_SCOPE_LIMIT;
    iq_live_count += len;
}''',1)
s=s.replace('    iq_scope_packets++;\n    if (iq_scope_data', '''    iq_scope_packets++;
    if (iq_live_mode) {
        if (iq_live_count + sizeof(hdr) + skb->len <= IQ_SCOPE_LIMIT) {
            iq_live_append(hdr, sizeof(hdr)); iq_live_append(skb->data, skb->len);
        } else { iq_scope_dropped++; }
        spin_unlock_irqrestore(&iq_scope_lock, flags);
        return;
    }
    if (iq_scope_data''',1)
a=s.index('static ssize_t iq_scope_read(')
s=s[:a]+'''/* Consuming FIFO reader; EAGAIN permits a userspace producer/consumer loop. */
static ssize_t iq_drain_read(struct file *file, char __user *buf, size_t count, loff_t *pos)
{
    unsigned long flags;
    u32 len, first;
    u8 *temp;
    if (!count) return 0;
    count = min_t(size_t, count, 65536);
    temp = kmalloc(count, GFP_KERNEL);
    if (!temp) return -ENOMEM;
    spin_lock_irqsave(&iq_scope_lock, flags);
    len = min_t(u32, count, iq_live_count);
    first = min_t(u32, len, IQ_SCOPE_LIMIT - iq_live_tail);
    memcpy(temp, iq_scope_data + iq_live_tail, first);
    memcpy(temp + first, iq_scope_data, len - first);
    iq_live_tail = (iq_live_tail + len) % IQ_SCOPE_LIMIT;
    iq_live_count -= len;
    spin_unlock_irqrestore(&iq_scope_lock, flags);
    if (!len) { kfree(temp); return -EAGAIN; }
    if (copy_to_user(buf, temp, len)) { kfree(temp); return -EFAULT; }
    kfree(temp); return len;
}
static ssize_t iq_drain_write(struct file *file, const char __user *buf, size_t count, loff_t *pos)
{
    unsigned long flags;
    spin_lock_irqsave(&iq_scope_lock, flags);
    iq_live_head = iq_live_tail = iq_live_count = 0;
    iq_scope_used = iq_scope_packets = iq_scope_dropped = 0;
    iq_live_mode = true;
    spin_unlock_irqrestore(&iq_scope_lock, flags);
    return count;
}
static const struct file_operations iq_drain_fops = {
    .owner = THIS_MODULE, .read = iq_drain_read, .write = iq_drain_write,
    .llseek = no_llseek,
};

'''+s[a:]
s=s.replace('    return simple_read_from_buffer(buf, count, pos, iq_scope_data,','    if (READ_ONCE(iq_live_mode)) return -EBUSY;\n    return simple_read_from_buffer(buf, count, pos, iq_scope_data,',1)
s=s.replace('ms > 10000','ms > 60000')
s=s.replace('debugfs_create_file("iq_stream",','debugfs_create_file("iq_drain", 0600, debugfs_topdir, rtwdev, &iq_drain_fops);\n\tdebugfs_create_file("iq_stream",',1)
p.write_text(s)
