% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_codes.R
\name{get_codes}
\alias{get_codes}
\title{Get location codes}
\usage{
get_codes(ef)
}
\arguments{
\item{ef}{An \code{epiflows} object.}
}
\value{
A character vector.
}
\description{
Returns all location codes from an epiflows object.
}
\examples{
flows <- do.call(make_epiflows, Mex_travel_2009)
get_codes(flows)

}
\author{
Pawel Piatkowski
}
