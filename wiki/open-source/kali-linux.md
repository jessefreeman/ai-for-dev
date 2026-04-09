---
type: entity
sources: ["10 open source tools that feel illegal....md"]
created: 2026-04-09
updated: 2026-04-09
tags: [open-source, security, pentest, linux, defensive]
---

# Kali Linux

Debian-based Linux distribution maintained by Offensive Security, optimized for **penetration testing and security auditing**. Ships with hundreds of pre-installed open-source security tools by default. The wiki tracks Kali as the **canonical defensive audit toolkit** for hardening self-hosted infrastructure and the AI apps running on it — sibling to [[bjorn|Bjorn]] (a dedicated Raspberry Pi network pentest device for self-hosters).

> **Defensive use only.** Every tool listed here can be used to attack systems you don't own. The wiki captures them exclusively for **auditing your own infrastructure**: your own home lab, your own LAN, your own self-hosted AI rig, your own web apps. Running any of these against systems you don't have explicit written permission to test is illegal in most jurisdictions and not what this page is for.

## Why it's in scope

The wiki covers self-hosted AI heavily — [[open-webui|Open WebUI]] over a public domain ([[summary-wolfgangs-channel-local-ssl-homelab|Wolfgang]] / [[summary-networkchuck-open-webui-domain-ssl|NetworkChuck]]), [[summary-cole-medin-local-supabase-rag|Cole Medin's local Supabase RAG]], [[ollama|Ollama]] / [[vllm|vLLM]] inference servers, [[open-brain|OpenBrain]] memory databases. **Once you publish a self-hosted AI surface to a real domain, you have an attack surface.** The tools below are the same ones attackers use to find misconfigurations — which means they're the tools you use to find them first. CLAUDE.md scope explicitly includes *"defensive network security for self-hosted AI rigs"*; this page is the canonical anchor for that thread on the network/infrastructure side. The companion concept on the AI-app side is [[ai-personal-agent-hardening]].

## Installation

- **Native** — Kali desktop ISO (Debian-based; the canonical full install)
- **WSL** — Kali on Windows Subsystem for Linux (works for almost everything except Wi-Fi tools)
- **Cloud VPS** — one-click templates from common VPS providers; useful for tools you don't want touching your home network
- **Per-tool install** — every tool below ships independently as a Debian package; you don't *have* to use Kali to use them, but Kali bundles them by default

## The canonical 10-tool toolkit

Sourced from [[summary-fireship-10-illegal-tools|Fireship's Code Report walkthrough]]. Each entry frames the tool defensively — what to use it for on your own infrastructure.

| # | Tool | What it does | Defensive use case |
|---|---|---|---|
| 1 | **Nmap** | Network mapper. Sends packets across an IP range, analyzes responses, identifies open ports, services, and OS fingerprints. `nmap -A <target>` runs an aggressive scan with OS detection + traceroute. | **Audit your own subnet** before publishing anything. What ports are open on your AI rig? Which services are exposed externally vs internally? Run weekly to catch surprise services that opened ports without you noticing. |
| 2 | **Wireshark** | Packet capture and protocol analyzer. GUI-driven; captures real-time traffic across hundreds of protocols; supports offline replay and filtering. | **Identify unexpected traffic** on your own LAN. Where is your AI rig actually phoning home? Is your local model making outbound calls you didn't expect? Critical for verifying that "local" actually means local. |
| 3 | **Metasploit** | Exploit framework. Massive database of known vulnerabilities + payloads + post-exploitation modules; `msfconsole` is the interactive interface. | **Verify your own systems are patched** against known CVEs. If a public exploit exists for software you run, Metasploit lets you confirm whether you're vulnerable before someone else does. |
| 4 | **Aircrack-ng** | Wi-Fi packet capture suite. `airmon-ng` puts your card in monitor mode, `airodump-ng` captures packets, `aircrack-ng` cracks WPA/WPA2 keys via dictionary or brute force. | **Audit your own Wi-Fi key strength**. If your home network's WPA2 key is in rockyou.txt, you need to know — especially if your local AI rig is on it. |
| 5 | **Hashcat** | GPU-accelerated password hash cracker. Supports MD5, SHA, bcrypt, NTLM, and dozens more; runs dictionary, brute force, mask, and hybrid attacks; the rockyou.txt wordlist (~14M common passwords) is the standard starting point. | **Verify your own hash policy**. Pull the hashes out of your own database and run them through hashcat. Anything that cracks in seconds is a policy failure. The practical lesson: **algorithm choice + salting determines whether a stolen DB is recoverable** — MD5 cracks instantly, bcrypt takes days even against rockyou.txt. |
| 6 | **Skipfish** | Recursive web vulnerability scanner. Crawls a target site and probes for XSS, SQL injection, and other OWASP web vulns; produces an HTML report; supports authenticated crawling with stored credentials. | **Audit your own self-hosted web apps** before exposing them. Run against your local Open WebUI / Supabase / Dify install before opening it to a real domain. Free, fast, and catches the obvious mistakes. |
| 7 | **Foremost** | Forensic file-carving tool. Recovers files from raw disk images by scanning byte-by-byte for known headers/footers (e.g., JPEG markers); doesn't need an intact filesystem. | **Recover your own deleted files** from a drive that was quick-formatted. Also a useful demonstration of what "delete" actually means: until the data is overwritten, it's recoverable. Relevant when decommissioning drives that held credentials or AI training data. |
| 8 | **sqlmap** | Automated SQL injection + database enumeration. Tests forms and URL parameters for injection; once it finds one, dumps schemas, tables, and rows. | **Audit your own form inputs** before publishing. The kind of mistake sqlmap finds is the kind every web framework's docs tell you to avoid but every developer eventually ships anyway. |
| 9 | **hping3** | TCP/IP packet crafter and flood-test tool. `hping3 --flood` sends packets as fast as possible without waiting for replies; useful for DOS testing. Distributed across multiple machines becomes DDoS. | **Load-test your own infrastructure** against denial of service. If a single laptop with hping3 takes your serverless app down, you have a billing problem (serverless platforms charge per request). Useful for setting realistic rate limits. |
| 10 | **Social-Engineer Toolkit (SET)** | Multi-vector social-engineering framework. Automates phishing email composition, clone-site generation (clones a target login page and harvests credentials submitted to it), QR-code attacks, SMS spoofing, IoT vectors. No JavaScript required. | **Train your team / household** on what a real phishing attack looks like. Run a sanctioned exercise against people who consented in advance. Most successful breaches start with social engineering — the technical defenses don't matter if someone hands over the password. |

## Tools name-checked but not walked through

Worth tracking as the obvious "second 10" if a future source covers them in depth:

- **John the Ripper** — sibling to Hashcat; CPU-focused password cracker with strong support for unusual hash formats
- **Nikto** — older but still useful web server scanner; finds default files, outdated software, and common misconfigurations
- **Burp Suite** — the canonical web app testing proxy; intercepts and modifies HTTP traffic between your browser and the target

## How this fits the wiki's defensive thread

The wiki's defensive-security coverage so far:

- **Network/infrastructure side**: this page ([[kali-linux]]) + [[bjorn]] (Pi pentest device)
- **AI-app side**: [[ai-personal-agent-hardening]] (prompt injection, tokenade, siege attacks, the two defensive rules)
- **Self-hosted exposure recipes (the offensive surface)**: [[summary-wolfgangs-channel-local-ssl-homelab|Wolfgang's SSL homelab]], [[summary-networkchuck-open-webui-domain-ssl|NetworkChuck Open WebUI domain]], [[open-webui]], [[ollama]]

The pattern: every time the wiki adds a self-hosted exposure recipe, the defensive-audit obligation grows. Kali Linux is the canonical answer to *"now that I've published this, how do I check it before someone else does?"*

## See Also

- [[bjorn]] — sibling defensive-pentest entry; Raspberry Pi network audit device
- [[ai-personal-agent-hardening]] — the AI-app-side equivalent of this page
- [[fireship]] — primary source author
- [[summary-fireship-10-illegal-tools|Source: Fireship — 10 open source tools that feel illegal]]
- [[summary-tcm-bjorn-network-pentest-pi|Source: TCM Bjorn Pi pentest]]
- [[open-webui]], [[ollama]] — the self-hosted AI surface this toolkit audits
