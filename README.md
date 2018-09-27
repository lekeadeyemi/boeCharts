<!-- README.md is generated from README.Rmd. Please edit that file -->
Overview
--------

The **dsdthemes** R package helps the user apply Bank styles to charts created with the R package [ggplot2](https://github.com/hadley/ggplot2), including those found in:

-   [BoE website](https://www.bankofengland.co.uk/statistics/visual-summaries/effective-interest-rates)
-   [DSD Statistical Publications](https://www.bankofengland.co.uk/-/media/boe/files/statistics/money-and-credit/2018/february-2018.pdf?la=en&hash=D5A6531045C648B4169D5FD480723AE4CFBD75F9)

Installation
------------

Using **dsdthemes** also requires the prerequisites described below.

1.  R & R Studio, installed from the [software catalogue](http://sccm-wl-mgt-01/CMApplicationCatalog)

You can install **dsdthemes** as follows (from an R session):

``` r
# install devtools (required for installation)
if (!require("devtools")) {
    install.packages("devtools")
}

# install dsdthemes from collaborate
install.packages("http://collaborate/workspaces/RHelpCentre/R%20documents/Packages/dsdthemes_0.2.0.zip", repos = NULL, type = "binary")

# install dsdthemes' dependencies from CRAN
devtools::install_deps(find.package("dsdthemes"))
```

Using dsdthemes
---------------

``` r
# load packages
library(dsdthemes)
library(ggplot2)

# create chart
ggplot(nfc_deposits, aes(x = date, y = pct_change, colour = industry)) +
  geom_line(size = 1) +
  geom_hline(yintercept = 0, size = 0.5) +
  labs(title = "Deposits by selected non-financial industries",
       y="%\nchanges\non a year\nearlier", x=NULL) +
  theme_minimal() +
  # apply boe palette
  scale_colour_boe(palette = "boe") +
  # apply MCG theme
  theme_mcg_pub() +
  # apply axis settings
  scale_y_continuous(position = "right", limits = c(-5, 20), breaks = seq(-5, 20, 5), expand = c(0, 0)) +
  scale_x_datetime(date_breaks = "3 months", labels = boe_date_labels(), expand = c(0, 0))
```

![](figures/example-1.png)

For more detailed guidance, refer to the package [vignette](https://tfsapp-liv/tfs/DefaultCollection/Bankwide%20Shared%20Analytical%20Code/_versionControl?path=%24%2FBankwide%20Shared%20Analytical%20Code%2FR%20Packages%2Fdsdthemes%2Finst%2Fdoc%2Fexamples.Rmd&_a=contents) (also included in the package documentation, accessible from R).

Collaborators
-------------

If you want to contribute to the package:

-   I observed a lot of the principles in Hadley Wickham's [R Packages book](http://r-pkgs.had.co.nz/)
-   Follow the Git fork/pull request model, or [contact Ewen](mailto:ewen.henderson@bankofengland.co.uk)