test_that("strsplit1 splits correctly", {
  expect_equal(strsplit1("a,b,c", ","), c("a","b","c"))
})
