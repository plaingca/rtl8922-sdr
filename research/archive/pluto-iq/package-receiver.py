from pathlib import Path
s=Path('tmp/rtl8922-la-capture.sh').read_text()
s=s.replace('python3 "$base/capture.py"', '''test "$#" -gt 0
"$@"''')
Path('rtl8922-sdr/run-receiver.sh').write_text(s)
