
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R build
status](https://github.com/poissonconsulting/poisplot/workflows/R-CMD-check/badge.svg)](https://github.com/poissonconsulting/poisplot/actions)
[![Codecov test
coverage](https://codecov.io/gh/poissonconsulting/poisplot/branch/master/graph/badge.svg)](https://codecov.io/gh/poissonconsulting/poisplot?branch=master)
[![License:
MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/license/mit/)
<!-- badges: end -->

# poisplot

`poisplot` is an R package of a few utility functions to help with
creating ggplot objects for Poisson’s projects.

## Demonstration

People often find it easiest to conceptualize an effect size in terms of
the percent change. However, negative percent change (which cannot be
less than 100%) does not scale linearly in the same way as positive
percent change (which is unlimited). This results in positive changes
appearing much larger than equivalent negative changes in a standard
plot.

``` r
library(poisplot)
library(ggplot2)
library(scales)

data <- data.frame(y = c(-3/4,-2/3,-1/2,0,1,2,3))
data$x <- 1:nrow(data)

gp <- ggplot(data, aes(x = x, y = y)) +
  geom_hline(yintercept = 0, linetype = "dotted") +
  geom_line() +
  geom_point()

gp + scale_y_continuous(labels = percent)
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

The `nfold_trans()` function ensures that negative percent changes scale
in the same way as positive percent changes.

``` r
gp + scale_y_continuous(labels = percent, trans = nfold_trans(), breaks = data$y)
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

The poisplot also makes the Poisson plot theme available.

``` r
gp + scale_y_nfold(labels = percent) +
  theme_Poisson()
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

## Installation

To install from GitHub

    install.packages("devtools")
    devtools::install_github("poissonconsulting/poisplot")

## Contribution

Please report any
[issues](https://github.com/poissonconsulting/poisplot/issues).

[Pull requests](https://github.com/poissonconsulting/poisplot/pulls) are
always welcome.

## Code of Conduct

Please note that the poisplot project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
