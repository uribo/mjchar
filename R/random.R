#' Random Sample for Kanji
#'
#' @param size a positive number, the number of items to choose from.
#' @examples
#' sample_moji(1)
#' @rdname sample
#' @export
sample_moji <- function(size) {
  sample(
    mji[which(mji[[1]] != intToUtf8(c(23455L, 35013L, 12394L, 12375L))), ][[1]],
    size = size)
}
