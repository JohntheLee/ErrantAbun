# ErrantAbun

<img src="https://pbs.twimg.com/profile_images/1087712161068134401/wjj4km3L_400x400.jpg" width="110" align="right">

Author: Jeonghoon Lee

Contact Info: jeonghoon.lee@mail.utoronto.ca

## Overview

This package contains the "errantabun" function which produces an errant species abundance matrix. This errant species abundance matrix is calculated from an original species abundance matrix and a randomized, statistical distribution. Currently, the available statistical distributions are Poisson and binomial. This function utilizes the "rpois" and the "rbinom" functions to create an abundance distribution for each species. The lambda for the Poisson distribution is the original abundance (vector) for each species. The size for the binomial distribution is the original abundance (vector) for each species.

This package also contains a sample abundance matrix collected from the Koffler Scientific Reserve: an assembly of grassland plant species. Fourteen blocks serve as disparate communities of grassland plant species. Each block contains an array of different-sized plots: eight 0.5m^2, eight 1m^2, and four 2m^2 plots. This abundance dataset must be transformed into an abundance matrix, with columns representing species and rows representing the plot/block/etc. of choice.

## Installation

``` r
# Install from CRAN
install.packages("ErrantAbun")
```

The "ErrantAbun" package possesses three dependencies: "dplyr", "magrittr", and "stats". Note that the "stats" package is pre-included in base R.

``` r
# dplyr
install.packages("dplyr")

# magrittr
install.packages("magrittr")
```

## To-do List:

 - ensure usability
 - add more statistical distributions
 - finalize readme file
