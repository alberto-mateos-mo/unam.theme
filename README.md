
<!-- README.md is generated from README.Rmd. Please edit that file -->

# unam.theme

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The goal of unam.theme is to provide a ggplot2 theme using UNAM’s
graphic identity.

Academic use only.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("alberto-mateos-mo/unam.theme")
```

## Example

The theme is used as follows:

``` r
library(unam.theme)
library(ggplot2)

ggplot(iris)+
  geom_point(aes(x = Sepal.Length, y = Petal.Length, colour = Species))+
  theme_unam()
```

<img src="man/figures/README-example-1.png" width="100%" />

Plot using unam golden colour:

``` r
library(unam.theme)
library(ggplot2)

ggplot(iris)+
  geom_point(aes(x = Sepal.Length, y = Petal.Length), colour = unam_oro)+
  theme_unam()
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />
