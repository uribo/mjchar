test_that("sample_moji", {
  set.seed(20220622)
  res <-
    sample_moji(1)
  expect_equal(
    res,
    "\u99c2")
})
