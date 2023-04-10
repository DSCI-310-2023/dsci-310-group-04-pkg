
<!-- README.md is generated from README.Rmd. Please edit that file -->

# genreclassifier

<!-- badges: start -->

[![R-CMD-check](https://github.com/DSCI-310/dsci-310-group-04-pkg/workflows/R-CMD-check/badge.svg)](https://github.com/DSCI-310/dsci-310-group-04-pkg/actions)
[![test-coverage](https://github.com/DSCI-310/dsci-310-group-04-pkg/workflows/test-coverage/badge.svg)](https://github.com/DSCI-310/dsci-310-group-04-pkg/actions)
[![codecov](https://codecov.io/gh/DSCI-310/dsci-310-group-04-pkg/branch/main/graph/badge.svg?token=Hx34xKHsz9)](https://codecov.io/gh/DSCI-310/dsci-310-group-04-pkg)
<!-- badges: end -->

## Overview

genreclassifier is a package which includes functions that aim to help
cut down redundant code chunks from the project linked above.

-   `classy_read()` Prepares a dataframe for classification
-   `count_proportion()` Creates a dataframe counting the relative
    proportions of unique values in a specified column
-   `create_faceted_hist_plot()` Creates a faceted histogram comparing
    the distributions of song feature values across different
    “playlist_genre” subgroups

As these functions were intended to be used specifically for our
project, `classy_read()` and `create_faceted_hist_plot()` contain quirks
in their implementation that may make them non-applicable for more
general uses. While `count_proportion()` is more generalizable, it is
recommended to use vignette(“genreclassifier”) to learn more about the
functions before using them.

## Installation

``` r
# To install genreclassifier, in the r console input:
install.packages("genreclassifier")
```

## Contributing

## License
