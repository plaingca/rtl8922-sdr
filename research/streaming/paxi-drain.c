/* SPDX-License-Identifier: GPL-2.0-only */
/* Included in experimental debug.c after the shared FIFO declarations. */
struct iq_paxi_reader {
    struct mutex lock;
    u8 *buffer;
};
static int iq_paxi_drain_open(struct inode *inode, struct file *file)
{
    struct iq_paxi_reader *reader = kzalloc(sizeof(*reader), GFP_KERNEL);

    if (!reader) return -ENOMEM;
    reader->buffer = kvmalloc(65536, GFP_KERNEL);
    if (!reader->buffer) { kfree(reader); return -ENOMEM; }
    mutex_init(&reader->lock);
    file->private_data = reader;
    return 0;
}
static int iq_paxi_drain_release(struct inode *inode, struct file *file)
{
    struct iq_paxi_reader *reader = file->private_data;

    kvfree(reader->buffer);
    kfree(reader);
    return 0;
}
/* Allocate once before capture. No high-order allocation in the read loop. */
static ssize_t iq_drain_read(struct file *file, char __user *buf, size_t count, loff_t *pos)
{
    struct iq_paxi_reader *reader = file->private_data;
    unsigned long flags;
    u32 len, first;
    ssize_t result;

    if (!count) return 0;
    if (!iq_scope_data) return -ENOMEM;
    if (mutex_lock_interruptible(&reader->lock)) return -ERESTARTSYS;
    count = min_t(size_t, count, 65536);
    spin_lock_irqsave(&iq_scope_lock, flags);
    len = min_t(u32, count, iq_live_count);
    first = min_t(u32, len, IQ_SCOPE_LIMIT - iq_live_tail);
    memcpy(reader->buffer, iq_scope_data + iq_live_tail, first);
    memcpy(reader->buffer + first, iq_scope_data, len - first);
    iq_live_tail = (iq_live_tail + len) % IQ_SCOPE_LIMIT;
    iq_live_count -= len;
    spin_unlock_irqrestore(&iq_scope_lock, flags);
    if (!len) result = -EAGAIN;
    else if (copy_to_user(buf, reader->buffer, len)) result = -EFAULT;
    else result = len;
    mutex_unlock(&reader->lock);
    return result;
}
