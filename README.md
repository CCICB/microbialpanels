
<!-- README.md is generated from README.Rmd. Please edit that file -->

# microbialpanels

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of microbialpanels is to provide curated lists of microbes
relevant to specific applications

## Installation

You can install the development version of microbialpanels like so:

``` r
# install.packages("remotes") # Install remotes package if you haven't already got it
remotes::install_github("CCICB/microbialpanels")
```

## Usage

This is a basic example which shows you how to solve a common problem:

``` r
library(microbialpanels)

# List available panels
panels_available()
#> [1] "HumanMicrobiomeLarge"     "OralMicrobiome"          
#> [3] "CancerViruses"            "TorqueTenoVirusesSpecies"
#> [5] "TorqueTenoVirusesGenus"

# Load a panel of interest
panels_available()
#> [1] "HumanMicrobiomeLarge"     "OralMicrobiome"          
#> [3] "CancerViruses"            "TorqueTenoVirusesSpecies"
#> [5] "TorqueTenoVirusesGenus"
```
