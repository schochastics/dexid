adjectives <- readLines(
  "https://gist.githubusercontent.com/hugsy/8910dc78d208e40de42deb29e62df913/raw/eec99c5597a73f6a9240cab26965a8609fa0f6ea/english-adjectives.txt"
)
pokemon <- readLines(
  "https://gist.githubusercontent.com/killshot13/5b45c0089c3b1a19028bec38aad8fa46/raw/10d30ab4a74ac7e083a3cc6135c605379ddee952/pokemon.txt"
)

library(rvest)
url <- "https://bulbapedia.bulbagarden.net/wiki/Generation"
doc <- read_html(url)
generations <- doc |>
  html_elements("td:nth-child(2)") |>
  html_text() |>
  minty::parse_number()
generation <- rep(1:9, generations)

usethis::use_data(
  adjectives,
  pokemon,
  generation,
  internal = TRUE,
  overwrite = TRUE
)
