#' Check how Kanji characters are used
#'
#' @inheritParams moji_to_mjcode
#' @examples
#' is_jyouyou_kanji("\U74dc")
#' is_jyouyou_kanji("\U6A39")
#'
#' is_jinmeiyou_kanji("\U74dc")
#' @rdname usage
#' @export
is_jyouyou_kanji <- function(x) {
  identical(
    moji_information(x)[[11]],
    intToUtf8(c(24120L, 29992L, 28450L, 23383L)))
}

#' @rdname usage
#' @export
is_jinmeiyou_kanji <- function(x) {
  identical(
    moji_information(x)[[11]],
    intToUtf8(c(20154L, 21517L, 29992L, 28450L, 23383L)))
}

