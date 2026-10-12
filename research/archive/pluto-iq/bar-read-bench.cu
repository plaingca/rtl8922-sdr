#include <cuda_runtime.h>
#include <immintrin.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <unistd.h>
#include <cstdio>
#include <vector>
#include <chrono>
#include <cstring>
using Clock=std::chrono::steady_clock;
__attribute__((target("sse4.1"),noinline)) void copy128(unsigned char*d,const unsigned char*s,size_t n){for(size_t i=0;i<n;i+=16)_mm_storeu_si128((__m128i*)(d+i),_mm_load_si128((const __m128i*)(s+i)));}
__attribute__((target("avx2"),noinline)) void copy256(unsigned char*d,const unsigned char*s,size_t n){for(size_t i=0;i<n;i+=32)_mm256_storeu_si256((__m256i*)(d+i),_mm256_load_si256((const __m256i*)(s+i)));}
__attribute__((target("avx512f"),noinline)) void copy512(unsigned char*d,const unsigned char*s,size_t n){for(size_t i=0;i<n;i+=64)_mm512_storeu_si512(d+i,_mm512_load_si512(s+i));}
int main(int argc,char**argv){
 if(argc!=2)return 2;constexpr size_t n=0x50000;
 std::vector<unsigned char>ref(n),out(n);FILE*f=fopen(argv[1],"rb");if(!f||fread(ref.data(),1,n,f)!=n)return 3;fclose(f);
 int fd=open("/sys/bus/pci/devices/0000:0d:00.0/resource2",O_RDONLY|O_SYNC);if(fd<0){perror("openBAR");return 4;}
 auto*p=(unsigned char*)mmap(nullptr,n,PROT_READ,MAP_SHARED,fd,0x96000);if(p==MAP_FAILED){perror("mmap");return 5;}
 for(int mode=-1;mode<4;mode++){auto start=Clock::now();int mismatch=0;for(int j=0;j<2;j++){
 if(mode==-1){for(size_t i=0;i<n;i+=4){uint32_t v=*(volatile uint32_t*)(p+i);memcpy(out.data()+i,&v,4);}}
 else if(mode==0){for(size_t i=0;i<n;i+=8){uint64_t v=*(volatile uint64_t*)(p+i);memcpy(out.data()+i,&v,8);}}
 else if(mode==1)copy128(out.data(),p,n);else if(mode==2)copy256(out.data(),p,n);else copy512(out.data(),p,n);
 mismatch+=memcmp(out.data(),ref.data(),n)!=0;}
 double seconds=std::chrono::duration<double>(Clock::now()-start).count();printf("cpu_width=%d bytes=%zu copies=2 seconds=%.9f MBps=%.3f mismatch=%d\n",mode<0?32:64<<mode,n,seconds,2*n/seconds/1e6,mismatch);
 printf("first_ref=");for(int k=0;k<32;k++)printf("%02x",ref[k]);printf(" first_read=");for(int k=0;k<32;k++)printf("%02x",out[k]);printf("\n");fflush(stdout);}
 cudaSetDeviceFlags(cudaDeviceScheduleYield|cudaDeviceMapHost);
 cudaError_t e=cudaHostRegister(p,n,cudaHostRegisterIoMemory|cudaHostRegisterMapped|cudaHostRegisterReadOnly);
 printf("cuda_register=%d %s\n",(int)e,cudaGetErrorString(e));fflush(stdout);
 if(e==cudaSuccess){void*devptr=nullptr,*dest=nullptr;cudaStream_t st=nullptr;
 e=cudaHostGetDevicePointer(&devptr,p,0);if(e==cudaSuccess)e=cudaMalloc(&dest,n);if(e==cudaSuccess)e=cudaStreamCreateWithFlags(&st,cudaStreamNonBlocking);
 auto start=Clock::now();int copies=0;for(int j=0;e==cudaSuccess&&j<20;j++){e=cudaMemcpyAsync(dest,devptr,n,cudaMemcpyDeviceToDevice,st);if(e==cudaSuccess)e=cudaStreamSynchronize(st);if(e==cudaSuccess)copies++;}
 double seconds=std::chrono::duration<double>(Clock::now()-start).count();int mismatch=-1;
 if(e==cudaSuccess){e=cudaMemcpy(out.data(),dest,n,cudaMemcpyDeviceToHost);if(e==cudaSuccess)mismatch=memcmp(out.data(),ref.data(),n)!=0;}
 printf("cuda_copy=%d %s copies=%d seconds=%.9f MBps=%.3f mismatch=%d\n",(int)e,cudaGetErrorString(e),copies,seconds,copies*n/seconds/1e6,mismatch);fflush(stdout);
 if(st)cudaStreamDestroy(st);if(dest)cudaFree(dest);cudaHostUnregister(p);}
 munmap(p,n);close(fd);return 0;
}
