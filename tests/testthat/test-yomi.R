test_that("moji_to_yomi", {
  res <-
    moji_to_yomi("\U74DC")
  expect_type(res, "list")
  expect_named(res, c("on", "kun"))
  expect_length(res[[1]], 1L)
  expect_length(res[[2]], 1L)
  expect_type(res[[1]], "character")
})
