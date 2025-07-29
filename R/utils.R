convert_case <- function(
  words,
  style = "kebab",
  delimiter = NULL,
  split_words = TRUE
) {
  convert_single <- function(phrase) {
    if (split_words) {
      tokens <- stringr::str_split(stringr::str_trim(phrase), "\\s+")[[1]]
    } else {
      tokens <- phrase
    }
    tokens <- stringr::str_to_lower(tokens)

    if (style == "kebab") {
      stringr::str_c(tokens, collapse = "-")
    } else if (style == "snake") {
      stringr::str_c(tokens, collapse = "_")
    } else if (style == "camel") {
      paste0(
        tokens[1],
        stringr::str_c(stringr::str_to_title(tokens[-1]), collapse = "")
      )
    } else if (style == "caps") {
      stringr::str_to_upper(stringr::str_c(tokens, collapse = " "))
    } else if (style == "sentence") {
      sentence <- stringr::str_c(tokens, collapse = " ")
      stringr::str_c(
        stringr::str_to_upper(stringr::str_sub(sentence, 1, 1)),
        stringr::str_sub(sentence, 2)
      )
    } else if (style == "custom" && !is.null(delimiter)) {
      stringr::str_c(tokens, collapse = delimiter)
    } else {
      stop("Invalid style or missing delimiter for custom style.")
    }
  }

  vapply(words, convert_single, character(1), USE.NAMES = FALSE)
}
