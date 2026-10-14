/* Explicit bounded helper: only the established BB padding buffers and
 * ready/cancel words can be written. Compile manually, never run from CI. */
#define _POSIX_C_SOURCE 200809L
#include <stdint.h>
#include <stddef.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <time.h>
#include <errno.h>

static volatile uint32_t *bar;
#ifndef NCO_MAX_BLOCKS
#define NCO_MAX_BLOCKS 1024u
#endif
#ifndef NCO_REFILL_SLEEP_NS
#define NCO_REFILL_SLEEP_NS 0
#endif
unsigned nco_refill_sleep_ns(void){return NCO_REFILL_SLEEP_NS;}
#if NCO_MAX_BLOCKS > 16384
#error "Finite NCO stream exceeds maximum LoRa budget"
#endif
#define BYTES (1024*1024)
#define BUFFER 0xbe800u
#define CONTROL 0xbfb40u
static double seconds(void){struct timespec t;clock_gettime(CLOCK_MONOTONIC,&t);return t.tv_sec+t.tv_nsec*1e-9;}
int nco_open(void){
    int fd=open("/sys/bus/pci/devices/0000:0d:00.0/resource2",O_RDWR|O_SYNC);
    if(fd<0)return -errno;
    void *p=mmap(NULL,BYTES,PROT_READ|PROT_WRITE,MAP_SHARED,fd,0);int e=errno;close(fd);
    if(p==MAP_FAILED)return -e;
    bar=p;
    if(bar[0xc04/4]!=0x18600000u){munmap((void*)bar,BYTES);bar=NULL;return -EINVAL;}
    return 0;
}
void nco_close(void){if(bar){munmap((void*)bar,BYTES);bar=NULL;}}
static int fill(unsigned sequence,const uint32_t *data){
    if(!bar||!sequence||sequence>NCO_MAX_BLOCKS)return -EINVAL;
    volatile uint32_t *dest=bar+(BUFFER+((sequence-1)&1)*2048)/4;
    for(unsigned i=0;i<512;i++)dest[i]=data[i];
    if(dest[511]!=data[511])return -EIO; /* PCIe posted-write flush before publication. */
    bar[(CONTROL+((sequence-1)&1)*4)/4]=sequence;
    if(bar[(CONTROL+((sequence-1)&1)*4)/4]!=sequence)return -EIO;
    return 0;
}
int nco_prepare(const uint32_t *data,unsigned blocks,double *benchmark){
    if(!bar||blocks<2||blocks>NCO_MAX_BLOCKS)return -EINVAL;
    bar[CONTROL/4]=0;bar[(CONTROL+4)/4]=0;bar[(CONTROL+12)/4]=0;
    double start=seconds();
    for(unsigned i=0;i<16;i++){int e=fill(1,data);if(e)return e;}
    *benchmark=(seconds()-start)/16;
    int e=fill(1,data);if(e)return e;return fill(2,data+512);
}
int nco_stream(const uint32_t *data,unsigned blocks,double *uploads,unsigned *consumed_out){
    if(!bar||blocks<2||blocks>NCO_MAX_BLOCKS)return -EINVAL;
    unsigned next=3,last=0;double deadline=seconds()+(NCO_MAX_BLOCKS>1024?blocks*.000386+1:2);
    while(seconds()<deadline){
        unsigned consumed=bar[(CONTROL+8)/4];
        if(consumed>blocks||consumed<last)return -EIO;
        last=consumed;*consumed_out=consumed;
        if(consumed==blocks)return 0;
        if(next<=blocks&&consumed>=next-2){
            double start=seconds();int e=fill(next,data+(next-1)*512);
            uploads[next-1]=seconds()-start;if(e)return e;next++;
        }
#if NCO_REFILL_SLEEP_NS > 0
        else {struct timespec pause={.tv_sec=0,.tv_nsec=NCO_REFILL_SLEEP_NS};nanosleep(&pause,NULL);}
#endif
        unsigned state=bar[0xbfb08/4]; /* OUTPUT state at 0x10017b08 */
        if(state>=3&&state<=5)return -EPIPE;
    }
    bar[(CONTROL+12)/4]=1;return -ETIMEDOUT;
}
