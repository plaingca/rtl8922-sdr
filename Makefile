PYTHON ?= python3
CC ?= cc

.PHONY: help doctor check check-research tx-compiler
help:
	@echo 'make doctor          Check local setup without opening hardware'
	@echo 'make check           Run receiver/demo offline tests'
	@echo 'make check-research  Run TX and firmware offline tests (research dependencies)'
	@echo 'make tx-compiler     Build the hardware-free CF32 command compiler'
	@echo 'Override Python with: make PYTHON=.venv/bin/python <target>'

doctor:
	$(PYTHON) tools/doctor.py

check:
	$(PYTHON) -m unittest discover -s tests -v

check-research:
	$(PYTHON) tools/check_research.py --cc "$(CC)"

tx-compiler:
	mkdir -p build
	$(CC) -O3 -Wall -Wextra -Werror -shared -fPIC research/tx/bb_nco_realtime.c -lm -o build/nco-compiler.so
