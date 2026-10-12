#include <atomic>
#include <thread>
#include <vector>
#include <string>
#include <cstdio>
#include <cstring>
#include <fcntl.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <cstdint>
#include <cerrno>
int main(int argc,char**argv){
 if(argc!=4)return 2;
 std::string d=argv[1];unsigned ms=std::stoul(argv[2]);std::atomic<bool> done{false};int producer_errno=0,policy_errno=0;
 std::thread t([&]{struct Attr{uint32_t size,policy;uint64_t flags;int32_t nice;uint32_t priority;uint64_t runtime,deadline,period;} a{};
 a.size=sizeof(a);a.policy=6;a.runtime=950000;a.deadline=a.period=1000000;
 if(syscall(SYS_sched_setattr,0,&a,0))policy_errno=errno;
 int fd=open((d+"/iq_stream").c_str(),O_WRONLY);std::string text=std::to_string(ms);
 if(fd<0||write(fd,text.data(),text.size())<0)producer_errno=errno;
 if(fd>=0)close(fd);done=true;});
 int fd=open((d+"/iq_drain").c_str(),O_RDONLY|O_NONBLOCK);std::vector<unsigned char>b(262144),tail;size_t used=0;uint32_t expected=0;uint64_t packets=0,bytes=0,gaps=0;int empty=0;
 for(;;){ssize_t n=read(fd,b.data()+used,b.size()-used);if(n<0){if(errno!=EAGAIN){perror("read");break;}if(done&&++empty>5)break;usleep(50);continue;}empty=0;used+=n;size_t off=0;
 while(used-off>=24){uint32_t h[6];memcpy(h,b.data()+off,24);if(h[0]>11400||h[0]!=h[3]||!h[0]){fprintf(stderr,"bad header %u %u\n",h[0],h[3]);return 3;}if(used-off<24+h[0])break;
 if(h[1]!=expected)gaps++;expected=h[1]+h[0]/8;packets++;bytes+=h[0];tail.assign(b.begin()+off+24,b.begin()+off+24+h[0]);off+=24+h[0];}
 used-=off;memmove(b.data(),b.data()+off,used);
 }close(fd);t.join();FILE*f=fopen(argv[3],"wb");if(f){fwrite(tail.data(),1,tail.size(),f);fclose(f);}
 int driver_ret=-999;char status[4096]={};int sf=open((d+"/iq_stream").c_str(),O_RDONLY);if(sf>=0){ssize_t n=read(sf,status,sizeof(status)-1);if(n>0)sscanf(status,"ret=%d",&driver_ret);close(sf);}
 printf("{\"packets\":%llu,\"bytes\":%llu,\"sequence_gaps\":%llu,\"pending_bytes\":%zu,\"producer_errno\":%d,\"policy_errno\":%d,\"driver_ret\":%d}\n",(unsigned long long)packets,(unsigned long long)bytes,(unsigned long long)gaps,used,producer_errno,policy_errno,driver_ret);
 return gaps||used||producer_errno||policy_errno||driver_ret?1:0;
}
