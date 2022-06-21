#' Find out how to read
#'
#' @inheritParams moji_to_mjcode
#' @examples
#' moji_to_yomi("\U74DC")
#' moji_to_yomi("\U3436")
#' @export
moji_to_yomi <- function(x) {
  font <- NULL
  yomi_raw <-
    subset(mji_full, subset = `font` == x)[[28]]
  yomi_split <-
    sort(c(stringr::str_split(yomi_raw, "\U30fb", simplify = TRUE)))
  list(
    on = stringr::str_subset(yomi_split, "[:kana:]"),
    kun = stringr::str_subset(yomi_split, "[:hira:]")
  )
}
