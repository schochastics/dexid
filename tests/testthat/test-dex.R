test_that("dexid works", {
  expect_equal(length(dexid(3)), 3)
  expect_true(all(grepl("\\d", dexid(3, add_digits = TRUE))))
  expect_snapshot(dexid(3, gen = c(0, 10)), error = TRUE)
  expect_snapshot(dexid(3, case = "invalid_case"), error = TRUE)
})
