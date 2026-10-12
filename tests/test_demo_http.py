"""Offline regressions for browser forwarding and the hardware command guard."""
import unittest

from demo_http import allowed_host, allowed_origin


class LoopbackHTTPTest(unittest.TestCase):
    def test_direct_and_forwarded_ports(self):
        for host in ('localhost:8732', 'localhost:52862', '127.0.0.1:52862',
                     '[::1]:52862', 'localhost', '127.0.0.1', 'LOCALHOST:52862'):
            with self.subTest(host=host):
                self.assertTrue(allowed_host(host))
                self.assertTrue(allowed_origin(host, 'http://'+host))
                self.assertTrue(allowed_origin(host, None))

    def test_non_loopback_and_malformed_hosts(self):
        for host in (None, '', 'example.com:52862', 'localhost.example.com:52862',
                     'localhost@evil.test:52862', 'evil.test@localhost:52862',
                     'localhost:0', 'localhost:65536', 'localhost:',
                     'localhost:52862/path', 'localhost:52862\n', 'localhost:52862,evil.test'):
            with self.subTest(host=host):
                self.assertFalse(allowed_host(host))
                self.assertFalse(allowed_origin(host, None))

    def test_commands_still_require_same_origin(self):
        for origin in ('http://evil.test', 'http://localhost:8732',
                       'http://127.0.0.1:52862', 'null', ''):
            with self.subTest(origin=origin):
                self.assertFalse(allowed_origin('localhost:52862', origin))


if __name__ == '__main__':
    unittest.main()
