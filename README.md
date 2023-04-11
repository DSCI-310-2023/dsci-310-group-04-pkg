
<!-- README.md is generated from README.Rmd. Please edit that file -->

# genreclassifier

<!-- badges: start -->

[![R-CMD-check](https://github.com/DSCI-310/dsci-310-group-04-pkg/workflows/R-CMD-check/badge.svg)](https://github.com/DSCI-310/dsci-310-group-04-pkg/actions)
[![test-coverage](https://github.com/DSCI-310/dsci-310-group-04-pkg/workflows/test-coverage/badge.svg)](https://github.com/DSCI-310/dsci-310-group-04-pkg/actions)
[![codecov](https://codecov.io/gh/DSCI-310/dsci-310-group-04-pkg/branch/main/graph/badge.svg?token=Hx34xKHsz9)](https://codecov.io/gh/DSCI-310/dsci-310-group-04-pkg)
<!-- badges: end -->

[What The Package Does](https://dsci-310.github.io/dsci-310-group-04-pkg/)

## Overview

genreclassifier is a package which includes functions that aim to help
cut down redundant code chunks from the project linked [here](https://github.com/annabelle-ep/dsci-310-group-04)

  - `classy_read()` Prepares a dataframe for classification
  - `count_proportion()` Creates a dataframe counting the relative
    proportions of unique values in a specified column
  - `create_faceted_hist_plot()` Creates a faceted histogram comparing
    the distributions of song feature values across different
    “playlist\_genre” subgroups

As these functions were intended to be used specifically for our
project, `classy_read()` and `create_faceted_hist_plot()` contain quirks
in their implementation that may make them non-applicable for more
general uses. While `count_proportion()` is more generalizable, it is
recommended to read the function documentation to learn more about the
functions before using them.

## Installation

``` r
# To install genreclassifier, in the r console input:
devtools::install_github("DSCI-310/dsci-310-group-04-pkg")
```

## Contributing

For contribution guidelines, please refer to the standards outlined
[here](https://github.com/DSCI-310/dsci-310-group-04-pkg/blob/main/CONTRIBUTING.md),
which are the same as the ones in the main project
[there](https://github.com/annabelle-ep/dsci-310-group-04/blob/main/CONTRIBUTING.md).

## Code of Conduct

For community guidelines, see
[here](https://github.com/DSCI-310/dsci-310-group-04-pkg/blob/main/CODE_OF_CONDUCT.md),
again, mirrored in the main project
[there](https://github.com/annabelle-ep/dsci-310-group-04/blob/main/CODE_OF_CONDUCT.md).

## License

This repository uses the MIT license, for more details please view
[this](https://github.com/DSCI-310/dsci-310-group-04-pkg/blob/main/LICENSE.md)
