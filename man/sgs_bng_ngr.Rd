% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sgs_ngr.R
\encoding{UTF-8}
\name{sgs_bng_ngr}
\alias{sgs_bng_ngr}
\title{BNG Easting/Northing to National Grid References (NGR)}
\usage{
sgs_bng_ngr(x, digits = 10)
}
\arguments{
\item{x}{A \code{sgs_points} object with coordinates defined as
\code{epsg=27700} or \code{epsg=7405}.}

\item{digits}{Numeric. It defines the precision of the resulting grid
references.}
}
\value{
A list with at least one element named 'ngr'.
}
\description{
Converts BNG Easting/Northing coordinates to National Grid References
}
\details{
All resulting grid references will have 10 digits (1m × 1m square) by
default. In order to reduce the output precision change the digits parameter
accordingly. When \code{digits=0}, it returns the numeric format of the grid
references.

Note that rather than being rounded, national grid references are truncated
when converting to less precise references (as the OS system demands). By
doing so, the grid reference refers to the lower left corner of the relevant
square - to ensure the more precise polygon will remain within the boundaries
of the less precise polygon.
}
\examples{
sgs <- sgs_points(list(x=247455, y=706338, name="Ben Venue"),
coords=c("x", "y"), epsg=27700)
grid10 <- sgs_bng_ngr(sgs)
grid8 <- sgs_bng_ngr(sgs, digits=8)
#and notice the truncating, not rounding, of grid8 regarding grid10.
}
\seealso{
\code{\link{sgs_points}}, \code{\link{sgs_ngr_bng}}.
}
