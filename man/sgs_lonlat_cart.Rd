% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sgs_set_gcs.R
\encoding{UTF-8}
\name{sgs_lonlat_cart}
\alias{sgs_lonlat_cart}
\title{Geodetic Coordinate System (GCS) in polar coordinates to cartesian
coordinates}
\usage{
sgs_lonlat_cart(x)
}
\arguments{
\item{x}{A \code{sgs_points} object with coordinates expressed as Longitude
and Latitude (and Ellipsoid Height if they are 3D points).}
}
\value{
An object of class \code{sgs_points} whose coordinates are defined as a
x, y and z cartesian vector.
}
\description{
Converts a GCS expressed in Longitude and Latitude
(and Ellipsoid Height) to an Earth-centered Earth-fixed (ECEF) cartesian
coordinate system.
}
\details{
Currently converts from EPSGs \code{4258} and \code{4937} to \code{4936} or
from EPSGs \code{4326}, \code{4979} to \code{4978}
}
\examples{
p <- sgs_points(list(-5.00355049, 56.7968571), epsg=4326)
p.xyz <- sgs_lonlat_cart(p) #Cartesian coordinates
}
\seealso{
\code{\link{sgs_points}}, \code{\link{sgs_lonlat_bng}},
\code{\link{sgs_set_gcs}}.
}
