
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
#> [1] "monumental_druddigon" "fuzzy_arctibax"       "red_komala"          
#> [4] "unwitting_sawsbuck"   "firsthand_bulbasaur"

# Generate 5 Title Case IDs
dexid(5, case = "title")
#> [1] "Those Eevee"         "Stupendous Cetoddle" "Loose Dunsparce"    
#> [4] "Aged Crocalor"       "Rich Makuhita"

# Generate 5 IDs with random digits
dexid(5, add_digits = TRUE)
#> [1] "pointed_dubwool_3956"  "corrupt_lokix_8968"    "back_larvesta_5180"   
#> [4] "arid_ribombee_8875"    "giddy_scatterbug_8692"
```

The package supports all case styles implemented in the `snakecase`
package.
