test_that("mjcode", {
  expect_equal(
    moji_to_mjcode("\U74DC"),
    "MJ017521")
  expect_error(
    moji_to_mjcode("a"))
})
