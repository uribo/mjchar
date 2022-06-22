test_that("search_mojikiban", {
  res <-
    search_mojikiban("\U74DC", input_type = "font")
  expect_identical(
    as.character(res),
    "\U74DC")
  res <-
    search_mojikiban("MJ015228", input_type = "mjcode")
  expect_identical(
    as.character(res),
    "\U6CE2")
  expect_error(
    search_mojikiban("a", input_type = "font"))
  expect_error(
    search_mojikiban("MJ999999", input_type = "mjcode"))
})
