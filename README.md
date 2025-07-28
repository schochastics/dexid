
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
# Generate 5 basic snake_case IDs
dexid(5)
#> [1] "perfect_panpour"     "obvious_ferrothorn"  "juvenile_meditite"  
#> [4] "delightful_oshawott" "granular_fennekin"

# Generate 5 Title Case IDs
dexid(5, case = "title")
#> [1] "Kaleidoscopic Jangmo o" "Tricky Excadrill"       "Pricey Rockruff"       
#> [4] "Huge Krokorok"          "Glamorous Wynaut"

# Generate 5 IDs with random digits
dexid(5, add_digits = TRUE)
#> [1] "agitated_seviper_8023"     "waterlogged_clamperl_4949"
#> [3] "actual_vanillite_5543"     "coarse_mr_mime_6021"      
#> [5] "gloomy_koraidon_9430"

# Restrict to specific generation
dexid(5, gen = 1)
#> [1] "novel_seadra"         "punctual_golbat"      "complicated_shellder"
#> [4] "awkward_zapdos"       "honorable_gloom"
```

The package supports all case styles implemented in the `snakecase`
package.
