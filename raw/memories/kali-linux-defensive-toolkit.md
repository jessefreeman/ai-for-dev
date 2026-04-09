---
title: Kali Linux 10-tool defensive audit catalog
summary: The canonical 10 default Kali pentest tools captured defensively for hardening self-hosted AI infrastructure.
tags: [tool_kali_linux, topic_security, topic_defensive, topic_self_hosted, source_fireship_10_illegal_tools]
---

# Kali Linux 10-tool defensive audit catalog

## Context

From [[summary-fireship-10-illegal-tools|Fireship — 10 open source tools that feel illegal]]. See also [[kali-linux]], [[bjorn]], [[ai-personal-agent-hardening]].

## Content

The canonical 10 default-on Kali Linux pentest tools, captured defensively for **auditing your own infrastructure** (never against systems you don't own — that's illegal in most jurisdictions). The wiki tracks these as the canonical audit kit for self-hosted AI rigs.

| Tool | Defensive use case |
|---|---|
| **Nmap** | Audit your own subnet — what ports are open on your AI rig? Run weekly to catch surprise services. |
| **Wireshark** | Identify unexpected traffic on your LAN — is your "local" model phoning home? |
| **Metasploit** | Verify your own systems are patched against known CVEs before someone else exploits them. |
| **Aircrack-ng** | Audit your own Wi-Fi key strength — is it in rockyou.txt? |
| **Hashcat** | Verify your own hash policy — anything that cracks in seconds is a policy failure. MD5 = instant; bcrypt = days. |
| **Skipfish** | Recursive web vuln scanner — audit your own self-hosted web apps (Open WebUI, Supabase, Dify) before exposing them. |
| **Foremost** | Forensic file carving — recover your own deleted files from quick-formatted drives. Demonstrates what "delete" actually means. |
| **sqlmap** | SQL injection + DB enumeration — audit your own form inputs before publishing. |
| **hping3** | Packet flooding for DOS load testing — find your serverless platform's billing ceiling before an attacker does. |
| **Social-Engineer Toolkit (SET)** | Run sanctioned phishing exercises against your own team — most breaches start with social engineering. |

**Follow-on tools name-checked**: John the Ripper, Nikto, Burp Suite. Worth tracking as the obvious "second 10" if a future source covers them.
