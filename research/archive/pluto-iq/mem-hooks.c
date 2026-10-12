static ssize_t iq_memory_read(struct file *file, char __user *buf,
                             size_t count, loff_t *pos)
{
    struct rtw89_dev *rtwdev = file->private_data;
    struct rtw89_pci *rtwpci = (struct rtw89_pci *)rtwdev->priv;
    u32 filter;
    void *data;
    if (rtwdev->hci.type != RTW89_HCI_TYPE_PCIE) return -EINVAL;
    if (*pos < 0 || *pos >= 0x40000) return 0;
    count = min_t(size_t, count, 0x40000 - *pos);
    count = min_t(size_t, count, 0x40000);
    data = kvmalloc(count, GFP_KERNEL);
    if (!data) return -ENOMEM;
    wiphy_lock(rtwdev->hw->wiphy);
    filter = rtw89_read32(rtwdev, 0xc04);
    rtw89_write32(rtwdev, 0xc04, 0x18700000);
    memcpy_fromio(data, rtwpci->mmap + 0x80000 + 0x16000 + *pos, count);
    rtw89_write32(rtwdev, 0xc04, filter);
    wiphy_unlock(rtwdev->hw->wiphy);
    if (copy_to_user(buf, data, count)) { kvfree(data); return -EFAULT; }
    kvfree(data); *pos += count; return count;
}
static const struct file_operations iq_memory_fops = {
    .owner = THIS_MODULE, .open = simple_open, .read = iq_memory_read,
    .llseek = default_llseek,
};
