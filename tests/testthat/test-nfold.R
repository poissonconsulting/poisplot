context("nfold")

test_that("nfold2prop" ,{
  expect_equal(prop2nfold(c(-1,-2/3,-1/2,0,1/2,1,2,Inf)),
                   c(-Inf, -2.0, -1.0,  0.0,  0.5,  1.0,  2.0, Inf))
  expect_equal(nfold2prop(prop2nfold(c(-1,-2/3,-1/2,0,1/2,1,2,Inf))),
                          c(-1,-2/3,-1/2,0,1/2,1,2,Inf))
})


test_that("nfold_trans" ,{
  expect_is(nfold_trans(), "trans")
})

