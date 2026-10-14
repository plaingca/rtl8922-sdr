"""Offline native-analysis scope guards; no supplied binary or device needed."""

import unittest

from unicorn import Uc, UC_ARCH_X86, UC_MODE_64, UC_HOOK_CODE

from inspect_debug_memory import (NativeTrace, DEVICE, RESOLVER, RETURN,
                                  FUNCTIONS, DRIVER_SHA256, checked)


class NativeScopeTest(unittest.TestCase):
    def trace_with_code(self, code, allowed):
        trace = NativeTrace.__new__(NativeTrace)
        trace.cpu = Uc(UC_ARCH_X86, UC_MODE_64)
        trace.cpu.mem_map(RESOLVER & ~4095, 4096)
        trace.cpu.mem_write(RESOLVER, code)
        trace.cpu.mem_map(DEVICE, 0x100000)
        trace.cpu.mem_map(RETURN, 4096)
        trace.allowed = allowed
        trace.cpu.hook_add(UC_HOOK_CODE, trace.on_code)
        return trace

    def test_unpinned_driver_rejected_before_pe_loading(self):
        with self.assertRaisesRegex(ValueError, "Unpinned Windows driver"):
            NativeTrace(b"not the supplied driver")

    def test_unexpected_branch_destination_rejected(self):
        trace = self.trace_with_code(bytes.fromhex("eb029090c3"), [(RESOLVER, RESOLVER + 2)])
        with self.assertRaisesRegex(ValueError, "Unexpected native execution"):
            trace.run("base", 0)

    def test_loop_cannot_be_reported_as_completed(self):
        trace = self.trace_with_code(bytes.fromhex("ebfe"), [FUNCTIONS["selector_base"]])
        with self.assertRaisesRegex(ValueError, "bound reached"):
            trace.run("base", 0)

    def test_invalid_operation_and_argument_rejected(self):
        trace = NativeTrace.__new__(NativeTrace)
        for operation, selector in (("transmit", 0), ("read", -1), ("write", 1 << 32)):
            with self.assertRaises(ValueError):
                trace.run(operation, selector)
        with self.assertRaisesRegex(ValueError, "Unpinned test input"):
            checked(b"changed", DRIVER_SHA256, "test input")


if __name__ == "__main__":
    unittest.main()
