
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

[![Travis-CI Build
Status](https://travis-ci.org/poissonconsulting/poisplot.svg?branch=master)](https://travis-ci.org/poissonconsulting/poisplot)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/poissonconsulting/poisplot?branch=master&svg=true)](https://ci.appveyor.com/project/poissonconsulting/poisplot)
[![Codecov test
coverage](https://codecov.io/gh/poissonconsulting/poisplot/branch/master/graph/badge.svg)](https://codecov.io/gh/poissonconsulting/poisplot?branch=master)
[![License:
MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
<!-- badges: end -->

# poisplot

``` r
library(poisplot)
library(ggplot2)
library(scales)

data <- data.frame(y = c(-3/4,-2/3,-1/2,0,1/2,1,2,3))
data$x <- 1:nrow(data)

gp <- ggplot(data, aes(x = x, y = y)) +
  geom_hline(yintercept = 0, linetype = "dotted") +
  geom_point()

gp + scale_y_continuous(labels = percent)
```

![](README-unnamed-chunk-2-1.png)<!-- -->

``` r
gp + scale_y_continuous(labels = percent, trans = nfold_trans())
```

![](README-unnamed-chunk-3-1.png)<!-- -->
