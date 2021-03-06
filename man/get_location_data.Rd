% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_location_data.R
\name{get_location_data}
\alias{get_location_data}
\title{Get location data}
\usage{
get_location_data(ef, codes)
}
\arguments{
\item{ef}{An \code{epiflows} object}

\item{codes}{A character vector of location codes.}
}
\value{
A dataframe structured identically to the input location data,
but limited to the specified locations.
}
\description{
Returns data for the specified location(s).
}
\examples{
flows <- do.call(make_epiflows, Mex_travel_2009)
get_location_data(flows, "MEX")

}
\author{
Pawel Piatkowski
}
