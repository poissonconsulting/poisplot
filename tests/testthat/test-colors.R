test_that("get_colors", {
  expect_identical(
    get_colors(),
    c(
      "black", "red", "blue", "green4", "orange3",
      "slategray", "purple"
    )
  )
})
