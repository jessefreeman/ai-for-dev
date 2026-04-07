---
type: entity
sources: ["Meet Bjorn, the Easy to Build Hacking Tool!.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [open-source, cybersecurity, hardware, raspberry-pi, network-security, self-hosting]
---

# Bjorn

Open-source automated network reconnaissance and exploitation tool by **Infinition** (creator handle). Runs on a **Raspberry Pi Zero 2W** with a small e-paper display (the "Viking" mascot lives on the display). Performs automated nmap scans of the local network, identifies open services, and attempts brute-force attacks against any services it finds vulnerabilities for — all configurable through a web interface served from the Pi.

**Why this is in the wiki**: Bjorn is not an AI tool, but it's directly relevant to anyone running self-hosted AI infrastructure on a home network — [[ollama|Ollama]] instances, [[archon-os|Archon OS]] containers, [[supabase|self-hosted Supabase]], GPU-passthrough VMs ([[benchmarks/rigs/proxmox-lenovo-p8-threadripper|Proxmox rigs]]), [[open-webui]] dashboards, and so on. **Bjorn shows you what an attacker on the same LAN can see.** The defensive question — "what does my home network actually look like to a port scanner?" — is the practical motivation for adding it.

- **GitHub**: github.com/infinition/Bjorn (link via [[summary-tcm-bjorn-network-pentest-pi|TCM walkthrough]])
- **Author**: Infinition / Infinition (community handle)
- **License**: Open source
- **Hardware needed**: Raspberry Pi Zero W or 2W (2W recommended), 2.13" e-paper display HAT (V2/V3/V4), microSD card (32 GB sufficient)

## Hardware Bill of Materials

| Component | Notes | Approx. cost |
|---|---|---|
| Raspberry Pi Zero 2W | Get the **WH** variant for pre-soldered headers (no soldering needed) | $15–20 |
| 2.13" e-paper display HAT | V4 confirmed working | $25–30 |
| microSD card (32 GB) | Or larger | $8–12 |
| USB microSD reader | Only if your computer doesn't have one | $5–10 |

**Total: ~$60–80 for a fully assembled unit.** No soldering iron required if you buy the WH variant.

## Setup (TCM walkthrough)

1. **Flash Raspberry Pi OS 64-bit** to the SD card via Raspberry Pi Imager. Set hostname `bjorn`, username `bjorn`, and either a password or your public SSH key in advanced settings before flashing.
2. **Insert SD + power on**. Find the Pi's IP via your router's DHCP client list.
3. **SSH in** (built-in on Windows 11 / macOS / Linux; PuTTY on older Windows).
4. **Run the auto-install script** from the GitHub README. Pick "full installation" and your e-paper display version (V4 for new units from Amazon).
5. **Reboot** — the Viking mascot appears on the display when the install is complete (may take a minute).
6. **Open the web interface** at `http://<pi-ip>:8000` for config + results.

## Web Interface Tabs

- **Config** — scan intervals, port ranges, blacklist hosts, nmap speed
- **Network** — discovered IPs, hostnames, MAC addresses, open ports
- **Net KB** — the most useful tab; per-host attack attempt log with success/failure columns. Requires one-time initialization via Settings → "Create Live Status Actions and Net KB"
- **Credentials** — successful brute-force results (the wake-up call)
- **Manual mode** — toggle off automatic AI mode (which is just the default scheduler) to run targeted attacks against specific hosts

## What It Actually Does

Per the TCM walkthrough:
- **nmap port discovery** across the LAN on a configurable interval
- **Service identification** on discovered ports
- **Automated brute-force attempts** against any services with attack modules — SSH is the most common success vector against poorly-configured home devices
- **Persistent display** of stats: hosts found, ports open, credentials captured, plus a Tamagotchi-style Viking that "levels up" as the device picks up more targets

In TCM's demo, his own home Raspberry Pi running default `admin:admin` SSH credentials gets brute-forced within minutes. This is the pedagogical point — **default credentials on home network devices are an immediate problem**, and Bjorn makes that visible.

## Defensive Value for Self-Hosters

The wiki framing for this tool (rather than the offensive framing in the source video):

- **Audit your local AI infrastructure**: run Bjorn against your home LAN and see whether your [[ollama|Ollama]] instances, [[archon-os|Archon OS]] containers, [[open-webui|Open WebUI]] dashboards, [[project-nomad|Project Nomad]] servers, or [[supabase|self-hosted Supabase]] instances expose anything unintended
- **Find default credentials before someone else does**: Bjorn's brute-force module specifically catches `admin:admin`, `pi:raspberry`, and similar — common on home IoT devices and poorly-configured dev VMs
- **Understand your attack surface**: the Network tab gives you a single dashboard showing every service exposed on every device on the LAN. Useful even without the offensive modules.
- **Cheap to deploy**: $60–80 is in the same range as a [[benchmarks/rigs/lenovo-thinkpad-x1-fold-i5-1230u|low-tier benchmark rig]]. Reasonable to dedicate one Pi to this permanently.

## ⚠️ Legal and Ethical Note

**Run Bjorn only against networks and devices you own or have explicit written permission to test.** Network scanning and brute-force attacks against systems you don't own are illegal in most jurisdictions, regardless of intent. The TCM walkthrough demos this against the creator's own home lab — the same constraint applies to you.

## See Also

- [[the-cyber-mentor]] — author of the walkthrough video
- [[joshua-clarke]] — adjacent cybersecurity creator (different angle: local LLMs *for* cybersec writing)
- [[ollama]], [[open-webui]], [[archon-os]], [[supabase]], [[project-nomad]] — self-hosted AI infrastructure that benefits from being audited
- [[benchmarks/index]] — Jesse's own home-lab rigs that this tool would scan
- [[summary-tcm-bjorn-network-pentest-pi|Source: TCM walkthrough]]
