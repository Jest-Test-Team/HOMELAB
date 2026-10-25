# Kali applications — documentation index / 文件索引

Reference for the tools in the Kali whisker menu: what each is, and step-by-step
tutorials, all scoped to the operator-owned HOMELAB lab ([`../../ROE.md`](../../ROE.md)).

Kali 選單中工具的參考：每個是什麼、逐步教學，全部限於操作者擁有的 HOMELAB lab。

| Document | Language | Contents |
|---|---|---|
| [`tutorials.en.md`](tutorials.en.md) | English | **Per-tool step-by-step for all 382 tools** — each with its real binaries (`Provides`), install→help→run steps using the actual binary, and docs link. |
| [`tutorials.zh-TW.md`](tutorials.zh-TW.md) | 繁體中文 | **全部 382 個工具的逐步教學** —— 每個附實際指令（`提供指令`）、安裝→說明→執行三步驟與文件連結。 |
| [`catalogue.en.md`](catalogue.en.md) | English | Compact index of all 382 tools by category (description + install + docs link). |
| [`catalogue.zh-TW.md`](catalogue.zh-TW.md) | 繁體中文 | 所有 382 個工具的精簡索引（說明＋安裝＋文件）。 |
| [`installed-apps.md`](installed-apps.md) | EN + 繁中 | Every application **currently on this VM** (450 after full toolset install), each with an intro + step-by-step; enumerated by [`../scripts/list-apps.sh`](../scripts/list-apps.sh) |
| [`applications.en.md`](applications.en.md) | English | Hand-written deep-dive tutorials for the core offensive tools |
| [`applications.zh-TW.md`](applications.zh-TW.md) | 繁體中文 | 核心攻擊工具的詳細教學 |

**Three views, on purpose:**
- `catalogue.*.md` = the **exhaustive list of every Kali tool by category** (installed or not) — this is "all applications in Kali".
- `installed-apps.md` = what is **on this VM right now** (450 apps after the full toolset install), each with an intro and **step-by-step** (tools include their verified `--help`).
- `applications.*.md` = **deeper walkthroughs** for the handful of tools you use most against this lab.

Install any category with `../scripts/install-tools.sh cat:<slug>`, drive any tool with
`../scripts/tool.sh <name>`, then re-run `list-apps.sh` to refresh `installed-apps.md`.

## Verification / 驗證

[`verification.md`](verification.md) records that the scripts were run against **every** installed app: `tool.sh` drove all 357 runnable CLI tools (357/357 PASS), `apps.sh` resolved 450/450, + real node runs and GUI launches.

## Related / 相關

- Attack walkthrough: [`../attack-tutorial.en.md`](../attack-tutorial.en.md) · [`../attack-tutorial.zh-TW.md`](../attack-tutorial.zh-TW.md)
- Scripts to drive the tools: [`../scripts/README.md`](../scripts/README.md)
- Rules of engagement: [`../../ROE.md`](../../ROE.md)
- Encrypted evidence pipeline: [`../../crypto/README.md`](../../crypto/README.md)

## Installing tools / 安裝工具

The full toolset is now installed on `Kali-Red5` (all 29 `kali-tools-*` categories, 450
menu apps). On a fresh/minimal VM, install with:

```bash
lab/kali/scripts/install-tools.sh            # curated groups: recon web vuln pass exploit sniff
lab/kali/scripts/install-tools.sh cat:web    # a whole menu category (any of the 29 slugs)
lab/kali/scripts/install-tools.sh --all      # the full kali-linux-default metapackage
```
