/* Manual hardware entry points: online compile + existing sequence-owned RAM
 * writer. The included compiler alone has no hardware or file access. */
#include "bb_nco_mapped_writer.c"
#include "bb_nco_realtime.c"
#include <string.h>
static nco_state online;
static unsigned interpolation;
static uint32_t expected[1024];
void nco_rt_expected(uint32_t *output){memcpy(output,expected,sizeof(expected));}
int nco_rt_prepare(const float *iq,unsigned blocks,unsigned factor,float feedback,float weight,uint32_t *preload,double *benchmark){
    if(!bar||blocks<2||blocks>1024||!factor||factor>128)return -EINVAL;
    interpolation=factor;nco_compiler_init(&online,feedback,weight);
    nco_compile_interpolated(&online,iq,0,4096,factor,preload);
    nco_compile_interpolated(&online,iq,4096,4096,factor,preload+512);
    memcpy(expected,preload,sizeof(expected));
    return nco_prepare(preload,blocks,benchmark);
}
int nco_rt_stream(const float *iq,unsigned blocks,double *compile_times,double *upload_times,unsigned *consumed_out){
    if(!bar||blocks<2||blocks>1024)return -EINVAL;
    unsigned next=3,last=0;double deadline=seconds()+2;uint32_t packed[512];
    while(seconds()<deadline){
        unsigned consumed=bar[(CONTROL+8)/4];
        if(consumed>blocks||consumed<last)return -EIO;
        last=consumed;*consumed_out=consumed;if(consumed==blocks)return 0;
        if(next<=blocks&&consumed>=next-2){
            double start=seconds();
            nco_compile_interpolated(&online,iq,(uint64_t)(next-1)*4096,4096,interpolation,packed);
            memcpy(expected+((next-1)&1)*512,packed,sizeof(packed));
            compile_times[next-1]=seconds()-start;start=seconds();
            int e=fill(next,packed);upload_times[next-1]=seconds()-start;
            if(e)return e;
            next++;
        }
        unsigned state=bar[0xbfb08/4];if(state>=3&&state<=5)return -EPIPE;
    }
    bar[(CONTROL+12)/4]=1;return -ETIMEDOUT;
}
