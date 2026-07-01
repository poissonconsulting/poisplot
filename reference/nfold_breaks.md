# N-fold Breaks

N-fold Breaks

## Usage

``` r
nfold_breaks(n = 5)
```

## Arguments

- n:

  A numeric scalar of the desired number of breaks.

## Value

A function to calculate the breaks from a vector.

## Examples

``` r
nfold_breaks()(c(-3 / 4, -2 / 3, -1 / 2, 0, 1, 2, 3))
#> [1] -0.7500000 -0.6666667 -0.5000000  0.0000000  1.0000000  2.0000000  3.0000000
```
