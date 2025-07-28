sample_digits <- function(n, m = 4) {
  if (m < 1) {
    stop("Number of digits must be at least 1.")
  }
  max_val <- 10^m - 1
  sprintf(paste0("%0", m, "d"), sample(0:max_val, n, replace = TRUE))
}

sample_words <- function(words, n, m = 1) {
  replicate(n, {
    paste(sample(words, m, replace = TRUE), collapse = " ")
  })
}

to_case <- function(string, case, ...) {
  if (case != "kebab") {
    snakecase::to_any_case(string, case = case, ...)
  } else {
    gsub(" ", "-", string)
  }
}

#' Generate Random IDs Using Adjectives and Pokemon Names
#'
#' @description
#' Creates unique identifiers by combining random adjectives with Pokemon names
#' in different formats.
#'
#' @param n An integer. Number of IDs to generate.
#' @param n_adj An integer. Number of adjectives to use. Defaults to 1.
#' @param gen vector of integers. The generations of Pokemon to use. Defaults to all generations.
#' @param case Character string. The case style to use. Supports all styles implemented in the package `snakecase` and kebab-case.
#' @param add_digits Logical. If `TRUE`, adds a random digit to the end of each ID. Defaults to `FALSE`.
#' @param ... other arguments passed to `snakecase::to_any_case()`.
#'
#' @return A character vector of length `n` containing the generated IDs.
#'
#' @examples
#'# Generate 5 basic snake_case IDs
#'dexid(5)
#'# Generate 5 IDs with more adjectives
#'dexid(5, n_adj = 2)
#'
#'# Generate 5 Title Case IDs
#'dexid(5, case = "title")
#'
#'# Generate 5 IDs with random digits
#'dexid(5, add_digits = TRUE)
#'
#'# Generate 5 IDs restrict to specific generation(s)
#'dexid(5, gen = 1)
#' @export
dexid <- function(
  n,
  n_adj = 1,
  gen = 1:9,
  case = c(
    "snake",
    "kebab",
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
  case <- match.arg(case)
  if (!all(gen %in% 1:9)) {
    stop("gen must contain values between 1 and 9.")
  }
  if (n_adj < 1) {
    stop("n_adj must be at least 1.")
  }
  adj_sample <- sample_words(adjectives, n, m = n_adj)
  pokemon_gen <- pokemon[generation %in% gen]
  poke_sample <- sample_words(pokemon_gen, n)

  if (add_digits) {
    poke_sample <- paste(poke_sample, sample_digits(n))
  }

  dex <- paste0(adj_sample, " ", poke_sample)
  to_case(dex, case = case, ...)
}

#' Generate Random sentences of Pokémon using moves
#'
#' @inheritParams dexid
#' @return A character vector of length `n` containing the generated sentences.
#'
#' @examples
#' dex_sentence(3)
#' dex_sentence(5)
#'
#' @export
dex_sentence <- function(
  n,
  gen = 1:9,
  case = c(
    "sentence",
    "snake",
    "kebab",
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
    "random",
    "title"
  ),
  ...
) {
  case <- match.arg(case)
  if (!all(gen %in% 1:9)) {
    stop("gen must contain values between 1 and 9.")
  }
  adj_sample <- sample_words(adjectives, n)
  pokemon_gen <- pokemon[generation %in% gen]
  poke_sample <- sample_words(pokemon_gen, n)
  adverb_sample <- sample_words(adverbs, n)
  move_sample <- sample_words(moves, n)
  sentence <- paste0(
    adj_sample,
    " ",
    poke_sample,
    " uses ",
    move_sample,
    " ",
    adverb_sample
  )
  to_case(sentence, case = case, ...)
}
