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
  expect_s3_class(nfold_trans(), "transform")
  expect_equal(nfold_trans()$domain, c(-1, Inf))
})

test_that("scale_y_nfold snapshot", {
  gp <- ggplot2::ggplot(
    data.frame(x = 1:4, y = c(-0.5, 0, 0.5, 1)),
    ggplot2::aes(x = x, y = y)
  ) +
    ggplot2::geom_point() +
    scale_y_nfold()
  expect_snapshot_plot(gp, "scale_y_nfold")
})

test_that("scale_x_nfold", {
  scale_n <- scale_x_nfold()
  scale_n$call <- NULL
  scale_n$super <- NULL

  scale_cont <- scale_x_continuous(trans = nfold_trans())
  scale_cont$call <- NULL
  scale_cont$super <- NULL

  expect_equal(scale_n, scale_cont)
})

test_that("scale_y_nfold", {
  scale_n <- scale_y_nfold()
  scale_n$call <- NULL
  scale_n$super <- NULL

  scale_cont <- scale_y_continuous(trans = nfold_trans())
  scale_cont$call <- NULL
  scale_cont$super <- NULL

  expect_equal(scale_n, scale_cont)
})
