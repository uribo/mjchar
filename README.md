
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mjchar

<!-- badges: start -->
<!-- badges: end -->

mjcharは[文字情報技術促進協議会](https://moji.or.jp)による[文字情報基盤整備事業](https://moji.or.jp/mojikiban/)で整備された漢字文字集合であるMJ文字についての情報検索を行うRパッケージです。

本パッケージが提供するMJ文字情報の一覧データは[情報処理推進機構(IPA)](https://www.ipa.go.jp/)ならびに文字情報技術促進協議会の著作物です。[クリエイティブ・コモンズ
表示 – 継承 2.1 日本
ライセンス](https://creativecommons.org/licenses/by-sa/2.1/jp/)により配布されています。

## インストール

現在、mjcharはCRANには登録されていませんが、次のコマンドを実行することで
インストールが可能です。

``` r
install.packages("mjchar", repos = "https://uribo.r-universe.dev")
```

## 利用方法

``` r
library(mjchar)
```

``` r
x <- "\u74dc"
x
#> [1] "瓜"
search_mojikiban(x, input_type = "font")
#> <cli_ansi_string>
#> [1] ]8;;https://moji.or.jp/mojikibansearch/info?MJ文字図形名=瓜瓜]8;;

moji_to_mjcode(x)
#> [1] "MJ017521"
```
