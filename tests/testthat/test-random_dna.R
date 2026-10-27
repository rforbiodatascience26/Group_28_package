test_that("random_dna returns a single string of the right length", {
  seq <- random_dna(10)
  expect_type(seq, "character")
  expect_length(seq, 1)
  expect_equal(nchar(seq), 10)
})

test_that("random_dna only contains A, T, G and C", {
  seq <- random_dna(100)
  expect_match(seq, "^[ATGC]+$")

})

