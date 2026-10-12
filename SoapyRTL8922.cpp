#include <SoapySDR/Device.hpp>
#include <SoapySDR/Registry.hpp>
#include <SoapySDR/Formats.hpp>
#include <SoapySDR/Errors.hpp>
#include <SoapySDR/Constants.h>
#include <SoapySDR/Version.hpp>
#include <atomic>
#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstring>
#include <cstdlib>
#include <filesystem>
#include <fstream>
#include <map>
#include <mutex>
#include <regex>
#include <stdexcept>
#include <thread>
#include <vector>
#include <fcntl.h>
#include <sys/file.h>
#include <sys/wait.h>
#include <sys/syscall.h>
#include <iostream>
#include <unistd.h>
#include "fields.hpp"
namespace fs = std::filesystem;
using Clock = std::chrono::steady_clock;
static std::string readFile(const fs::path &p) {
    std::ifstream f(p); if (!f) throw std::runtime_error("Cannot read " + p.string());
    return std::string(std::istreambuf_iterator<char>(f), {});
}
static void writeFile(const fs::path &p, const std::string &v) {
    std::ofstream f(p); f << v; f.close();
    if (!f) throw std::runtime_error("Cannot write " + p.string());
}
static std::string debugPath() {
    const fs::path root("/sys/kernel/debug/ieee80211");
    if (fs::exists(root)) for (const auto &e : fs::directory_iterator(root))
        if (fs::exists(e.path()/"rtw89/iq_stream")) return (e.path()/"rtw89").string();
    return {};
}
class RTL8922 : public SoapySDR::Device {
    fs::path dbg;
    std::string iw, iface, format, producerScheduler, pci;
    std::map<uint32_t,uint32_t> saved;
    double frequency = 2412000000., rate = 5000000.;
    int lockfd = -1, datafd = -1;
    bool opened = false, active = false, overflow = false, experimental40 = false;
    std::atomic<bool> done{true}, workerError{false};
    std::thread worker;
    mutable std::recursive_mutex streamMutex;
    std::atomic<unsigned> controlWaiters{0};
    struct ControlLock {
        std::atomic<unsigned> &waiters;
        std::unique_lock<std::recursive_mutex> lock;
        ControlLock(std::atomic<unsigned> &w,std::recursive_mutex &m):waiters(w),lock(m,std::defer_lock) {
            waiters++;
            try { lock.lock(); } catch(...) { waiters--; throw; }
        }
        ~ControlLock() { waiters--; }
    };
    bool discontinuity = false;
    long long timeBaseNs = 0;
    std::vector<uint8_t> pending, packet;
    size_t cursor = 0;
    uint32_t expected = 0;
    uint64_t ticks = 0;
    double nativeRate = 5000000.;
    double rfCenter = 2412000000., ncoCos = 1., ncoSin = 0., ncoStepCos = 1., ncoStepSin = 0.;
    uint64_t ncoSamples = 0;
    bool ncoActive = false;
    std::vector<double> channelCenters;
    bool freeTuning = false;
    std::map<std::pair<unsigned,uint32_t>,uint32_t> freeRFBackup;
    std::map<uint32_t,uint32_t> freeBBBackup;
    unsigned sampleBits = 14, packedPhases = 1, packedPhase = 0;
    unsigned decimation = 1, phase = 0, filterPos = 0;
    std::vector<float> taps, historyI, historyQ;
    void discoverChannels() {
        int fds[2]; if(pipe(fds)) throw std::runtime_error("channel discovery pipe failed");
        const pid_t pid=fork();
        if(pid<0) { close(fds[0]); close(fds[1]); throw std::runtime_error("fork failed"); }
        if(!pid) {
            dup2(fds[1],STDOUT_FILENO); close(fds[0]); close(fds[1]);
            execl(iw.c_str(),iw.c_str(),"dev",iface.c_str(),"info",nullptr); _exit(127);
        }
        close(fds[1]); std::string info; char buf[4096]; ssize_t n;
        while((n=read(fds[0],buf,sizeof(buf)))>0) info.append(buf,n);
        close(fds[0]); int status=0; while(waitpid(pid,&status,0)<0&&errno==EINTR) {}
        std::smatch match;
        if(!WIFEXITED(status)||WEXITSTATUS(status)||!std::regex_search(info,match,std::regex("wiphy ([0-9]+)")))
            throw std::runtime_error("Cannot identify RTL8922 wiphy");
        const std::string phy="phy"+match[1].str();
        if(pipe(fds)) throw std::runtime_error("channel discovery pipe failed");
        const pid_t child=fork();
        if(child<0) { close(fds[0]); close(fds[1]); throw std::runtime_error("fork failed"); }
        if(!child) {
            dup2(fds[1],STDOUT_FILENO); close(fds[0]); close(fds[1]);
            execl(iw.c_str(),iw.c_str(),"phy",phy.c_str(),"info",nullptr); _exit(127);
        }
        close(fds[1]); info.clear();
        while((n=read(fds[0],buf,sizeof(buf)))>0) info.append(buf,n);
        close(fds[0]); status=0; while(waitpid(child,&status,0)<0&&errno==EINTR) {}
        if(!WIFEXITED(status)||WEXITSTATUS(status)) throw std::runtime_error("Cannot read enabled channels");
        const std::regex channel("\\* ([0-9]+) MHz \\[[0-9]+\\]([^\\n]*)");
        for(auto it=std::sregex_iterator(info.begin(),info.end(),channel);it!=std::sregex_iterator();++it) {
            const double mhz=std::stod((*it)[1]);
            if((*it)[2].str().find("disabled")==std::string::npos&&mhz>=2412&&mhz<=7115)
                channelCenters.push_back(mhz*1e6);
        }
        std::sort(channelCenters.begin(),channelCenters.end());
        if(channelCenters.empty()) throw std::runtime_error("No enabled receive channels");
    }
    std::vector<double> centers(double sampleRate) const {
        if(freeTuning&&sampleRate!=40000000) {
            std::vector<double> result;
            for(double f=2312000000.;f<=2382000000.;f+=5000000.) result.push_back(f);
            for(double f=2412000000.;f<=2472000000.;f+=5000000.) result.push_back(f);
            result.push_back(2484000000.);
            for(double f=2500000000.;f<=2515000000.;f+=5000000.) result.push_back(f);
            for(double f=4900000000.;f<=5950000000.;f+=5000000.) result.push_back(f);
            if(channelCenters.back()>=5955000000.)
                for(double f=5955000000.;f<=7115000000.;f+=5000000.) result.push_back(f);
            return result;
        }
        if(sampleRate!=40000000) return channelCenters;
        std::vector<double> result;
        for(double c:channelCenters) if(c>=2422000000.&&c<=2462000000.&&
            std::binary_search(channelCenters.begin(),channelCenters.end(),c-10000000.)&&
            std::binary_search(channelCenters.begin(),channelCenters.end(),c+10000000.)) result.push_back(c);
        return result;
    }
    SoapySDR::RangeList tuningRanges(double sampleRate) const {
        if(freeTuning) {
            if(sampleRate==40000000) return {};
            return {{2312000000.,2382000000.},{2412000000.,2484000000.},{2500000000.,2515000000.},
                    {4900000000.,channelCenters.back()>=5955000000.?7115000000.:5950000000.}};
        }
        const auto cs=centers(sampleRate); SoapySDR::RangeList result;
        const double half=std::max(5000000.,sampleRate)/2;
        // Never bridge a regulatory/channel gap. Low-rate modes retain the
        // native 5MHz analog span; higher bands may expose separated ranges.
        for(size_t start=0;start<cs.size();) {
            size_t end=start;
            const double step=cs[start]<3000000000.?5000000.:20000000.;
            while(end+1<cs.size()&&cs[end+1]-cs[end]<=step) ++end;
            for(size_t j=start;j<=end;++j) {
                const double lo=std::max(cs[start],cs[j]-half),hi=std::min(cs[end],cs[j]+half);
                if(!result.empty()&&lo<=result.back().maximum())
                    result.back()=SoapySDR::Range(result.back().minimum(),std::max(hi,result.back().maximum()));
                else result.emplace_back(lo,hi);
            }
            start=end+1;
        }
        return result;
    }
    double coarseCenter(double sampleRate,double requested) const {
        bool valid=false;
        for(const auto &r:tuningRanges(sampleRate)) if(requested>=r.minimum()&&requested<=r.maximum()) valid=true;
        if(!std::isfinite(requested)||!valid) throw std::runtime_error("Frequency unavailable in this sample-rate mode or regulatory domain; query getFrequencyRange");
        const auto cs=centers(sampleRate);
        return *std::min_element(cs.begin(),cs.end(),[&](double a,double b){return std::abs(a-requested)<std::abs(b-requested);});
    }
    void updateNco(bool reset) {
        if(reset) { ncoCos=1.; ncoSin=0.; ncoSamples=0; ncoActive=false; }
        const double angle=2*M_PI*(frequency-rfCenter)/nativeRate;
        ncoStepCos=std::cos(angle); ncoStepSin=std::sin(angle);
        ncoActive=ncoActive||frequency!=rfCenter;
    }
    void skipNco(uint64_t samples) {
        if(!ncoActive) return;
        const double angle=std::remainder(2*M_PI*(frequency-rfCenter)/nativeRate*samples,2*M_PI);
        const double c=std::cos(angle),s=std::sin(angle),old=ncoCos;
        ncoCos=old*c-ncoSin*s; ncoSin=ncoSin*c+old*s;
        const double magnitude=std::hypot(ncoCos,ncoSin);
        ncoCos/=magnitude; ncoSin/=magnitude; ncoSamples+=samples;
    }
    void initFilter() {
        decimation=static_cast<unsigned>(nativeRate/rate); phase=filterPos=0;
        taps.clear(); historyI.clear(); historyQ.clear();
        if(decimation==1) return;
        constexpr int count=191;
        const double cutoff=0.45/decimation;
        double sum=0;
        for(int n=0;n<count;++n) {
            const int t=n-(count-1)/2;
            const double sinc=t?std::sin(2*M_PI*cutoff*t)/(M_PI*t):2*cutoff;
            const double value=sinc*(0.54-0.46*std::cos(2*M_PI*n/(count-1)));
            taps.push_back(value); sum+=value;
        }
        for(auto &v:taps) v/=sum;
        historyI.assign(count,0); historyQ.assign(count,0);
    }
    uint32_t rd(uint32_t a) {
        char text[40]; snprintf(text,sizeof(text),"%x 4\n",a); writeFile(dbg/"read_reg",text);
        const std::string v=readFile(dbg/"read_reg");
        std::regex pat("0x[0-9a-fA-F]+"); uint32_t result=0; bool found=false;
        for (auto it=std::sregex_iterator(v.begin(),v.end(),pat);it!=std::sregex_iterator();++it) {
            result=std::stoul(it->str(),nullptr,16); found=true;
        }
        if (!found) throw std::runtime_error("Invalid register readback");
        return result;
    }
    void wr(uint32_t a,uint32_t v) {
        if (!saved.count(a)) saved[a]=rd(a);
        char text[80]; snprintf(text,sizeof(text),"%x %x 4\n",a,v); writeFile(dbg/"write_reg",text);
    }
    void field(const std::string &name,uint32_t value) {
        for (const auto &f:fields) if (name==f.name) {
            const unsigned shift=__builtin_ctz(f.mask);
            wr(f.addr,(rd(f.addr)&~f.mask)|((value<<shift)&f.mask)); return;
        }
        throw std::runtime_error("Unknown field "+name);
    }
    uint32_t rdRF(unsigned path,uint32_t addr) {
        char text[80]; snprintf(text,sizeof(text),"%u %x fffff\n",path,addr);
        writeFile(dbg/"read_rf",text); const auto value=readFile(dbg/"read_rf");
        const std::regex pat("0x[0-9a-fA-F]+"); uint32_t result=0xffffffff;
        for(auto it=std::sregex_iterator(value.begin(),value.end(),pat);it!=std::sregex_iterator();++it) result=std::stoul(it->str(),nullptr,16);
        if(result>0xfffff) throw std::runtime_error("Invalid RF register readback");
        return result;
    }
    void wrRF(unsigned path,uint32_t addr,uint32_t value) {
        char text[80]; snprintf(text,sizeof(text),"%u %x fffff %x\n",path,addr,value);
        writeFile(dbg/"write_rf",text);
    }
    void tune() {
        if(rate==40000000&&(frequency<2422000000.||frequency>2462000000.))
            throw std::runtime_error("40 MS/s requires a center frequency from 2422 to 2462 MHz");
        rfCenter=coarseCenter(rate,frequency);
        if(freeTuning&&!freeRFBackup.empty()) {
            // iw can skip an unchanged channel. Restore the previous normal
            // baseline before asking it to tune, so backups stay genuine.
            field("la_en",0);
            for(const auto &v:freeRFBackup) wrRF(v.first.first,v.first.second,v.second);
            for(const auto &v:freeBBBackup) wr(v.first,v.second);
        }
        double baseline=rfCenter;
        const int band=rfCenter<3000000000.?2:rfCenter<5955000000.?5:6;
        if(freeTuning) {
            double distance=1e99;
            for(double c:channelCenters) if((c<3000000000.?2:c<5955000000.?5:6)==band&&std::abs(c-rfCenter)<distance) {
                distance=std::abs(c-rfCenter); baseline=c;
            }
            if(distance==1e99) throw std::runtime_error("No baseline channel for this radio band");
        }
        const auto mhz=std::to_string(static_cast<int>(std::llround((baseline-(rate==40000000?10000000:0))/1e6)));
        const pid_t pid=fork(); if (pid<0) throw std::runtime_error("fork failed");
        if (!pid) { execl(iw.c_str(),iw.c_str(),"dev",iface.c_str(),"set","freq",mhz.c_str(),rate==40000000?"HT40+":"HT20",nullptr); _exit(127); }
        int status=0; while(waitpid(pid,&status,0)<0) if(errno!=EINTR) throw std::runtime_error("waitpid failed");
        if(!WIFEXITED(status)||WEXITSTATUS(status)) throw std::runtime_error("iw rejected frequency");
        if(freeTuning) {
            field("la_en",0);
            unsigned ch;
            uint32_t bits;
            if(rfCenter<2400000000.) { bits=0x200; ch=std::llround((rfCenter/1e6-2307)/5); }
            else if(rfCenter>=2500000000.&&rfCenter<3000000000.) { bits=0x100; ch=100+std::llround((rfCenter/1e6-2500)/5); }
            else if(band==2) { bits=0; ch=rfCenter==2484000000.?14:std::llround((rfCenter/1e6-2407)/5); }
            else if(rfCenter<5005000000.) { bits=0x10200; ch=std::llround((rfCenter/1e6-4000)/5); }
            else { bits=band==5?0x10100:0x30000; ch=std::llround((rfCenter/1e6-(band==5?5000:5950))/5); }
            freeRFBackup.clear(); freeBBBackup.clear();
            for(unsigned p:{0u,1u}) for(uint32_t a:{0x18u,0x10018u}) freeRFBackup[{p,a}]=rdRF(p,a);
            for(uint32_t a:{0x26b4cu,0x26b50u}) freeBBBackup[a]=rd(a);
            for(const auto &v:freeRFBackup) {
                const uint32_t value=(v.second&~0x31fffu)|bits|ch;
                wrRF(v.first.first,v.first.second,value);
                std::this_thread::sleep_for(std::chrono::microseconds(100));
                // Path-B 0x18 reads the baseline value in the current shared
                // synthesizer mode; both 0x10018 registers and path-A 0x18
                // follow the requested channel in RF-qualified captures.
                if(!(v.first.first==1&&v.first.second==0x18)&&
                    (rdRF(v.first.first,v.first.second)&0x31fffu)!=(value&0x31fffu))
                    throw std::runtime_error("RF tune channel/band readback mismatch");
            }
            wr(0x26b4c,(rd(0x26b4c)&~0x1fffu)|static_cast<unsigned>(std::llround(rfCenter/1e6)));
            wr(0x26b50,(rd(0x26b50)&~0x7fu)|static_cast<unsigned>(std::llround((1<<18)/(rfCenter/1e6))));
            std::this_thread::sleep_for(std::chrono::milliseconds(20));
        }
    }
    void configure() {
        tune(); wr(0x9660,0); field("la_en",0);
        for (const char *name:{"la_and1_mask","la_and2_en","la_and3_en","la_and4_en","la_and5_sel","la_and6_sel","la_and7_sel","la_and8_mask","la_mac_and0_en","la_mac_and1_en","la_mac_and2_en","la_re_and1_sel","la_re_and1_mask","la_scope_mode_en","la_scope_mode_auto_fix_la","la_and0_inv","la_and8_inv"}) field(name,0);
        field("and0_trig_disable",1);
        // A zero count also allowed early completion after a 20 MS/s retune.
        // Use the count that suppressed short unwanted triggers at 40 MS/s.
        field("la_trigger_cnt",255); field("la_trigger_edge",0);
        field("dma_dbgport_base_n",31); field("dma_dbgport_ext_base_n",0);
        for(const char p:std::string("abcd")) { field(std::string("dma_")+p+"_path_sel",1); field(std::string("dma_")+p+"_src_sel",2); }
        for(int bit=56;bit<64;++bit) field("dma_hdr_sel_"+std::to_string(bit),0);
        nativeRate=freeTuning?20000000.:rate>=10000000?rate:5000000.;
        sampleBits=nativeRate>=20000000?8:nativeRate==10000000?12:14;
        packedPhases=nativeRate>=20000000?4:nativeRate==10000000?2:1;
        field("dma_data_type",nativeRate>=20000000?14:nativeRate==10000000?12:0);
        field("r_dma_rdrdy",0); field("dma_la_phy_sel",0);
        // Qualified modes emit 5 million records/s; experimental40 needs
        // 10 million records/s. Multiphase packing
        // preserves consecutive samples at native 10/20 MHz bandwidths.
        const unsigned small=nativeRate>=20000000?0:nativeRate==10000000?2:1;
        wr(0x26b50,(rd(0x26b50)&0x3fffffff)|(small<<30));
        field("la_smp_rt_sel",nativeRate==40000000?3:nativeRate==20000000?4:nativeRate==10000000?3:2);
        field("la_clk_en",1); field("la_en",1);
        wr(0x8938,(rd(0x8938)&~0xc00)|0x400); wr(0x8924,(rd(0x8924)&~0x80000)|8);
        updateNco(true);
    }
    SoapySDR::Stream *handle() { return reinterpret_cast<SoapySDR::Stream *>(this); }
    void check(SoapySDR::Stream *s) { if(s!=handle()||!opened) throw std::runtime_error("Invalid stream"); }
    long long nextTimeNs() const { return timeBaseNs+static_cast<long long>(ticks*1e9/rate); }
    void changeSettings(double newRate,double newFrequency) {
        if(newRate==rate&&newFrequency==frequency) return;
        if(!active) { rate=newRate; frequency=newFrequency; return; }
        coarseCenter(newRate,newFrequency); // Reject invalid pairs before stopping RX.
        // Validate before stopping a working receiver. Inactive clients may set
        // rate and frequency in either order; activation validates the pair.
        if(newRate==40000000&&(newFrequency<2422000000.||newFrequency>2462000000.))
            throw std::runtime_error("40 MS/s requires a center frequency from 2422 to 2462 MHz");
        if(newRate==rate&&coarseCenter(newRate,newFrequency)==rfCenter) {
            // Only the digital oscillator changes. Keep phase, queued raw
            // samples, FIR history and decimation cadence continuous.
            frequency=newFrequency; updateNco(false); return;
        }
        const double oldRate=rate,oldFrequency=frequency;
        const long long nextNs=nextTimeNs();
        const auto stoppedAt=Clock::now();
        deactivateStream(handle(),0,0);
        const auto rebase=[&] {
            timeBaseNs=nextNs+std::chrono::duration_cast<std::chrono::nanoseconds>(Clock::now()-stoppedAt).count();
            discontinuity=true;
        };
        rate=newRate; frequency=newFrequency;
        try {
            if(activateStream(handle(),0,0,0)) throw std::runtime_error("Stream restart after setting change failed");
            rebase();
        } catch(...) {
            const auto failure=std::current_exception();
            // A failed iw/configuration change must not leave an old worker or
            // stale FIFO attached to a restored format.
            try { deactivateStream(handle(),0,0); } catch(...) {}
            rate=oldRate; frequency=oldFrequency;
            try {
                if(!activateStream(handle(),0,0,0)) rebase();
            } catch(...) {}
            std::rethrow_exception(failure);
        }
    }
    int nextPacket(long timeoutUs) {
        const auto until=Clock::now()+std::chrono::microseconds(std::max(0L,timeoutUs));
        while(true) {
            if(pending.size()>=24) {
                uint32_t h[6]; memcpy(h,pending.data(),24);
                if(h[0]!=h[3]||(h[0]!=4096&&h[0]!=8192)) return SOAPY_SDR_CORRUPTION;
                if(pending.size()>=24+h[0]) {
                    overflow=h[1]!=expected;
                    if(overflow) {
                        const uint64_t missing=static_cast<uint64_t>(static_cast<uint32_t>(h[1]-expected))*packedPhases;
                        ticks+=missing/decimation; skipNco(missing);
                        initFilter();
                    }
                    expected=h[1]+h[0]/8;
                    packet.assign(pending.begin()+24,pending.begin()+24+h[0]);
                    pending.erase(pending.begin(),pending.begin()+24+h[0]); cursor=0; packedPhase=0;
                    return overflow?SOAPY_SDR_OVERFLOW:0;
                }
            }
            uint8_t buf[65536]; const ssize_t n=read(datafd,buf,sizeof(buf));
            if(n>0) { pending.insert(pending.end(),buf,buf+n); continue; }
            if(n<0&&errno!=EAGAIN&&errno!=EINTR) return SOAPY_SDR_STREAM_ERROR;
            if(done.load()) {
                const auto result=readFile(dbg/"iq_stream");
                return result.find("ret=-75")!=std::string::npos?SOAPY_SDR_OVERFLOW:SOAPY_SDR_STREAM_ERROR;
            }
            if(Clock::now()>=until) return SOAPY_SDR_TIMEOUT;
            std::this_thread::sleep_for(std::chrono::microseconds(50));
        }
    }
public:
    explicit RTL8922(const SoapySDR::Kwargs &args) {
        freeTuning=args.count("free_tuning")&&args.at("free_tuning")=="1";
        experimental40=args.count("experimental40")&&args.at("experimental40")=="1";
        producerScheduler=args.count("producer_scheduler")?args.at("producer_scheduler"):"normal";
        if(producerScheduler!="normal"&&producerScheduler!="deadline") throw std::runtime_error("producer_scheduler must be normal or deadline");
        dbg=args.count("debugfs")?args.at("debugfs"):debugPath();
        iw=args.count("iw")?args.at("iw"):(std::getenv("RTL8922_IW")?std::getenv("RTL8922_IW"):"/usr/sbin/iw");
        pci=args.count("pci")?args.at("pci"):(std::getenv("RTL8922_PCI")?std::getenv("RTL8922_PCI"):"0000:0d:00.0");
        if(dbg.empty()||!fs::exists(dbg/"iq_stop")) throw std::runtime_error("Experimental RTL8922 SDR driver is not loaded");
        lockfd=open("/run/lock/rtl8922-sdr.lock",O_CREAT|O_RDWR|O_CLOEXEC,0600);
        if(lockfd<0||flock(lockfd,LOCK_EX|LOCK_NB)) { if(lockfd>=0) close(lockfd); throw std::runtime_error("RTL8922 SDR busy or insufficient permission"); }
        try { iface=fs::directory_iterator(fs::path("/sys/bus/pci/devices")/pci/"net")->path().filename().string(); }
        catch(...) { close(lockfd); throw; }
        try { discoverChannels(); }
        catch(...) { close(lockfd); throw; }
    }
    ~RTL8922() override {
        try { if(opened) closeStream(handle()); } catch(...) {}
        for(const auto &v:saved) try {
            char text[80]; snprintf(text,sizeof(text),"%x %x 4\n",v.first,v.first==0x9660?v.second&~9u:v.second);
            writeFile(dbg/"write_reg",text);
        } catch(...) {}
        for(const auto &v:freeRFBackup) try { wrRF(v.first.first,v.first.second,v.second); } catch(...) {}
        for(const auto &v:freeBBBackup) try {
            char text[80]; snprintf(text,sizeof(text),"%x %x 4\n",v.first,v.second); writeFile(dbg/"write_reg",text);
        } catch(...) {}
        if(lockfd>=0) close(lockfd);
    }
    std::string getDriverKey() const override { return "rtl8922"; }
    std::string getHardwareKey() const override { return "RTL8922AE LA"; }
    SoapySDR::Kwargs getHardwareInfo() const override { return {{"pci",pci},{"transport","LA/IDDMA/PCIe"},{"status","experimental RX"}}; }
    size_t getNumChannels(int d) const override { return d==SOAPY_SDR_RX?1:0; }
    std::vector<std::string> getStreamFormats(int,size_t) const override { return {SOAPY_SDR_CF32,SOAPY_SDR_CS16}; }
    std::string getNativeStreamFormat(int,size_t,double &fullScale) const override { fullScale=32768; return SOAPY_SDR_CS16; }
    std::vector<std::string> listAntennas(int,size_t) const override { return {"PATH1"}; }
    std::string getAntenna(int,size_t) const override { return "PATH1"; }
    void setAntenna(int,size_t,const std::string &name) override { if(name!="PATH1") throw std::runtime_error("Only PATH1 qualified"); }
    void setSampleRate(int d,size_t ch,double value) override {
        ControlLock guard(controlWaiters,streamMutex);
        if(d!=SOAPY_SDR_RX||ch) throw std::runtime_error("Unsupported channel");
        if(value!=1250000&&value!=2500000&&value!=5000000&&value!=10000000&&value!=20000000&&value!=40000000) throw std::runtime_error("Unsupported rate");
        if(value==40000000&&!experimental40) throw std::runtime_error("40 MS/s is experimental; explicitly use experimental40=1");
        if(value==40000000&&freeTuning) throw std::runtime_error("Free tuning currently supports up to20MS/s; use free_tuning=0 for experimental40");
        changeSettings(value,frequency);
    }
    double getSampleRate(int,size_t) const override { std::lock_guard<std::recursive_mutex> guard(streamMutex); return rate; }
    std::vector<double> listSampleRates(int,size_t) const override { auto r=std::vector<double>{1250000,2500000,5000000,10000000,20000000}; if(experimental40) r.push_back(40000000); return r; }
    SoapySDR::RangeList getSampleRateRange(int,size_t) const override { SoapySDR::RangeList r; for(auto x:listSampleRates(SOAPY_SDR_RX,0)) r.emplace_back(x,x); return r; }
    void setFrequency(int d,size_t ch,double hz,const SoapySDR::Kwargs &) override {
        ControlLock guard(controlWaiters,streamMutex);
        if(d!=SOAPY_SDR_RX||ch) throw std::runtime_error("Unsupported channel");
        coarseCenter(rate,hz);
        changeSettings(rate,hz);
    }
    double getFrequency(int,size_t) const override { std::lock_guard<std::recursive_mutex> guard(streamMutex); return frequency; }
    SoapySDR::RangeList getFrequencyRange(int,size_t) const override { std::lock_guard<std::recursive_mutex> guard(streamMutex); return tuningRanges(rate); }
    std::string readSetting(const std::string &key) const override {
        std::lock_guard<std::recursive_mutex> guard(streamMutex);
        const double center=active?rfCenter:coarseCenter(rate,frequency);
        if(key=="rf_center") return std::to_string(center);
        if(key=="bb_offset") return std::to_string(frequency-center);
        throw std::runtime_error("Unknown read-only setting");
    }
    std::vector<std::string> listFrequencies(int,size_t) const override { return {"RF"}; }
    void setFrequency(int d,size_t ch,const std::string &name,double hz,const SoapySDR::Kwargs &args) override { if(name!="RF") throw std::runtime_error("Unknown tuner"); setFrequency(d,ch,hz,args); }
    double getFrequency(int d,size_t ch,const std::string &) const override { return getFrequency(d,ch); }
    SoapySDR::RangeList getFrequencyRange(int d,size_t ch,const std::string &) const override { return getFrequencyRange(d,ch); }
    double getBandwidth(int,size_t) const override { std::lock_guard<std::recursive_mutex> guard(streamMutex); return std::max(rate,5000000.); }
    SoapySDR::RangeList getBandwidthRange(int d,size_t ch) const override { const auto b=getBandwidth(d,ch); return {{b,b}}; }
    void setBandwidth(int d,size_t ch,double hz) override { if(hz!=0&&hz!=getBandwidth(d,ch)) throw std::runtime_error("Bandwidth follows native sample rate"); }
    SoapySDR::Stream *setupStream(int d,const std::string &fmt,const std::vector<size_t> &channels,const SoapySDR::Kwargs &) override {
        std::lock_guard<std::recursive_mutex> guard(streamMutex);
        if(d!=SOAPY_SDR_RX||opened||channels.size()>1||(!channels.empty()&&channels[0])||(fmt!=SOAPY_SDR_CF32&&fmt!=SOAPY_SDR_CS16)) throw std::runtime_error("Unsupported stream configuration");
        format=fmt; opened=true; return handle();
    }
    size_t getStreamMTU(SoapySDR::Stream *) const override { return 1024; }
    int activateStream(SoapySDR::Stream *s,int flags,long long,size_t numElems) override {
        std::lock_guard<std::recursive_mutex> guard(streamMutex);
        check(s); if(flags||numElems) return SOAPY_SDR_NOT_SUPPORTED; if(active) return SOAPY_SDR_STREAM_ERROR;
        configure(); writeFile(dbg/"iq_sample_rate",rate==40000000?"10000000":"5000000");
        writeFile(dbg/"iq_pipeline",rate==40000000?"Y":"N");
        writeFile(dbg/"iq_chunk_bytes","8192"); writeFile(dbg/"iq_drain","1");
        datafd=open((dbg/"iq_drain").c_str(),O_RDONLY|O_NONBLOCK|O_CLOEXEC); if(datafd<0) return SOAPY_SDR_STREAM_ERROR;
        pending.clear(); packet.clear(); cursor=0; packedPhase=0; expected=0; ticks=0; timeBaseNs=0; discontinuity=false; initFilter(); done=false; workerError=false;
        worker=std::thread([this] {
            try {
                if(producerScheduler=="deadline") {
                    // Reserve 95% of one CPU for this thread only. Thread exit
                    // releases the reservation; no system scheduler settings change.
                    struct Attr { uint32_t size, policy; uint64_t flags; int32_t nice;
                        uint32_t priority; uint64_t runtime, deadline, period; };
                    Attr attr{sizeof(Attr),6,0,0,0,950000,1000000,1000000};
                    if(syscall(SYS_sched_setattr,0,&attr,0)<0)
                        throw std::runtime_error(std::string("Producer SCHED_DEADLINE failed: ")+std::strerror(errno));
                }
                writeFile(dbg/"iq_stream","0");
            } catch(const std::exception &e) { std::cerr<<e.what()<<std::endl; workerError=true; }
            done=true;
        });
        for(int i=0;i<1000&&!done;++i) {
            if(readFile(dbg/"iq_running")[0]=='Y') { active=true; return 0; }
            std::this_thread::sleep_for(std::chrono::milliseconds(1));
        }
        writeFile(dbg/"iq_stop","Y"); if(worker.joinable()) worker.join(); close(datafd); datafd=-1; return SOAPY_SDR_STREAM_ERROR;
    }
    int deactivateStream(SoapySDR::Stream *s,int flags,long long) override {
        std::lock_guard<std::recursive_mutex> guard(streamMutex);
        check(s); if(flags) return SOAPY_SDR_NOT_SUPPORTED;
        if(worker.joinable()) {
            writeFile(dbg/"iq_stop","Y"); worker.join();
            if(std::getenv("RTL8922_TRACE")) std::cerr<<"RTL8922 producer: "<<readFile(dbg/"iq_stream")<<std::endl;
        }
        if(datafd>=0) close(datafd);
        datafd=-1; active=false; field("la_en",0); return 0;
    }
    void closeStream(SoapySDR::Stream *s) override { std::lock_guard<std::recursive_mutex> guard(streamMutex); check(s); deactivateStream(s,0,0); opened=false; }
    int readStream(SoapySDR::Stream *s,void *const *buffs,size_t numElems,int &flags,long long &timeNs,long timeoutUs) override {
        const auto deadline=Clock::now()+std::chrono::microseconds(std::max(0L,timeoutUs));
        std::unique_lock<std::recursive_mutex> guard(streamMutex,std::defer_lock);
        // Give pending settings priority over another reader iteration; an
        // unfair mutex otherwise lets a busy receive loop starve UI controls.
        while(true) {
            if(!controlWaiters.load()&&guard.try_lock()) {
                if(!controlWaiters.load()) break;
                guard.unlock();
            }
            if(Clock::now()>=deadline) { flags=0; return SOAPY_SDR_TIMEOUT; }
            std::this_thread::sleep_for(std::chrono::microseconds(5));
        }
        check(s); flags=0;
        if(!active) { guard.unlock(); std::this_thread::sleep_until(deadline); return SOAPY_SDR_TIMEOUT; }
        if(!numElems) return 0;
        if(discontinuity) { discontinuity=false; flags=SOAPY_SDR_HAS_TIME; timeNs=nextTimeNs(); return SOAPY_SDR_OVERFLOW; }
        if(cursor>=packet.size()) {
            const long remaining=std::max<int64_t>(0,std::chrono::duration_cast<std::chrono::microseconds>(deadline-Clock::now()).count());
            const int result=nextPacket(remaining); if(result) return result;
        }
        size_t n=0;
        timeNs=nextTimeNs(); flags=SOAPY_SDR_HAS_TIME;
        while(n<numElems&&cursor<packet.size()) {
            uint64_t word; memcpy(&word,packet.data()+cursor,8);
            word>>=2*sampleBits*packedPhase;
            const unsigned mask=(1u<<sampleBits)-1, midpoint=1u<<(sampleBits-1);
            int i=word&mask,q=(word>>sampleBits)&mask;
            if(i>=static_cast<int>(midpoint))i-=2*midpoint;
            if(q>=static_cast<int>(midpoint))q-=2*midpoint;
            if(++packedPhase==packedPhases) { packedPhase=0; cursor+=8; }
            float fi=i/static_cast<float>(midpoint), fq=q/static_cast<float>(midpoint);
            if(ncoActive) {
                const float oldI=fi;
                fi=oldI*ncoCos+fq*ncoSin;
                fq=fq*ncoCos-oldI*ncoSin;
                const double oldCos=ncoCos;
                ncoCos=oldCos*ncoStepCos-ncoSin*ncoStepSin;
                ncoSin=ncoSin*ncoStepCos+oldCos*ncoStepSin;
                if((++ncoSamples&16383)==0) {
                    const double magnitude=std::hypot(ncoCos,ncoSin);
                    ncoCos/=magnitude; ncoSin/=magnitude;
                }
            }
            if(decimation!=1) {
                historyI[filterPos]=fi; historyQ[filterPos]=fq;
                const unsigned newest=filterPos;
                filterPos=(filterPos+1)%taps.size();
                if(++phase<decimation) continue;
                phase=0; fi=fq=0;
                unsigned index=newest;
                for(size_t j=0;j<taps.size();++j) {
                    fi+=taps[j]*historyI[index]; fq+=taps[j]*historyQ[index];
                    index=index?index-1:taps.size()-1;
                }
            }
            if(format==SOAPY_SDR_CF32) { auto *out=static_cast<float *>(buffs[0]); out[2*n]=fi; out[2*n+1]=fq; }
            else {
                auto *out=static_cast<int16_t *>(buffs[0]);
                out[2*n]=std::clamp(std::lround(fi*32768),-32768L,32767L);
                out[2*n+1]=std::clamp(std::lround(fq*32768),-32768L,32767L);
            }
            n++;
        }
        ticks+=n; return static_cast<int>(n);
    }
};
static SoapySDR::KwargsList findRTL8922(const SoapySDR::Kwargs &) {
    const auto path=debugPath(); if(path.empty()) return {};
    return {{{"driver","rtl8922"},{"label","Realtek RTL8922AE experimental RX"},{"serial","0000:0d:00.0"},{"debugfs",path}}};
}
static SoapySDR::Device *makeRTL8922(const SoapySDR::Kwargs &args) { return new RTL8922(args); }
static SoapySDR::Registry registration("rtl8922",findRTL8922,makeRTL8922,SOAPY_SDR_ABI_VERSION);
