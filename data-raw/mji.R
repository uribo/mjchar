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

mji_full <-
  readxl::read_xlsx("data-raw/mji.00601.xlsx",
                    col_types = c("skip",
                                  rep("text", 4),
                                  rep("text", 10),
                                  "numeric",
                                  "text",
                                  "numeric",
                                  rep("text", 1),
                                  rep("numeric", 6),
                                  # 本来はnumeric
                                  rep("text", 2),
                                  "numeric",
                                  "text",
                                  rep("numeric", 5),
                                  rep("text", 2),
                                  "skip"))

usethis::use_data(mji, mji_full, overwrite = TRUE, internal = TRUE)
