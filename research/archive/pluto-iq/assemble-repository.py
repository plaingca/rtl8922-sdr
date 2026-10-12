from pathlib import Path
import shutil,json,hashlib
src=Path('D:/Meta-Orchestrator');dst=Path('D:/rtl8922-sdr')
assert not dst.exists(),'Do not overwrite an existing project'
dst.mkdir()
def copy(s,d):
 d.parent.mkdir(parents=True,exist_ok=True)
 text=s.read_text(encoding='utf-8');d.write_bytes(text.replace('\r\n','\n').encode())
for s in (src/'rtl8922-sdr').iterdir():
 if not s.is_file():continue
 if s.suffix=='.patch':d=dst/'driver/patches'/s.name
 elif s.name=='README.txt':d=dst/'docs/development-history.txt'
 elif s.name=='start-live-demo.ps1':d=dst/'examples/beastmode/start-live-demo.ps1'
 else:d=dst/s.name
 copy(s,d)
for s in (src/'output').glob('rtl8922*'):
 if s.suffix in ['.json','.md','.txt']:copy(s,dst/'output'/s.name)
for folder,target in [('tmp/pluto-iq','research/archive/pluto-iq'),('tmp/rtl8922-vendor','research/archive/vendor-analysis')]:
 for s in (src/folder).iterdir():
  if s.is_file() and s.suffix in ['.py','.sh','.ps1','.c','.cpp','.cu','.h','.hpp','.json','.md','.patch','.asm']:
   copy(s,dst/target/s.name)
copy(src/'rtl8922-sdr/run-receiver.sh',dst/'examples/beastmode/run-receiver.sh')
copy(src/'rtl8922-sdr/run-live-demo.py',dst/'examples/beastmode/run-live-demo.py')
metadata={'upstream':'https://github.com/morrownr/rtw89.git','commit':'8bbbacadf6fa73c3a3195aefbd4b2ec2422ae356','working_patch':'patches/driver.patch','working_patch_sha256':hashlib.sha256((dst/'driver/patches/driver.patch').read_bytes()).hexdigest(),'experimental_patches':['patches/fast-drain-experimental.patch','patches/dma-path-experimental.patch'],'note':'Experimental patches are alternative snapshots, not a series to apply on top of the working patch.'}
(dst/'driver/upstream.json').write_text(json.dumps(metadata,indent=2)+'\n')
p=dst/'SoapyRTL8922.cpp';s=p.read_text().replace('std::string iw, iface, format, producerScheduler;','std::string iw, iface, format, producerScheduler, pci;')
s=s.replace('iw=args.count("iw")?args.at("iw"):"/home/plaing/rtl8922-iq-research/iw-local/sbin/iw";', 'iw=args.count("iw")?args.at("iw"):(std::getenv("RTL8922_IW")?std::getenv("RTL8922_IW"):"/usr/sbin/iw");\n        pci=args.count("pci")?args.at("pci"):(std::getenv("RTL8922_PCI")?std::getenv("RTL8922_PCI"):"0000:0d:00.0");')
s=s.replace('fs::directory_iterator("/sys/bus/pci/devices/0000:0d:00.0/net")','fs::directory_iterator(fs::path("/sys/bus/pci/devices")/pci/"net")').replace('{{"pci","0000:0d:00.0"}', '{{"pci",pci}')
p.write_text(s)
p=dst/'pluto_tone.py';s=p.read_text().replace('import math','import math\nimport os').replace("adi.Pluto('ip:192.168.2.1')","adi.Pluto(os.environ.get('RTL8922_PLUTO_URI', 'ip:192.168.2.1'))");p.write_text(s)
p=dst/'live-bridge.cpp';s=p.read_text().replace('#include <atomic>','#include <atomic>\n#include <cstdlib>').replace('SoapySDR::Device::make("driver=rtl8922,producer_scheduler=deadline,free_tuning=1")','SoapySDR::Device::make(std::getenv("RTL8922_DEVICE_ARGS")?std::getenv("RTL8922_DEVICE_ARGS"):"driver=rtl8922,producer_scheduler=deadline,free_tuning=1")');p.write_text(s)
p=dst/'generate-fields.py';s=p.read_text().replace("Path('output/rtl8922-la-registers.json')","(Path(__file__).resolve().parent/'output/rtl8922-la-registers.json')").replace("Path('rtl8922-sdr/fields.hpp')","(Path(__file__).resolve().parent/'fields.hpp')");p.write_text(s)
p=dst/'CMakeLists.txt';p.write_text(p.read_text()+'''\nadd_executable(live-bridge live-bridge.cpp)
target_compile_features(live-bridge PRIVATE cxx_std_17)
target_include_directories(live-bridge PRIVATE ${SoapySDR_INCLUDE_DIRS})
target_link_libraries(live-bridge PRIVATE ${SoapySDR_LIBRARIES} Threads::Threads)
target_compile_options(live-bridge PRIVATE -Wall -Wextra)
''')
print(json.dumps({'project':str(dst),'files':sum(1 for s in dst.rglob('*') if s.is_file())}))
