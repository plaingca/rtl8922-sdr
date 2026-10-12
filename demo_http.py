"""HTTP authority checks for the loopback-only demo, including forwarded ports."""
import re

# Forwarders preserve the browser's Host header, whose local port can differ
# from the receiver's listening port. Still reject non-loopback authorities.
_LOOPBACK = re.compile(r'(?:localhost|127\.0\.0\.1|\[::1\])(?::([0-9]{1,5}))?', re.IGNORECASE)


def allowed_host(host):
    if not isinstance(host, str):
        return False
    match = _LOOPBACK.fullmatch(host)
    return bool(match and (match[1] is None or 1 <= int(match[1]) <= 65535))


def allowed_origin(host, origin):
    return allowed_host(host) and (origin is None or origin == 'http://' + host)
