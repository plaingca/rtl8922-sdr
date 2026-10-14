"""Offline integrity checks for the two default CV1 BB security records.

The XOR16 rule was recovered from the pinned image, including both default
records and five of six pooled signatures. The final pooled record differs
and is deliberately outside this helper's scope. No key/signature is generated
or replaced. Hardware acceptance and authentication remain separate checks.
"""

import functools
import hashlib
import operator
import struct

from probe_bb_rom import require


SECTION = 0xD3E70
SECTION_BYTES = 0x8000
FOOTER_TAG = bytes.fromhex("10b119940925")
RECORDS = (
    (0xDBE70, 0x2C8, "sha256", (0xDBEF0, 0xDBF10)),
    (0xDC670, 0x408, "sha384", (0xDC710, 0xDC740)),
)


def xor16(data):
    require(len(data) % 2 == 0, "Odd checksum input length")
    return functools.reduce(operator.xor, (v[0] for v in struct.iter_unpack("<H", data)), 0)


def inspect_defaults(firmware):
    require(len(firmware) >= 0xDCA78, "Truncated BB manifests")
    code = firmware[SECTION:SECTION + SECTION_BYTES]
    records = []
    for start, size, algorithm, offsets in RECORDS:
        footer = start + size - 8
        require(firmware[footer + 2:footer + 8] == FOOTER_TAG, "BB checksum footer tag changed")
        digest = hashlib.new(algorithm, code).digest()
        actual = struct.unpack_from("<H", firmware, footer)[0]
        expected = xor16(code + firmware[start:footer])
        records.append({"file_offset": hex(start), "bytes": size, "algorithm": algorithm,
                        "digest_offsets": [hex(v) for v in offsets],
                        "digests_match_code": all(firmware[v:v + len(digest)] == digest for v in offsets),
                        "checksum_offset": hex(footer), "stored_xor16": hex(actual),
                        "computed_xor16": hex(expected), "checksum_matches": actual == expected})
    return records


def refresh_defaults(original, patched):
    """Refresh only default section hashes and XOR16 footers in-place."""
    before = inspect_defaults(original)
    require(all(r["digests_match_code"] and r["checksum_matches"] for r in before),
            "Original default BB integrity checks failed")
    changes = []
    code = patched[SECTION:SECTION + SECTION_BYTES]
    for start, size, algorithm, offsets in RECORDS:
        digest = hashlib.new(algorithm, code).digest()
        for offset in offsets:
            patched[offset:offset + len(digest)] = digest
            changes.append({"file_offset": hex(offset), "bytes": len(digest), "kind": algorithm})
        footer = start + size - 8
        struct.pack_into("<H", patched, footer, xor16(code + patched[start:footer]))
        changes.append({"file_offset": hex(footer), "bytes": 2, "kind": "xor16"})
    require(all(r["digests_match_code"] and r["checksum_matches"] for r in inspect_defaults(patched)),
            "Updated default BB integrity checks failed")
    return changes
