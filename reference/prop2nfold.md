# Proportional Change to N-fold Change

Proportional Change to N-fold Change

## Usage

``` r
prop2nfold(x)

nfold2prop(x)
```

## Arguments

- x:

  A double vector of the proportional (n-fold) change.

## Value

A double vector of the n-fold (proportional) change.

## Functions

- `nfold2prop()`: N-fold Change to Proportional Change

## Examples

``` r
prop2nfold(c(-1, -0.5, 0, 1, 2))
#> [1] -Inf   -1    0    1    2
nfold2prop(prop2nfold(c(-1, -0.5, 0, 1, 2)))
#> [1] -1.0 -0.5  0.0  1.0  2.0
```
