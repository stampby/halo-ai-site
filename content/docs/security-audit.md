---
title: "Security Audit — 2026-03-31"
description: "Full security audit of the halo-ai infrastructure. No more secrets."
date: 2026-03-31
---

Full security audit performed 2026-03-31. Every finding, every fix, published here. No more secrets.

## Critical — Fixed

| Issue | Risk | Resolution |
|---|---|---|
| Discord bot `.env` was world-readable (644) | Tokens exposed to local users | Fixed — permissions set to 600 (owner only) |
| GlusterFS had no IP restriction | Any machine could mount the pool | Fixed — `auth.allow` restricted to 3 known IPs |

## Warnings — Fixed

| Issue | Risk | Resolution |
|---|---|---|
| Ryzen had no firewall | All ports open on LAN | Fixed — nftables installed, default DROP, whitelist only |
| Stale Sligar SSH key in authorized_keys | Dead machine key could be reused | Fixed — key removed |

## Warnings — Remaining

| Issue | Risk | Mitigation |
|---|---|---|
| Router SSH on 0.0.0.0:22 | Exposed to WAN if port forwarding enabled | No port forwarding active — WAN access blocked by ISP NAT |
| Strix services bind 0.0.0.0 (n8n, gaia, lemonade) | Accessible on all interfaces | nftables blocks all non-whitelisted traffic — effective protection |
| WireGuard port 51820 open to all IPs | VPN entry point | Expected — keys are required for access |
| Cloudflare missing some security headers | Minor | X-Content-Type-Options and Referrer-Policy present. CSP and X-Frame-Options to be added via Cloudflare dashboard |

## Passed

| Check | Status |
|---|---|
| SSH private key permissions (600) | PASS |
| SSH config — key-only auth, no passwords | PASS |
| SSH config — IdentitiesOnly yes on all hosts | PASS |
| Strix Halo nftables — default DROP, whitelist only | PASS |
| Ryzen nftables — default DROP, whitelist only | PASS (just fixed) |
| No Discord tokens in git history | PASS |
| No API keys in git history | PASS |
| Cloudflare proxy hiding origin IP | PASS |
| WHOIS privacy on .studio domain | PASS |
| Referrer-Policy strict-origin-when-cross-origin | PASS |
| X-Content-Type-Options nosniff | PASS |
| GlusterFS IP-restricted auth | PASS (just fixed) |
| Discord .env permissions (600) | PASS (just fixed) |
| DDNS grey cloud (game server IP not proxied) | PASS |
| 100% encrypted requests on Cloudflare | PASS |
| No containers — no Docker attack surface | PASS |
| No cloud services — no third-party data exposure | PASS |
| Zero data retention on website | PASS |
| 9 Reflex agents monitoring security 24/7 | PASS |

## Firewall Rules

### Ryzen (10.0.0.185)

```
table inet filter {
    chain input {
        policy drop;
        ct state established,related accept
        iif "lo" accept
        ip saddr 10.0.0.131 tcp dport 22 accept        # Strix Halo SSH
        ip saddr 10.0.0.61 tcp dport 22 accept          # Minisforum SSH
        ip saddr 10.0.0.1 tcp dport 22 accept            # Router SSH
        ip saddr 10.0.0.131 tcp dport 24007-24008 accept # GlusterFS
        ip saddr 10.0.0.131 tcp dport 49152-49155 accept # GlusterFS bricks
        ip protocol icmp accept
        counter drop
    }
}
```

### Strix Halo (10.0.0.131)

```
table inet filter {
    chain input {
        policy drop;
        ct state established,related accept
        iif "lo" accept
        ip saddr 10.0.0.61 tcp dport { 22, 80, 443, 5678, 8443 } accept
        ip saddr 10.0.0.61 tcp dport { 24007-24008, 49152-49155 } accept
        ip saddr 10.0.0.185 tcp dport { 22, 80, 443, 5678, 8443 } accept
        ip saddr 10.0.0.185 tcp dport { 24007-24008, 49152-49155 } accept
        udp dport 51820 accept  # WireGuard VPN
        ip protocol icmp accept
        counter drop
    }
}
```

## Network Architecture

```
Internet
    |
[Cloudflare CDN] ← halo-ai.studio, halo-ai.ca (proxied)
    |
[ASUS Router] ← 10.0.0.1, DDNS, QoS, DNS-over-TLS
    |
[10.0.0.0/24 LAN] ← nftables on every machine
    |
    ├── Ryzen 9800X3D (10.0.0.185) ← workstation, Claude Code
    ├── Strix Halo (10.0.0.131) ← AI inference, Discord bots, services
    ├── Minisforum (10.0.0.61) ← Windows, KVM access
    └── Sligar (offline) ← GRUB broken, pending reinstall
```

## Philosophy

- Zero cloud. Your data stays on your network.
- Zero data retention. Nothing about visitors is stored.
- Default deny. Everything is blocked unless explicitly allowed.
- No containers. No Docker. Smaller attack surface.
- No secrets. This audit is public.

*"No more secrets."*

*Designed and built by the architect.*
