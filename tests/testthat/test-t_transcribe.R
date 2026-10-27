test_that("Ts get converted into Us", {
  expect_equal(t_transcribe('ATGCTACTAATTC'), ('AUGCUACUAAUUC'))
})
