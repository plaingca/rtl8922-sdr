#!/usr/bin/env python3
"""One explicitly invoked passive sweep; fresh settings and mandatory teardown."""

import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import time

from hardware import Radio, ROOT

output, plan = Path(sys.argv[1]), Path(sys.argv[2])
centers = [float(x) for x in plan.read_text().split()]
assert 0 < len(centers) <= 180
assert shutil.disk_usage(ROOT).free > len(centers) * 8000000 + 2 * 1024**3
with Radio(output, seconds=600) as radio:
    subprocess.run([radio.iw, "reg", "set", "CA"], check=True)
    time.sleep(.25)
    phy = radio.dbg.parents[0].name
    radio.report.update(
        scope="Sequential passive 20 MS/s free-tuning survey; not simultaneous or RF qualification above 6 GHz",
        rate_msps=20, requested_tile_seconds=.2, centers_mhz=centers,
        channel_listing=subprocess.check_output([radio.iw, "phy", phy, "info"], text=True),
    )
    driver = Path(os.environ["RTL8922_DRIVER_DIR"])
    paths = [ROOT / "build-streaming/survey-capture", ROOT / "build-paxi/libRTL8922Support.so",
             driver / "rtw89_core_git.ko", driver / "rtw89_8922a_git.ko"]
    radio.report["build_sha256"] = {str(p): hashlib.sha256(p.read_bytes()).hexdigest() for p in paths}
    radio.save()
    raw_dir = ROOT / "build-survey" / output.stem
    raw_dir.mkdir(parents=True, exist_ok=True)
    with (raw_dir / "tiles.jsonl").open("w") as out, (raw_dir / "capture.log").open("w") as err:
        result = subprocess.run(
            [str(paths[0]), str(plan.resolve()), str(raw_dir), str(radio.dbg), ".2"],
            stdout=out, stderr=err, timeout=550,
        )
    rows = [json.loads(line) for line in (raw_dir / "tiles.jsonl").read_text().splitlines()]
    radio.report["tests"] = rows
    radio.report["returncode"] = result.returncode
    radio.save()
    if result.returncode or len(rows) != len(centers) or not all(r["passed"] for r in rows):
        raise RuntimeError("Survey stopped on failure; completed tiles retained")
