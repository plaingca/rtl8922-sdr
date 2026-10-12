exec(open('tmp/rtl8922-vendor/analyze.py').read().split('targets=')[0])
print(dump(0x140535ab0))
