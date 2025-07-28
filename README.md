
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dexid <img src="man/figures/logo.png" align="right" height="139" alt="" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/schochastics/dexid/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/schochastics/dexid/actions/workflows/R-CMD-check.yaml)
[![CRAN
status](https://www.r-pkg.org/badges/version/dexid)](https://CRAN.R-project.org/package=dexid)
<!-- badges: end -->

Generate memorable identifiers by combining adjectives with Pokémon
names. Inspired by codename-style ID generators, this package creates
unique and fun labels for objects, files, or projects.

## Installation

You can install the development version of dexid from GitHub with:

``` r
pak::pak("schochastics/dexid")
```

## Example

The main function `dexid()` generates random identifiers by combining
adjectives with Pokémon names:

``` r
library(dexid)
set.seed(1234)

# Generate 5 basic snake_case IDs
dexid(5)
#> [1] "wild_namorus"    "similar_andorus" "tame_arganacl"   "shiny_ibarel"   
#> [5] "jumbo_leavor"

# Generate 5 Title Case IDs
dexid(5, case = "title")
#> [1] "Bitter Uraludon"       "Tangible Otad"         "Misguided Zumarill"   
#> [4] "Envious Othita"        "Substantial Harmander"

# Generate 5 IDs with random digits
dexid(5, add_digits = TRUE)
#> [1] "ill_fated_otom_1013" "useful_weilous_4835" "rough_rsaluna_3911" 
#> [4] "untidy_uosion_0297"  "shabby_apras_0257"

# Restrict to specific generation
dexid(5, gen = 1)
#> [1] "awkward_aporeon"  "unknown_enomoth"  "educated_enomoth" "mammoth_rimeape" 
#> [5] "elastic_lareon"
```

The package supports all case styles implemented in the `snakecase`
package.
