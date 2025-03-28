% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fetch_osm.R
\name{fetch_osm}
\alias{fetch_osm}
\title{Classify fire points based on OpenStreetMap land cover types}
\usage{
fetch_osm(
  firms_sf,
  feature_types = c("natural", "agriculture", "urban", "industrial", "military", "waste",
    "parks", "airport"),
  must_be_in = TRUE,
  return_osm = FALSE
)
}
\arguments{
\item{firms_sf}{An \code{sf} object with fire locations (point geometry, typically from \code{fetch_firms()}).}

\item{feature_types}{Character vector of OSM feature categories to classify by.
Options are \code{"natural"}, \code{"agriculture"}, \code{"urban"}, \code{"industrial"}, \code{"military"}, \code{"waste"}, \code{"parks"}, \code{"airport"}.}

\item{must_be_in}{Logical. If \code{TRUE} (default), only fires matching one of the selected types are returned.
If \code{FALSE}, fires not matching any selected feature types are returned.}

\item{return_osm}{Logical. If \code{TRUE}, the function returns both the classified fires and the queried OSM polygons
as a list. Default is \code{FALSE}.}
}
\value{
Either a filtered \code{sf} object of fire points with a new \code{fire_type} column, or a list with \code{firms} and \code{osm} if \code{return_osm = TRUE}.
}
\description{
This function uses OpenStreetMap (OSM) data to classify fire detections (e.g., from FIRMS) into user-defined
land cover categories (e.g., natural, urban, industrial). Each fire point is buffered and grouped into clusters,
then OSM is queried for relevant land use features around those clusters. Fires are then classified based on
whether they intersect with the queried features.
}
