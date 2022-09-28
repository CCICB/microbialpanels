
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

``` r
library(microbialpanels)

# List available panels
panels_available()
#> [1] "HumanMicrobiomeLarge"     "OralMicrobiome"          
#> [3] "CancerViruses"            "CommonNosocomial"        
#> [5] "FungalPathogens"          "TorqueTenoVirusesSpecies"
#> [7] "TorqueTenoVirusesGenus"

# Load a panel of interest
panels_load('CancerViruses')
#> # A tibble: 15 × 7
#>    ScientificName                 `Common Name`  Type   Taxid Rank  Notes Source
#>    <chr>                          <chr>          <chr>  <dbl> <chr> <chr> <chr> 
#>  1 Human gammaherpesvirus 8       Kaposi's sarc… dsDNA 3.73e4 spec… <NA>  https…
#>  2 Human gammaherpesvirus 4       Epstein-Barr … dsDNA 1.04e4 spec… <NA>  https…
#>  3 Human betaherpesvirus 6A       Herpesvirus t… dsDNA 3.26e4 spec… <NA>  https…
#>  4 Human betaherpesvirus 6B       Herpesvirus t… dsDNA 3.26e4 spec… <NA>  https…
#>  5 Human betaherpesvirus 7        HHV-7          dsDNA 1.04e4 spec… Not … <NA>  
#>  6 Primate T-lymphotropic virus 1 <NA>           retr… 1.94e5 spec… <NA>  https…
#>  7 Human papillomavirus           Human papillo… dsDNA 1.06e4 spec… <NA>  https…
#>  8 Hepatitis B virus              HBV            part… 1.04e4 spec… <NA>  https…
#>  9 Hepacivirus C                  Hepatitis C V… ssRNA 1.11e4 spec… <NA>  https…
#> 10 Merkel cell polyomavirus       <NA>           dsDNA 4.94e5 no r… <NA>  https…
#> 11 Betapolyomavirus macacae       Simian virus … dsDNA 1.89e6 spec… <NA>  https…
#> 12 Betapolyomavirus secuhominis   Human polyoma… dsDNA 1.89e6 spec… <NA>  https…
#> 13 Betapolyomavirus hominis       BK virus       dsDNA 1.89e6 spec… <NA>  https…
#> 14 Cytolomegalovirus              <NA>           dsDNA 1.04e4 genus <NA>  https…
#> 15 Alphatorquevirus               <NA>           ssDNA 6.87e5 genus Mark… https…
```

All panels have the following columns:

-   ScientificName

-   Taxid

-   Type

-   Rank

Panel tables may have additional columns that vary from one panel to
another
