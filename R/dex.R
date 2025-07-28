#' Generate Random IDs Using Adjectives and Pokemon Names
#'
#' @description
#' Creates unique identifiers by combining random adjectives with Pokemon names
#' in different formats.
#'
#' @param n An integer. Number of IDs to generate.
#' @param style Character string. The case style to use (currently only supports "snake_case").
#'
#' @return A character vector of length `n` containing the generated IDs.
#'
#' @examples
#' dexid(3)
#' dexid(5)
#'
#' @export
dexid <- function(n, style = "snake_case") {
  adj_sample <- adjectives[sample_int(1:length(adjectives), n, replace = TRUE)]
  poke_sample <- pokemon[sample_int(1:length(pokemon), n, replace = TRUE)]
  dex <- paste0(adj_sample, "_", poke_sample)
  dex
}
