static char iq_paxi_result[1024];
static ssize_t iq_paxi_read(struct file*f,char __user*b,size_t n,loff_t*p)
{return simple_read_from_buffer(b,n,p,iq_paxi_result,strlen(iq_paxi_result));}
/* An internal C2H packet experiment. No CMAC/RF transmit queue is selected. */
static ssize_t iq_paxi_write(struct file*f,const char __user*b,size_t count,loff_t*pos)
{
 struct rtw89_dev*d=f->private_data;u32 filter,base=0,stop=0,page=0,index=0,busy=0,addr,physical=0;u16 num=0,id=0;
 bool owned=false,configured=false;int ret=0,j;u64 start=0,elapsed=0;
 if(atomic_cmpxchg(&iq_stream_claimed,0,1))return -EBUSY;
 wiphy_lock(d->hw->wiphy);filter=rtw89_read32(d,0xc04);
 if((rtw89_read32(d,0x9660)&8)||(rtw89_read32(d,0x21090)&1)){ret=-EBUSY;goto out;}
 rtw89_write32(d,0xc04,0x18006000);
 num=rtw89_read16(d,0x80324);base=rtw89_read32(d,0x80628);index=rtw89_read32(d,0x80428);stop=rtw89_read32(d,0x80004);page=rtw89_read32(d,0x80718);busy=rtw89_read32(d,0x80104);
 if(num||base||index||(busy&BIT(10))){ret=-EBUSY;goto out;}
 ret=iq_dle_req(d,152,false,&id);if(ret)goto out;owned=true;
 physical=iq_owned_physical(d,id,128);if(!physical){ret=-ENOSPC;goto release;}
 physical-=24;addr=0x08000000|(id<<15);rtw89_write32(d,0xc04,addr&~0x7ffff);
 addr=0x80000+(addr&0x7ffff);
 for(j=0;j<32;j++)rtw89_write32(d,addr+4*j,0);
 /* Two eight-byte TXBDs: RX descriptor + frozen LA data. */
 rtw89_write32(d,addr,32);rtw89_write32(d,addr+4,physical+64);
 rtw89_write32(d,addr+8,BIT(30)|8192);rtw89_write32(d,addr+12,0x18716000);
 rtw89_write32(d,addr+64,(3<<24)|(1<<18)|8192);rtw89_write32(d,addr+68,8<<16);
 rtw89_write32(d,addr+84,0xface0000);
 rtw89_write32(d,0xc04,0x18006000);rtw89_write32(d,0x80004,stop|BIT(2));
 rtw89_write32(d,0x80718,64<<16);rtw89_write32(d,0x80628,physical);rtw89_write16(d,0x80324,8);configured=true;
 rtw89_write32(d,0x80004,stop&~BIT(2));start=ktime_get_ns();rtw89_write32(d,0x80428,2);
 ret=read_poll_timeout_atomic(rtw89_read32,index,(index>>16)==2,1,2000,false,d,0x80428);elapsed=ktime_get_ns()-start;
 rtw89_write32(d,0x80004,stop|BIT(2));busy=rtw89_read32(d,0x80104);
 /* Leave memory pinned until module unload if a transfer remains active. */
 if(!(busy&BIT(10))){rtw89_write16(d,0x80324,num);rtw89_write32(d,0x80628,base);rtw89_write32(d,0x80718,page);rtw89_write32(d,0x80428,0);rtw89_write32(d,0x80004,stop);}
release:
 if(owned&&(!configured||!(busy&BIT(10))))iq_dispatch_packet(d,id,true);
out:
 snprintf(iq_paxi_result,sizeof(iq_paxi_result),"ret=%d index=%x busy=%x id=%u physical=%x configured=%u elapsed_ns=%llu\n",ret,index,busy,id,physical,configured,elapsed);
 rtw89_write32(d,0xc04,filter);wiphy_unlock(d->hw->wiphy);atomic_set(&iq_stream_claimed,0);return count;
}
static const struct file_operations iq_paxi_fops={.owner=THIS_MODULE,.open=simple_open,.read=iq_paxi_read,.write=iq_paxi_write,.llseek=default_llseek};
