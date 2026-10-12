// SPDX-License-Identifier: GPL-2.0-only
// Manual hardware test: drain every packet; store only a bounded prefix.
#include <atomic>
#include <cerrno>
#include <chrono>
#include <csignal>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <fcntl.h>
#include <string>
#include <thread>
#include <vector>
#include <sys/syscall.h>
#include <unistd.h>

static volatile sig_atomic_t interrupted;
static void stop(int) { interrupted = 1; }
static bool writeText(const std::string &path, const std::string &text) {
    int fd = open(path.c_str(), O_WRONLY);
    if (fd < 0) return false;
    const bool ok = write(fd, text.data(), text.size()) == ssize_t(text.size());
    close(fd); return ok;
}
int main(int argc, char **argv) {
    if (argc != 5) return 2;
    const std::string dir = argv[1];
    const double seconds = std::stod(argv[2]);
    const size_t captureLimit = std::stoull(argv[4]);
    if (seconds <= 0 || seconds > 1800 || captureLimit > 32*1024*1024) return 2;
    signal(SIGTERM, stop); signal(SIGINT, stop);
    int fd = open((dir+"/iq_drain").c_str(), O_RDONLY|O_NONBLOCK);
    if (fd < 0) { perror("iq_drain"); return 2; }
    std::vector<unsigned char> buffer(262144), capture;
    capture.reserve(captureLimit);
    std::atomic<bool> done{false};
    int producerError = 0, policyError = 0, readerError = 0;
    std::thread producer([&] {
        struct Attr { uint32_t size, policy; uint64_t flags; int32_t nice;
            uint32_t priority; uint64_t runtime, deadline, period; } attr{};
        attr.size=sizeof(attr); attr.policy=6; attr.runtime=950000;
        attr.deadline=attr.period=1000000;
        if (syscall(SYS_sched_setattr, 0, &attr, 0)) policyError=errno;
        if (!policyError && !writeText(dir+"/iq_stream", "0")) producerError=errno;
        done=true;
    });
    using Clock = std::chrono::steady_clock;
    const auto start=Clock::now(); auto lastData=start, nextUpdate=start;
    uint64_t packets=0, bytes=0, gaps=0;
    uint32_t expected=0;
    size_t used=0;
    bool stopSent=false;
    for (;;) {
        const auto now=Clock::now();
        const double elapsed=std::chrono::duration<double>(now-start).count();
        if (!stopSent && (elapsed>=seconds || interrupted || readerError)) {
            if (!writeText(dir+"/iq_stop", "Y")) readerError=errno;
            stopSent=true;
        }
        ssize_t n=read(fd,buffer.data()+used,buffer.size()-used);
        if (n<=0) {
            if (n<0 && errno!=EAGAIN && errno!=EINTR) { readerError=errno; interrupted=1; }
            if (done && now-lastData>std::chrono::milliseconds(100)) break;
            usleep(50); continue;
        }
        lastData=now; used+=n;
        size_t off=0;
        while (used-off>=24) {
            uint32_t h[6]; memcpy(h,buffer.data()+off,24);
            if (!h[0] || h[0]>11400 || h[0]%8 || h[0]!=h[3]) {
                readerError=EPROTO; interrupted=1; used=off; break;
            }
            if (used-off<24+h[0]) break;
            if (h[1]!=expected) gaps++;
            expected=h[1]+h[0]/8;
            packets++; bytes+=h[0];
            const size_t keep=std::min(size_t(h[0]),captureLimit-capture.size());
            capture.insert(capture.end(),buffer.begin()+off+24,buffer.begin()+off+24+keep);
            off+=24+h[0];
        }
        used-=off; memmove(buffer.data(),buffer.data()+off,used);
        if (now>=nextUpdate) {
            fprintf(stderr,"elapsed=%.1f bytes=%llu sequence_gaps=%llu\n",elapsed,
                    (unsigned long long)bytes,(unsigned long long)gaps);
            nextUpdate=now+std::chrono::seconds(10);
        }
    }
    close(fd); producer.join();
    FILE *out=fopen(argv[3],"wb");
    if (!out || fwrite(capture.data(),1,capture.size(),out)!=capture.size()) readerError=EIO;
    if (out) fclose(out);
    char status[4096]={}; int driverRet=-999;
    int sf=open((dir+"/iq_stream").c_str(),O_RDONLY);
    if (sf>=0) { if (read(sf,status,sizeof(status)-1)>0) sscanf(status,"ret=%d",&driverRet); close(sf); }
    fprintf(stderr,"%s\n",status);
    printf("{\"packets\":%llu,\"bytes\":%llu,\"sequence_gaps\":%llu,\"pending_bytes\":%zu,"
           "\"producer_errno\":%d,\"policy_errno\":%d,\"reader_errno\":%d,\"driver_ret\":%d,"
           "\"seconds\":%.6f,\"capture_bytes\":%zu}\n",
           (unsigned long long)packets,(unsigned long long)bytes,(unsigned long long)gaps,used,
           producerError,policyError,readerError,driverRet,
           std::chrono::duration<double>(Clock::now()-start).count(),capture.size());
    return gaps || used || producerError || policyError || readerError || driverRet ? 1 : 0;
}
