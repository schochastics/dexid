
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
#> [1] "outlandish_slowbro" "scornful_swoobat"   "tempting_scrafty"  
#> [4] "snoopy_kleavor"     "unhealthy_hoppip"

# Generate 5 Title Case IDs
dexid(5, case = "title")
#> [1] "Uniform Clefable"    "Noteworthy Basculin" "Wealthy Rhydon"     
#> [4] "Composed Arceus"     "United Jigglypuff"

# Generate 5 IDs with random digits
dexid(5, add_digits = TRUE)
#> [1] "discrete_tinkaton_4919"     "unlawful_boldore_6585"     
#> [3] "cylindrical_electrike_8240" "starchy_dialga_7858"       
#> [5] "amazing_lurantis_4756"

#Restrict to specific generation
dexid(5, gen = 1)
#> [1] "creepy_onix"       "shabby_magnemite"  "our_magneton"     
#> [4] "prestigious_arbok" "safe_rapidash"
```

The package supports all case styles implemented in the `snakecase`
package.
