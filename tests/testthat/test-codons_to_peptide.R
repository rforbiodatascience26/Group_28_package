test_that("Function converts properly", {
  expect_equal(codons_to_peptide(c("UUU","GGG", "GGC")), "FGG")
})
