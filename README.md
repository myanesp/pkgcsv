# `pkgcsv`: a R Package to easily export, transfer or migrate your installed R packages
<!-- badges: start -->
[![R-CMD-check](https://github.com/myanesp/pkgcsv/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/myanesp/pkgcsv/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

## What does this package do?
This package contains two functions: `exportpkg.csv()` and `installpkg.csv()`. 

The first one exports all your currently installed packages using the base function `installed.packages()` to a CSV file. E.g. `exportpkg.csv('my-exported-packages.csv')`. 

The second one allows you to import and install all the packages of that CSV file in an other R installation, checking first which packages are already installed in order to increase the efficiency of the process. E.g. `installpkg.csv('my-exported-packages.csv')`.

## Installation
```r
if (!require("remotes")) install.packages("remotes")
remotes::install_github("myanesp/pkgcsv")

# And then load into your current session
library(pkgcsv)
```

## Planned features
This is a very simple package that can help you to backup, migrate or transfer your installed packages to a new installation. Nonetheless, I would like to add features such as selecting which specific packages you want to install from the CSV instead of installing the whole file. If you want to too, feel free to fork this project and make a PR!
