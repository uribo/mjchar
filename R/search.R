#' Search kanji on mojikiban
#' @param x kanji character or mjcode
#' @param input_type font or mjcode
#' @examples
#' search_mojikiban("\U74dc", input_type = "font")
#' search_mojikiban("MJ017521", "mjcode")
#' @export
search_mojikiban <- function(x, input_type) {
  input_type <- rlang::arg_match(input_type,
                                 c("font", "mjcode"))
  if (input_type == "font") {
    df <-
      subset(mji, subset = `font` == x)
  } else if (input_type == "mjcode") {
    df <-
      mji[which(mji[[2]] == x), ]
  }
  notfound_moji_tbl(df)
  font <-
    df[[1]]
  mj <-
    df[[2]]
  cli::style_hyperlink(
    font,
    paste0("https://moji.or.jp/mojikibansearch/info?",
           intToUtf8(c(77, 74, 25991, 23383, 22259, 24418, 21517)),
           "=",
           mj))
}

notfound_moji_tbl <- function(x) {
  if (nrow(x) == 0L) {
    rlang::abort(
      intToUtf8(c(25991L, 23383L, 24773L, 22577L, 22522L, 30436L, 12398L, 77L,
                  74L, 25991L, 23383L, 22259L, 24418L, 38598L, 21512L, 12395L,
                  21547L, 12414L, 12428L, 12414L, 12379L, 12435L)
      ))
  } else {
    x
  }
}

search_moji <- function(x) {
  notfound_moji_tbl(mji[which(mji[[1]] == x), ])
}
