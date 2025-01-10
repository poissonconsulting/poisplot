test_that("nfold2prop", {
  expect_equal(
    prop2nfold(c(-1, -2 / 3, -1 / 2, 0, 1 / 2, 1, 2, Inf)),
    c(-Inf, -2.0, -1.0, 0.0, 0.5, 1.0, 2.0, Inf)
  )
  expect_equal(
    nfold2prop(prop2nfold(c(-1, -2 / 3, -1 / 2, 0, 1 / 2, 1, 2, Inf))),
    c(-1, -2 / 3, -1 / 2, 0, 1 / 2, 1, 2, Inf)
  )
})

test_that("nfold_breaks", {
  expect_equal(nfold_breaks()(c(-3 / 4, -2 / 3, -1 / 2, 0, 1, 2, 3)),
    c(-0.75, -0.6666667, -0.5, 0, 1, 2, 3),
    tolerance = 1e-07
  )
})

test_that("nfold_trans", {
  expect_is(nfold_trans(), "transform")
})

test_that("scale_y/x_nfold", {
  expect_equal(scale_y_nfold(), scale_y_continuous(trans = nfold_trans()))
  expect_equal(scale_x_nfold(), scale_x_continuous(trans = nfold_trans()))
})
