% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/formatting.R
\name{format_pct}
\alias{format_pct}
\title{Formatter function to display values as percentages and return as strings}
\usage{
format_pct(dp, separate_with_space = F)
}
\arguments{
\item{dp}{Number of decimal places to format to}

\item{separate_with_space}{Whether to put a space between the number and the
percent sign}
}
\value{
a character vector
}
\description{
Helper function to format a vector of values as percentages.
}
\examples{

library(ggplot2)

ggplot(mtcars, aes(x = disp, y = wt, color = carb)) +
 geom_point() +
 scale_y_continuous(
 labels = format_pct(dp = 2), 
 position = "right"
 )
}
