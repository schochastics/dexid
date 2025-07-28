sample_digits <- function(n, m = 4) {
  if (m < 1) {
    stop("Number of digits must be at least 1.")
  }
  max_val <- 10^m - 1
  sprintf(paste0("%0", m, "d"), sample(0:max_val, n, replace = TRUE))
}

#' Generate Random IDs Using Adjectives and Pokemon Names
#'
#' @description
#' Creates unique identifiers by combining random adjectives with Pokemon names
#' in different formats.
#'
#' @param n An integer. Number of IDs to generate.
#' @param case Character string. The case style to use. Supports all styles implemented in the package `snakecase`.
#' @param add_digits Logical. If `TRUE`, adds a random digit to the end of each ID. Defaults to `FALSE`.
#' @param ... other arguments passed to `snakecase::to_any_case()`.
#'
#' @return A character vector of length `n` containing the generated IDs.
#'
#' @examples
#' dexid(3)
#' dexid(5)
#'
#' @export
dexid <- function(
  n,
  case = c(
    "snake",
    "small_camel",
    "big_camel",
    "screaming_snake",
    "parsed",
    "mixed",
    "lower_upper",
    "upper_lower",
    "swap",
    "all_caps",
    "lower_camel",
    "upper_camel",
    "internal_parsing",
    "none",
    "flip",
    "sentence",
    "random",
    "title"
  ),
  add_digits = FALSE,
  ...
) {
  adj_sample <- adjectives[sample.int(
    length(adjectives),
    size = n,
    replace = TRUE
  )]
  poke_sample <- pokemon[sample.int(
    length(pokemon),
    size = n,
    replace = TRUE
  )]
  if (add_digits) {
    poke_sample <- paste0(poke_sample, sample_digits(n))
  }
  dex <- paste0(adj_sample, " ", poke_sample)
  snakecase::to_any_case(dex, case = case, ...)
}
