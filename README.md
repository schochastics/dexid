
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dexid <img src="man/figures/logo.png" align="right" height="139" alt="" />

<!-- badges: start -->

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
#> [1] "wild_enamorus"    "similar_landorus" "tame_garganacl"   "shiny_bibarel"   
#> [5] "jumbo_kleavor"

# Generate 5 Title Case IDs
dexid(5, case = "title")
#> [1] "Bitter Duraludon"       "Tangible Lotad"         "Misguided Azumarill"   
#> [4] "Envious Gothita"        "Substantial Charmander"

# Generate 5 IDs with random digits
dexid(5, add_digits = TRUE)
#> [1] "ill_fated_rotom_1013" "useful_zweilous_4835" "rough_ursaluna_3911" 
#> [4] "untidy_duosion_0297"  "shabby_lapras_0257"

# Restrict to specific generation
dexid(5, gen = 1)
#> [1] "awkward_vaporeon"  "unknown_venomoth"  "educated_venomoth"
#> [4] "mammoth_primeape"  "elastic_flareon"
```

The package supports all case styles implemented in the `snakecase`
package.
