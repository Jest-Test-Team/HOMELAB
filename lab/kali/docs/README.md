# Kali applications — documentation index / 文件索引

Reference for the tools in the Kali whisker menu: what each is, and step-by-step
tutorials, all scoped to the operator-owned HOMELAB lab ([`../../ROE.md`](../../ROE.md)).

Kali 選單中工具的參考：每個是什麼、逐步教學，全部限於操作者擁有的 HOMELAB lab。

| Document | Language | Contents |
|---|---|---|
| [`catalogue.en.md`](catalogue.en.md) | English | **The complete Kali toolset — all 382 tools across 29 menu categories**, each with its description + a universal 4-step how-to. Generated from the VM's apt metadata. |
| [`catalogue.zh-TW.md`](catalogue.zh-TW.md) | 繁體中文 | **完整 Kali 工具集 —— 29 個分類共 382 個工具**，每個附說明與通用 4 步驟用法。 |
| [`installed-apps.md`](installed-apps.md) | EN + 繁中 | Every application **currently on this VM** (78), each with an intro + step-by-step; enumerated by [`../scripts/list-apps.sh`](../scripts/list-apps.sh) |
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
