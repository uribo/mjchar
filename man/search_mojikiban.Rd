% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/search.R
\name{search_mojikiban}
\alias{search_mojikiban}
\title{Search kanji on mojikiban}
\usage{
search_mojikiban(x, input_type)
}
\arguments{
\item{x}{kanji character or mjcode}

\item{input_type}{font or mjcode}
}
\description{
Search kanji on mojikiban
}
\examples{
search_mojikiban("\U74dc", input_type = "font")
search_mojikiban("MJ017521", "mjcode")
}
