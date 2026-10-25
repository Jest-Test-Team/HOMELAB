# Kali applications — documentation index / 文件索引

Reference for the tools in the Kali whisker menu: what each is, and step-by-step
tutorials, all scoped to the operator-owned HOMELAB lab ([`../../ROE.md`](../../ROE.md)).

Kali 選單中工具的參考：每個是什麼、逐步教學，全部限於操作者擁有的 HOMELAB lab。

| Document | Language | Contents |
|---|---|---|
| [`applications.en.md`](applications.en.md) | English | Full catalogue by menu category (01-Reconnaissance … 16-Services), intro + step-by-step per tool |
| [`applications.zh-TW.md`](applications.zh-TW.md) | 繁體中文 | 依選單分類的完整清單，每個工具的介紹＋逐步教學 |

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
