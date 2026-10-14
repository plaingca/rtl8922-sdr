/* Hardware-free causal I/Q-to-NCO error-feedback compiler. No file/device IO. */
#include <stdint.h>
#include <math.h>
#include <stddef.h>
#define Q (6.2831853071795864769*3.0/128.0)
#ifdef NCO_EXTENDED
static const unsigned codes[]={0,1,2,3,4,5,6,8,9,12,13,16,17,24,32,33};
#else
static const unsigned codes[]={0,1,2,3,4,5,6};
#endif
#define COMMANDS (sizeof(codes)/sizeof(codes[0]))
static float re[128][COMMANDS],im[128][COMMANDS];
typedef struct {float er,ei;unsigned phase;uint64_t samples;float feedback,phase_weight;} nco_state;
unsigned nco_compiler_codebook(unsigned *output){for(unsigned i=0;i<COMMANDS;i++)output[i]=codes[i];return COMMANDS;}
void nco_compiler_init(nco_state *s,float feedback,float phase_weight){
    for(unsigned p=0;p<128;p++)for(unsigned v=0;v<COMMANDS;v++){
        double d=Q*((int)codes[v]-1),a=Q*p+d*.5,m=codes[v]?(fabs(d)<1e-12?1:sin(d*.5)/(d*.5)):0;
        re[p][v]=(float)(m*cos(a));im[p][v]=(float)(m*sin(a));
    }
    *s=(nco_state){.feedback=feedback,.phase_weight=phase_weight};
}
void nco_compile(nco_state *s,const float *iq,size_t count,uint32_t *packed){
    for(size_t n=0;n<count;n++){
        float tr=iq[2*n],ti=iq[2*n+1],r=tr+s->er,i=ti+s->ei;
        unsigned p=s->phase,vbest=0;float best=1e30f;
        for(unsigned v=0;v<COMMANDS;v++){
            float dr=r-re[p][v],di=i-im[p][v],cost=dr*dr+di*di;
            if(s->phase_weight>0){
                unsigned next=(p+codes[v]-1)&127;
                float pr=tr-re[next][1],pi=ti-im[next][1];cost+=s->phase_weight*(pr*pr+pi*pi);
            }
            if(cost<best){best=cost;vbest=v;}
        }
        s->er=s->feedback*(r-re[p][vbest]);s->ei=s->feedback*(i-im[p][vbest]);
        if(fabsf(s->er)+fabsf(s->ei)<1e-20f){s->er=0;s->ei=0;}
        float norm=s->er*s->er+s->ei*s->ei;
        if(norm>16){float scale=4/sqrtf(norm);s->er*=scale;s->ei*=scale;}
        if(!(n&7))packed[n/8]=0;
        packed[n/8]|=vbest<<(4*(n&7));
        s->phase=(p+codes[vbest]-1)&127;s->samples++;
    }
}
/* Linear interpolation needs one input sample of lookahead. first_native
 * makes arbitrary chunk boundaries reproduce the same interpolation phase. */
void nco_compile_interpolated(nco_state *s,const float *iq,uint64_t first_native,size_t count,unsigned factor,uint32_t *packed){
    float target[8192];
    if(!factor||count>4096)return;
    for(size_t n=0;n<count;n++){
        uint64_t p=first_native+n;size_t k=p/factor;float f=(float)(p%factor)/factor;
        target[2*n]=iq[2*k]+f*(iq[2*k+2]-iq[2*k]);
        target[2*n+1]=iq[2*k+1]+f*(iq[2*k+3]-iq[2*k+1]);
    }
    nco_compile(s,target,count,packed);
}
