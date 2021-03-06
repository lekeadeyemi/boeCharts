% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{palette_names}
\alias{palette_names}
\title{Get names of available palettes}
\usage{
palette_names(
  type = c("all", "standard", "harmonious", "vibrant", "diverging")
)
}
\arguments{
\item{type}{type of palette ("all" by default)}
}
\value{
character vector
}
\description{
Display available palette names, optionally specifying
a subset of palettes to show.
}
\examples{
palette_names(type = "vibrant")
}
