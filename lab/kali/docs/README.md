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
- `installed-apps.md` = what is **on this VM right now** (a minimal install), with a tutorial per app.
- `applications.*.md` = **deeper walkthroughs** for the handful of tools you use most against this lab.

Install any category with `../scripts/install-tools.sh cat:<slug>`, drive any tool with
`../scripts/tool.sh <name>`, then re-run `list-apps.sh` to refresh `installed-apps.md`.

## Related / 相關

- Attack walkthrough: [`../attack-tutorial.en.md`](../attack-tutorial.en.md) · [`../attack-tutorial.zh-TW.md`](../attack-tutorial.zh-TW.md)
- Scripts to drive the tools: [`../scripts/README.md`](../scripts/README.md)
- Rules of engagement: [`../../ROE.md`](../../ROE.md)
- Encrypted evidence pipeline: [`../../crypto/README.md`](../../crypto/README.md)

## This VM is a minimal install / 這台 VM 是最小安裝

Only a handful of categories are populated out of the box. Install the offensive
toolset with:

```bash
lab/kali/scripts/install-tools.sh            # groups: recon web vuln pass exploit sniff
lab/kali/scripts/install-tools.sh --all      # or the full kali-linux-default metapackage
```
