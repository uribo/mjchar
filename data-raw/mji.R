## code to prepare `mji` dataset goes here
if (!file.exists("data-raw/mji.00601.xlsx")) {
  # download.file()
}

mji <-
  readxl::read_xlsx("data-raw/mji.00601.xlsx",
                    col_types = c("skip",
                                  rep("text", 2),
                                  # 対応するUCS、実装したUCSはskipfontから判別できる
                                  # stringi::stri_escape_unicode(mji$font[1])
                                  rep("skip", 34)))

usethis::use_data(mji, overwrite = TRUE, internal = TRUE)
