#!/usr/bin/env python3
"""Manual one-load Soapy check; wrapper provides mandatory driver teardown."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys

from hardware import Radio, ROOT

output, rate, fmt, seconds = Path(sys.argv[1]), int(sys.argv[2]), sys.argv[3], float(sys.argv[4])
assert rate in (80, 160) and fmt in ("CF32", "CS16") and 0 < seconds <= 60
with Radio(output, seconds=int(seconds)+30) as radio:
    driver_dir = Path(os.environ["RTL8922_DRIVER_DIR"])
    paths = [ROOT / "build-paxi/libRTL8922Support.so", ROOT / "build-streaming/paxi-soapy-check",
             driver_dir / "iq-paxi-frozen.c", driver_dir / "iq-paxi-drain.c", driver_dir / "rtw8922a.c",
             *sorted(driver_dir.glob("*_git.ko"))]
    radio.report.update(rate_msps=rate, format=fmt, requested_seconds=seconds,
                        build_sha256={str(p): hashlib.sha256(p.read_bytes()).hexdigest() for p in paths})
    radio.report["loaded_core_srcversion"] = Path("/sys/module/rtw89_core_git/srcversion").read_text().strip()
    result = subprocess.run(
        [str(paths[1]), str(rate*1000000), fmt, str(seconds),
         str(ROOT / f"build-streaming/{output.stem}.bin")],
        text=True, capture_output=True, timeout=seconds+15,
    )
    status = (radio.dbg / "iq_paxi_stream").read_text()
    producer = dict(re.findall(r"(\w+)=([0-9a-f-]+)", status))
    drops = int((radio.dbg / "scope_dropped").read_text())
    checks = {
        "application_clean": result.returncode == 0,
        "producer_clean": producer.get("ret") == "0" and producer.get("source_guard") == "0",
        "no_host_drops": drops == 0,
        "scratch_guards_clean": producer.get("guard_errors") == "0",
        "tracking_quiesced": producer.get("tracking_quiesced") == "1",
    }
    radio.report["tests"].append({"returncode": result.returncode, "stdout": result.stdout,
                                  "stderr": result.stderr, "producer": producer,
                                  "host_drops": drops, "checks": checks, "passed": all(checks.values())})
    radio.save()
    print(json.dumps({"rate": rate, "format": fmt, "checks": checks}), flush=True)
    if not all(checks.values()):
        raise RuntimeError("Soapy PAXI gate failed")
