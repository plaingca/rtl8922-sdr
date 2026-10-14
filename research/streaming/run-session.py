#!/usr/bin/env python3
"""Run one bounded experiment, then restore the existing demo service."""

import argparse
import json
from pathlib import Path
import subprocess
import time
import urllib.request

ROOT = Path(__file__).resolve().parents[2]
OLD = Path("/home/plaing/rtl8922-iq-research")
SERVICE = "rtl8922-live-demo.service"


def api(path, body=None):
    request = urllib.request.Request(
        "http://127.0.0.1:8732" + path,
        data=None if body is None else json.dumps(body).encode(),
        headers={"Content-Type": "application/json"},
    )
    with urllib.request.urlopen(request, timeout=5) as response:
        return json.load(response)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--timeout", type=int, default=180)
    parser.add_argument("script")
    parser.add_argument("report")
    parser.add_argument("extra", nargs="*")
    args = parser.parse_args()
    script = Path(args.script).resolve()
    assert script.parent == ROOT / "research/streaming"
    assert 30 <= args.timeout <= 2400
    report = Path(args.report).resolve()
    report.parent.mkdir(parents=True, exist_ok=True)
    before = api("/api/frame")
    assert before["live"] and not before["tone"]["enabled"]
    snapshot = {k: v for k, v in before.items() if not isinstance(v, list)}
    record = {"before": snapshot}
    status_path = report.with_suffix(".session.json")
    status_path.write_text(json.dumps(record, indent=2) + "\n")
    try:
        api("/api/stop", {})
        deadline = time.monotonic() + 30
        while time.monotonic() < deadline:
            state = subprocess.run(
                ["systemctl", "is-active", SERVICE], capture_output=True, text=True
            ).stdout.strip()
            if (
                state not in ("active", "activating", "deactivating")
                and not Path("/sys/module/rtw89_core_git").exists()
            ):
                break
            time.sleep(0.25)
        assert not Path("/sys/module/rtw89_core_git").exists(), (
            "Demo cleanup incomplete"
        )
        assert state not in ("active", "activating", "deactivating"), (
            "Demo service still shutting down"
        )
        command = [
            "sudo",
            "-n",
            "timeout",
            "--signal=TERM",
            "--kill-after=20",
            str(args.timeout),
            "env",
            "RTL8922_DRIVER_DIR=" + str(ROOT / "vendor/rtw89-streaming"),
            "RTL8922_IW=" + str(OLD / "iw-local/sbin/iw"),
            "bash",
            str(ROOT / "run-receiver.sh"),
            str(OLD / "pluto-venv/bin/python"),
            str(script),
            str(report),
            *args.extra,
        ]
        with report.with_suffix(".log").open("w") as log:
            result = subprocess.run(
                command, stdout=log, stderr=subprocess.STDOUT, timeout=args.timeout + 30
            )
        record["experiment_returncode"] = result.returncode
    except BaseException as error:
        record["experiment_error"] = str(error)
        raise
    finally:
        try:
            restore(record, before)
        except Exception as error:
            record["restore_error"] = str(error)
        finally:
            status_path.write_text(json.dumps(record, indent=2) + "\n")
    print(json.dumps(record, indent=2))
    return int(bool(record.get("restore_error") or record.get("experiment_returncode")))


def restore(record, before):
    # The experiment wrapper owns cleanup; never replace loaded modules.
    if Path("/sys/module/rtw89_core_git").exists():
        record["restore_error"] = "Receiver driver still loaded; restore withheld"
    else:
        subprocess.run(
            [
                "sudo",
                "-n",
                "systemd-run",
                "--unit=" + SERVICE,
                "--collect",
                "--property=WorkingDirectory=" + str(OLD / "soapy"),
                "/bin/bash",
                str(OLD / "soapy/run-receiver.sh"),
                "/usr/bin/python3",
                str(OLD / "soapy/run-live-demo.py"),
            ],
            check=True,
            capture_output=True,
            text=True,
        )
        deadline = time.monotonic() + 30
        while time.monotonic() < deadline:
            try:
                restored = api("/api/frame")
                if restored.get("live"):
                    if restored["frequency"] != before["frequency"]:
                        api("/api/tune", {"mhz": before["frequency"] / 1e6})
                        time.sleep(1)
                        restored = api("/api/frame")
                    record["after"] = {
                        k: v for k, v in restored.items() if not isinstance(v, list)
                    }
                    break
            except (OSError, ValueError):
                pass
            time.sleep(0.5)
        else:
            record["restore_error"] = (
                "Demo did not return to live state within 30 seconds"
            )


if __name__ == "__main__":
    raise SystemExit(main())
