"""Check that offline execution cannot silently leave its studied code or hang."""

import unittest

from inspect_dma_mailbox import checked_inputs, execute, machine


class ExecutionScopeTest(unittest.TestCase):
    def test_unexpected_branch_target_is_rejected(self):
        # jal ra,+8; two compressed nops; ret. Only the jal is authorized.
        cpu = machine([(0x1000, 0x1000, bytes.fromhex("ef008000010001008280"))])
        with self.assertRaisesRegex(ValueError, "Unexpected execution at 0x1008"):
            execute(cpu, 0x1000, (), [(0x1000, 0x1004)])

    def test_loop_cannot_be_mistaken_for_completed_execution(self):
        cpu = machine([(0x1000, 0x1000, bytes.fromhex("01a0"))])  # c.j 0
        with self.assertRaisesRegex(ValueError, "bound reached"):
            execute(cpu, 0x1000, (), [(0x1000, 0x1002)])

    def test_execution_guard_is_removed_between_calls(self):
        cpu = machine([(0x1000, 0x1000, bytes.fromhex("82808280"))])
        self.assertEqual(execute(cpu, 0x1000, (), [(0x1000, 0x1002)]), [])
        self.assertEqual(execute(cpu, 0x1002, (), [(0x1002, 0x1004)]), [])

    def test_wrong_binary_rejected_before_emulation(self):
        with self.assertRaisesRegex(ValueError, "Unpinned firmware"):
            checked_inputs(b"different firmware", b"different ROM", b"different table")


if __name__ == "__main__":
    unittest.main()
