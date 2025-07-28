
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dexid

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
#> [1] "anguished_huntail"   "hilarious_lillipup"  "naive_zweilous"     
#> [4] "neighboring_stufful" "glaring_drifblim"

# Generate 5 Title Case IDs
dexid(5, case = "title")
#> [1] "Colorless Froslass" "Suburban Totodile"  "Youthful Cloyster" 
#> [4] "Any Sealeo"         "Grizzled Drapion"

# Generate 5 IDs with random digits
dexid(5, add_digits = TRUE)
#> [1] "notable_minun_6209"       "crushing_gastly_5938"    
#> [3] "wasteful_clodsire_1123"   "bubbly_raboot_3538"      
#> [5] "unfolded_incineroar_5707"
```

The package supports all case styles implemented in the `snakecase`
package.
