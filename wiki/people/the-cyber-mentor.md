---
type: entity
sources: ["Meet Bjorn, the Easy to Build Hacking Tool!.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [person, cybersecurity, ethical-hacking, education, youtube]
---

# The Cyber Mentor (Heath Adams)

YouTube creator and founder of **TCM Security Academy**. Cybersecurity educator focused on practical, hands-on ethical hacking — pentesting, network security, hardware security, OSINT, and red team techniques. Runs paid certifications including the PIPA (Practical IoT Pentest Associate) and PEH (Practical Ethical Hacker). Editorial style is calm, methodical, and step-by-step — closer to a college lecturer than a hype channel.

## Channels

- **YouTube**: The Cyber Mentor — ethical hacking tutorials, hardware pentesting, security tooling
- **TCM Security Academy**: academy.tcm-sec.com — paid courses and certifications
- **Site**: tcm.rocks (cert + course landing pages)

## Content in This Wiki

- [[summary-tcm-bjorn-network-pentest-pi|Meet Bjorn, the Easy to Build Hacking Tool]] — Step-by-step build of [[bjorn|Bjorn]], a Raspberry Pi Zero + e-paper display network pentesting device that scans your local network and attempts automated brute-force attacks. Adjacent context for anyone running self-hosted AI infrastructure (local [[ollama|Ollama]], [[archon-os|Archon OS]], [[supabase|Supabase]] instances) who wants to know what an attacker on the same network sees.

## Key Ideas

- **Hardware pentesting can be cheap**: ~$60–80 in parts (Pi Zero 2W + e-paper display + microSD) gives you an automated network reconnaissance device
- **No-soldering builds matter for accessibility**: explicitly recommends Pi Zero 2WH (with pre-soldered headers) so beginners don't need soldering equipment
- **The brute-force result is the wake-up**: in the Bjorn demo, his own home Raspberry Pi running default `admin:admin` SSH credentials gets popped within minutes — the pedagogical point is that local network defaults are dangerous

## See Also

- [[bjorn]] — the open-source tool he walks through
- [[joshua-clarke]] — adjacent cybersecurity educator (focused on local AI for cybersec writing rather than offensive tooling)
- [[summary-tcm-bjorn-network-pentest-pi]]
