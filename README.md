**NOTICE**: このリポジトリのデータは[2021年5月31日の鳥取県の発表方法の見直し](https://www.pref.tottori.lg.jp/item/1207264.htm#itemid1207264)に伴い更新停止しました。最新の情報は[鳥取県公式の新型コロナウイルス感染症特設サイト](https://www.pref.tottori.lg.jp/corona-virus/)を参照してください。

# 機械可読な新型コロナウイルスのデータセット

[鳥取県の新型コロナウイルス感染症特設サイト](https://www.pref.tottori.lg.jp/289682.htm)をもとにして機械で扱いやすいように CSV に加工したものです。

## 地域

| ディレクトリ名 | 地域           |
| -------------- | -------------- |
| tottori        | 鳥取県全域     |
| tottori-tobu   | 鳥取県東部地区 |
| tottori-chubu  | 鳥取県中部地区 |
| tottori-seibu  | 鳥取県西部地区 |

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
