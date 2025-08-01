% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dex.R
\name{dex_sentence}
\alias{dex_sentence}
\title{Generate Random sentences of Pokémon using moves}
\usage{
dex_sentence(
  n,
  gen = 1:9,
  case = c("sentence", "snake", "kebab", "camel", "caps", "custom"),
  ...
)
}
\arguments{
\item{n}{An integer. Number of IDs to generate.}

\item{gen}{vector of integers. The generations of Pokemon to use. Defaults to all generations.}

\item{case}{Character string. The case style to use. Supported cases are \code{snake}, \code{kebab}, \code{camel}, \code{caps}, sentence and custom. If \code{case} is set to \code{custom}, a \code{delimiter} argument must be provided.}

\item{...}{If \code{case} is set to \code{custom}, a \code{delimiter} argument must be provided.}
}
\value{
A character vector of length \code{n} containing the generated sentences.
}
\description{
Generate Random sentences of Pokémon using moves
}
\examples{
dex_sentence(3)
dex_sentence(5)

}
