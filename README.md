
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

You can install the development version of `dexid` from GitHub with:

``` r
pak::pak("schochastics/dexid")
```

## Example

The main function `dexid()` generates random identifiers by combining
adjectives with Pokémon names. By default, it generates identifiers in
`snake_case`, but you can customize the case style, number of used
adjectives, and whether to add random digits.

``` r
library(dexid)
set.seed(1234)

# Generate 5 basic snake_case IDs
dexid(5)
#> [1] "wild_enamorus"    "similar_landorus" "tame_garganacl"   "shiny_bibarel"   
#> [5] "jumbo_kleavor"

# Generate 5 IDs with 2 adjectives for more uniqueness
dexid(5, n_adj = 2)
#> [1] "bitter_tangible_krokorok"        "misguided_envious_scovillain"   
#> [3] "substantial_productive_frigibax" "disgusting_concerned_rotom"     
#> [5] "improbable_adorable_zweilous"

# Generate 5 Title Case IDs
dexid(5, case = "title")
#> [1] "Quarrelsome Okidogi"       "Incompatible Crabominable"
#> [3] "Tedious Azurill"           "Bulky Mudkip"             
#> [5] "Spiteful Slowpoke"

# Generate 5 IDs with random digits
dexid(5, add_digits = TRUE)
#> [1] "unknown_sigilyph_4590"  "educated_flareon_4629"  "mammoth_tinkaton_9346" 
#> [4] "elastic_scyther_2901"   "quarterly_lampent_9737"

# Generate 5 IDs restrict to specific generation(s)
dexid(5, gen = 1)
#> [1] "rotten_weepinbell"   "delirious_raticate"  "liquid_victreebel"  
#> [4] "insistent_poliwhirl" "fumbling_drowzee"
```

The package includes 1347 adjectives and 1025 Pokémon names, allowing
for 1,380,675 unique combinations with one adjective and 1,859,769,225
unique combinations with two adjectives.

## Sentences

The function `dex_sentence()` generates random sentence of Pokémon using
a specific move that can be used as an identifier.

``` r
dex_sentence(5)
#> [1] "Envious hippopotas uses water gun greatly"
#> [2] "Growing petilil uses lovely kiss really"  
#> [3] "Glum cobalion uses bubble beam wetly"     
#> [4] "Phony sharpedo uses soft boiled fondly"   
#> [5] "Arid zapdos uses aurora beam fondly"
```

The sentence structure is always adjective + Pokémon name + “uses” +
move + adverb. There are 75,405,565,125 unique sentences available.
