# 機械可読な新型コロナウイルスのデータセット

[鳥取県の新型コロナウイルス感染症特設サイト](https://www.pref.tottori.lg.jp/item/1197213.htm)をもとにして機械で扱いやすいように CSV に加工したものです。

## 地域

| ディレクトリ名 | 地域       |
| -------------- | ---------- |
| tottori        | 鳥取県全域 |

## 項目

| ファイル名     | 項目                                       |
| -------------- | ------------------------------------------ |
| inspection.csv | 新型コロナウイルス PCR 検査実施件数        |
| querent.csv    | 発熱・帰国者・接触者相談センターの相談件数 |

## データセットのダウンロード

```sh
mkdir -p downloads/tottori
cd downloads/tottori
curl -sLO https://raw.githubusercontent.com/tottori-covid19/dataset/master/tottori/inspection.csv
curl -sLO https://raw.githubusercontent.com/tottori-covid19/dataset/master/tottori/querent.csv
```
