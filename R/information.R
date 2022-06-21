#' List for moji information
#'
#' @inheritParams moji_to_mjcode
#' @examples
#' moji_information("\U74dc")
#' @export
moji_information <- function(x) {
  as.list(
    notfound_moji_tbl(
      mji_full[which(mji_full[[1]] == x), ]
    )
  )
}
