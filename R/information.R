#' List for moji information
#'
#' @inheritParams moji_to_mjcode
#' @param .keep_dictionary_page Whether to include page numbers in the
#' various dictionaries.
#' @examples
#' moji_information("\U74dc")
#' moji_information("\U74dc", .keep_dictionary_page = TRUE)
#' @export
moji_information <- function(x, .keep_dictionary_page = FALSE) {
  df <-
    notfound_moji_tbl(
      mji_full[which(mji_full[[1]] == x), ])
  if (.keep_dictionary_page == FALSE) {
    df <-
      df[, c(seq_len(28),
             seq.int(34, 35))]
  }
  as.list(df)
}
