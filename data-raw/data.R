adjectives <- readLines(
  "https://gist.githubusercontent.com/hugsy/8910dc78d208e40de42deb29e62df913/raw/eec99c5597a73f6a9240cab26965a8609fa0f6ea/english-adjectives.txt"
) |>
  stringr::str_trim()


adverbs <- readLines(
  "https://raw.githubusercontent.com/janester/mad_libs/refs/heads/master/List%20of%20Adverbs.txt"
) |>
  stringr::str_trim()

pokemon <- readLines(
  "https://gist.githubusercontent.com/killshot13/5b45c0089c3b1a19028bec38aad8fa46/raw/10d30ab4a74ac7e083a3cc6135c605379ddee952/pokemon.txt"
) |>
  stringr::str_trim()

pokemon <- stringr::str_replace_all(pokemon, "\\.", "") |> stringr::str_trim()

lines <- readLines(
  "https://raw.githubusercontent.com/pcattori/pokemon/refs/heads/master/pokemon/data/moves.json"
)
wrapped <- paste0("[", paste(lines, collapse = ","), "]")
moves_json <- jsonlite::fromJSON(wrapped)
moves <- moves_json$name |> stringr::str_trim()


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
  adverbs,
  pokemon,
  moves,
  generation,
  internal = TRUE,
  overwrite = TRUE
)
