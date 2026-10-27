test_that("multiplication works", {
  expect_equal(make_codons("AUGGCUUAA"), c("AUG", "GCU", "UAA"))
})
