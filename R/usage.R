#' Check how Kanji characters are used
#'
#' @inheritParams moji_to_mjcode
#' @examples
#' is_jyouyou_kanji("\U74DC")
#' is_jyouyou_kanji("\U6A39")
#' is_jyouyou_kanji(c("\u8af8", "\u884c", "\u7121", "\u5e38"))
#'
#' is_jinmeiyou_kanji("\U74DC")
#' is_jinmeiyou_kanji(c("\u590f", "\u76ee", "\u6f31", "\u77f3"))
#'
#' kakusu("\U74DC")
#' busyu("\U74DC")
#' @rdname usage
#' @export
is_jyouyou_kanji <- function(x) {
  font <- NULL
  purrr::map_lgl(
    x,
    ~ identical(
      subset(mji_full, subset = `font` == .x)[[11]],
      intToUtf8(c(24120L, 29992L, 28450L, 23383L))))
}

#' @rdname usage
#' @export
is_jinmeiyou_kanji <- function(x) {
  font <- NULL
  purrr::map_lgl(
    x,
    ~ identical(
      subset(mji_full, subset = `font` == .x)[[11]],
      intToUtf8(c(20154L, 21517L, 29992L, 28450L, 23383L))))
}

#' @rdname usage
#' @export
kakusu <- function(x) {
  font <- NULL
  df <-
    subset(mji_full, subset = `font` == x)
  purrr::keep(df,
              stringr::str_detect(
                names(df),
                intToUtf8(c(30011L, 25968L))))
}

#' @rdname usage
#' @export
busyu <- function(x) {
  font <- NULL
  df <-
    subset(mji_full, subset = `font` == x)
  purrr::keep(df,
              stringr::str_detect(
                names(df),
                intToUtf8(c(37096L, 39318L))))
}
