---
type: source-summary
sources: ["10 open source tools that feel illegal....md"]
created: 2026-04-09
updated: 2026-04-09
tags: [video, youtube, security, pentest, kali, defensive]
---

# 10 open source tools that feel illegal...

**Channel:** [[fireship|Fireship]]
**Format:** YouTube video (Code Report)
**URL:** https://www.youtube.com/watch?v=Ukt2gVz25PQ
**Length:** ~10 minutes
**Published:** 2026-02-05
**Sponsor:** Hostinger (Kali Linux VPS template; not added per sponsorship rule)

## Summary

Fireship's Code Report on **[[kali-linux|Kali Linux]]** and 10 default open-source pentesting tools, framed with the standard "use only with permission" disclaimer. The video catalogs the canonical Kali toolkit at a beginner-friendly level — what each tool does, when to reach for it, and the basic command form. **The wiki captures this as a defensive reference**: every tool here has a corresponding "audit your own infrastructure" use case that's directly relevant to hardening self-hosted AI rigs and the AI apps running on them. Sibling to [[bjorn]] (Raspberry Pi network pentest device for self-hosters).

## Key Points

- **The 10 tools.** The full catalog is captured on [[kali-linux]] with defensive framing for each. In source order:
  1. **Nmap** — network mapping; map your own subnet, find what's exposed
  2. **Wireshark** — packet inspection; identify unexpected traffic and exfil paths on your own LAN
  3. **Metasploit** — exploit framework; verify whether known vulns are patched on your own systems
  4. **Aircrack-ng** — Wi-Fi packet capture and WPA key cracking; audit your own Wi-Fi key strength
  5. **Hashcat** — password hash cracking via rockyou.txt; verify your own password / hash policy
  6. **Skipfish** — recursive web vulnerability scanner; audit your own self-hosted web apps for XSS/SQLi/etc.
  7. **Foremost** — forensic file carving from raw disk images; data recovery from your own drives; also useful for understanding what "delete" actually does
  8. **sqlmap** — SQL injection + database schema enumeration; audit your own form inputs before publishing
  9. **hping3** — packet flooding / DOS testing; load-test your own infrastructure against denial of service
  10. **Social-Engineer Toolkit (SET)** — phishing + clone-site + multi-vector social engineering; train your team on what an attack looks like
- **Follow-on tools name-checked**: John the Ripper, Nikto, Burp Suite. Worth tracking as the obvious "second 10" if a future source covers them.
- **Why this belongs in the wiki**: a self-hosted AI rig that exposes [[open-webui|Open WebUI]] over a public domain (per [[summary-wolfgangs-channel-local-ssl-homelab|Wolfgang]] / [[summary-networkchuck-open-webui-domain-ssl|NetworkChuck]] recipes) becomes a real attack surface. The same tools attackers use to find misconfigurations are the tools you use to find them first. The wiki tracks Kali Linux + these 10 tools as the canonical defensive audit kit, sibling to [[bjorn|Bjorn]] (the dedicated Pi pentest device).
- **Hashing reminder**: nobody stores plaintext passwords; modern apps use SHA / bcrypt + salt. MD5 cracks in seconds; bcrypt may take days even against rockyou.txt. The practical defensive lesson: **algorithm choice + salting determines whether a stolen DB is recoverable or not**.
- **The "memory bandwidth, not CPU" framing from his Gemma 4 video** has a parallel here: **the bottleneck for an attacker isn't compute, it's information** — Nmap, Wireshark, and Skipfish are all reconnaissance, not exploitation. Attackers who can't see your surface can't attack it. Defensive lesson: minimize what's externally visible.

## Sponsorship & Bias Notes

**Sponsor:** Hostinger, ~45-second segment around 1:30. Promotes their Kali Linux one-click VPS template + general VPS plans (NVMe, AMD EPYC, Docker manager, one-click Supabase). Discount code "FIRESHIP" mentioned. **Not added to the wiki** per the YouTube template rule. If Hostinger warrants coverage as a self-host alternative, it should come from a non-sponsored source.

**Product placement / affiliations:** none observed beyond the disclosed sponsor. The 10 tools are all genuinely default-on Kali and are the canonical beginner pentest toolkit; the catalog is not skewed toward any commercial or affiliate offering.

**Comparison bias:** none observed. The video is descriptive, not comparative, and the tools picked are the conventional starting kit (every Kali tutorial in the world covers ~80% of the same 10 tools).

## Notable Quotes

> "If used non-consensually, it could break many international laws that land you in prison. So never do penetration testing on a website or network without permission."

> "The lesson to be learned here is that you want to be the one doing the penetrating, not some stranger in a foreign country who doesn't even care about your feelings."

## Connected Pages

- [[kali-linux|Kali Linux]] — primary entity; full 10-tool catalog with defensive framing
- [[fireship|Fireship]] — channel
- [[bjorn|Bjorn]] — sibling defensive-pentest entry; Raspberry Pi network audit device
- [[ai-personal-agent-hardening|AI Personal Agent Hardening]] — the AI-app-side equivalent
- [[summary-tcm-bjorn-network-pentest-pi|TCM: Bjorn Pi network pentest]] — adjacent defensive source

## See Also
- [[summary-fireship-gemma4-apache|Fireship — Gemma 4 as a licensing event]] — same channel, different topic
- [[summary-fireship-saas-death-spiral|Fireship — SaaS death spiral]]
- [Original](../../raw/archive/10%20open%20source%20tools%20that%20feel%20illegal....md)
