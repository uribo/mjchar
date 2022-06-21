#################################
# MJ文字情報一覧表
# Ver.006.01
#################################
if (!file.exists("data-raw/mji.00601.xlsx")) {
  dl_file <- "https://moji.or.jp/wp-content/mojikiban/oscdl/mji.00601-xlsx.zip"
  download.file(
    dl_file,
    destfile = paste0("data-raw/", basename(dl_file)))
  unzip(paste0("data-raw/", basename(dl_file)),
        exdir = "data-raw")
  usethis::use_git_ignore(c("*.xlsx", "*.zip"))
}

mji <-
  readxl::read_xlsx("data-raw/mji.00601.xlsx",
                    col_types = c("skip",
                                  rep("text", 2),
                                  # 対応するUCS、実装したUCSはskipfontから判別できる
                                  # stringi::stri_escape_unicode(mji$font[1])
                                  rep("skip", 34)))

usethis::use_data(mji, overwrite = TRUE, internal = TRUE)
