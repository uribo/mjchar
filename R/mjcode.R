#' Convert to mjcode
#'
#' @param x kanji character
#' @examples
#' moji_to_mjcode("\u74dc")
#' @export
moji_to_mjcode <- function(x) {
  search_moji(x)[[2]]
}
