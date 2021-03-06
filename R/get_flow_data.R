#' Get flow data for a given location
#'
#' Returns a vector (if direction is "to" or "from") or a list of 2 elements
#' (if direction is "both") to and/or from the specified location.
#'
#' @param ef An \code{epiflows} object.
#' @param code A character string denoting location code.
#' @param direction If "to" or "from", the function returns a vector
#' of flows to or from the location, respectively.
#' If set to "both" - a two-element list with flows both to and from
#' the location.
#' 
#' @examples
#' flows <- do.call(make_epiflows, Mex_travel_2009)
#' get_flow_data(flows, "MEX", direction = "both")
#'
#' @author Pawel Piatkowski
#'
#' @export
get_flow_data <- function(ef, code, direction = "both") {
  if (length(code) != 1) {
    stop("`code` must be a vector of length 1")
  }
  if (!code %in% get_codes(ef)) {
    stop("Code not found: ", code)
  }
  from <- unlist(ef$flows[code, ])
  to <- ef$flows[[code]]
  names(to) <- rownames(ef$flows)

  switch(
    direction,
    "to" = to,
    "from" = from,
    "both" = list(to = to, from = from),
    stop("`direction` should be one of: to, from, both")
  )
}

