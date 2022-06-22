test_that("is...", {
  expect_true(is_jyouyou_kanji("\U6A39"))
  expect_false(is_jyouyou_kanji("\U74DC"))
  expect_equal(
    is_jyouyou_kanji(c("\u8af8", "\u884c", "\u7121", "\u5e38")),
    c(FALSE, TRUE, TRUE, TRUE)
  )

  expect_true(is_jinmeiyou_kanji("\U74DC"))
  expect_equal(
    is_jinmeiyou_kanji(c("\u590f", "\u76ee", "\u6f31", "\u77f3")),
    c(FALSE, FALSE, TRUE, FALSE)
  )
})

test_that("kakusu and busyu", {
  res <-
    kakusu("\U74DC")
  expect_s3_class(res, "data.frame")
  expect_equal(dim(res), c(1, 5))
  expect_named(res,
               c("内画数1(参考)", "内画数2(参考)", "内画数3(参考)",
                 "内画数4(参考)", "総画数(参考)"))
  expect_equal(res[[5]], 6L)

  res <-
    busyu("\U74DC")
  expect_s3_class(res, "data.frame")
  expect_equal(dim(res), c(1, 4))
  expect_named(res,
               c("部首1(参考)", "部首2(参考)", "部首3(参考)", "部首4(参考)"))
  expect_equal(res[[1]], 97L)
})
