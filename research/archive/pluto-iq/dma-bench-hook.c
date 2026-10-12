/* Bounded diagnostic: repeatedly copy stopped LA SRAM into one owned packet.
 * Never reuse an allocation after dispatch, and never free on DMA timeout. */
static char iq_bench_result[4096];
static ssize_t iq_bench_read(struct file *f,char __user *b,size_t n,loff_t *p)
{return simple_read_from_buffer(b,n,p,iq_bench_result,strlen(iq_bench_result));}
static ssize_t iq_bench_write(struct file *file,const char __user *b,size_t count,loff_t *pos)
{
 struct rtw89_dev *d=file->private_data;
 u32 old,regs[3],ctrl=0,physical,delay,mode,j,source,source_index;
 u16 id=0;int ret=0;bool owned=false,active=false;size_t used=0;
 unsigned int bytes;char text[24];u64 start,elapsed;
 if(count>=sizeof(text)||copy_from_user(text,b,count))return -EINVAL;
 text[count]=0;if(kstrtouint(text,0,&bytes)||(bytes!=4096&&bytes!=8192&&bytes!=10240))return -EINVAL;
 if(atomic_cmpxchg(&iq_stream_claimed,0,1))return -EBUSY;
 wiphy_lock(d->hw->wiphy);old=rtw89_read32(d,0xc04);
 if((rtw89_read32(d,0x9660)&BIT(3))||((rtw89_read32(d,0x9664)>>17)&7)==1){ret=-EBUSY;goto out;}
 rtw89_write32(d,0xc04,0x18008000);
 for(j=0;j<3;j++)regs[j]=rtw89_read32(d,0x80050+4*j);
 if((regs[2]&BIT(31))||(rtw89_read32(d,0x800e8)&BIT(5))){ret=-EBUSY;goto out;}
 ret=iq_prepare_packet(d,bytes,0,&id);if(ret)goto restore;owned=true;
 physical=iq_owned_physical(d,id,bytes);
 for(source_index=0;source_index<2;source_index++){
 /* Second source is the same producer-owned PLE packet. This overlapping
  * transfer is only a bus timing diagnostic; it cannot qualify copy fidelity. */
 source=source_index?0x08000000|(id<<15):0x18716000;
 for(mode=0;mode<2;mode++){
 if(mode&&!physical)continue;
 for(delay=0;delay<=32;delay=delay?delay*4:1){
 start=ktime_get_ns();
 for(j=0;j<100;j++){
  rtw89_write32(d,0x80050,source);
  rtw89_write32(d,0x80054,mode?physical:(0x08000000|(id<<15))+24);
  rtw89_write32(d,0x80058,BIT(31)|bytes);active=true;
  ret=read_poll_timeout_atomic(rtw89_read32,ctrl,!(ctrl&BIT(31)),delay,2000,false,d,0x80058);
  if(ret)goto restore;active=false;rtw89_write32(d,0x800e4,BIT(5));
 }
 elapsed=ktime_get_ns()-start;
 used+=scnprintf(iq_bench_result+used,sizeof(iq_bench_result)-used,
  "source=%u physical=%u delay=%u bytes=%u copies=100 elapsed_ns=%llu\n",source_index,mode,delay,bytes,elapsed);
 }
 }}
 /* Restore a fresh LA copy so host can compare all bytes against frozen SRAM. */
 rtw89_write32(d,0x80050,0x18716000);rtw89_write32(d,0x80054,(0x08000000|(id<<15))+24);
 rtw89_write32(d,0x80058,BIT(31)|bytes);active=true;
 ret=read_poll_timeout_atomic(rtw89_read32,ctrl,!(ctrl&BIT(31)),1,2000,false,d,0x80058);
 if(ret)goto restore;active=false;rtw89_write32(d,0x800e4,BIT(5));
 iq_header_packet(d,bytes,0,id);ret=iq_dispatch_packet(d,id,false);owned=false;
restore:
 if(owned&&!active)iq_dispatch_packet(d,id,true);
 rtw89_write32(d,0xc04,0x18008000);
 if(!(rtw89_read32(d,0x80058)&BIT(31)))for(j=0;j<3;j++)rtw89_write32(d,0x80050+4*j,regs[j]);
out:
 used+=scnprintf(iq_bench_result+used,sizeof(iq_bench_result)-used,"ret=%d\n",ret);
 rtw89_write32(d,0xc04,old);wiphy_unlock(d->hw->wiphy);atomic_set(&iq_stream_claimed,0);return count;
}
static const struct file_operations iq_bench_fops={.owner=THIS_MODULE,.open=simple_open,.read=iq_bench_read,.write=iq_bench_write,.llseek=default_llseek};
