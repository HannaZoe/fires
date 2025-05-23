% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_fire_frequency.R
\name{plot_fire_frequency}
\alias{plot_fire_frequency}
\title{Plot fire frequency by cell}
\usage{
plot_fire_frequency(fire_freq_sf, base_map = NULL)
}
\arguments{
\item{fire_freq_sf}{An sf object returned by \code{calculate_fire_frequency()}.}

\item{base_map}{Optional. Background map (sf object or path). Defaults to Natural Earth.}
}
\value{
A ggplot object
}
\description{
Visualizes the output of \code{calculate_fire_frequency()} as points scaled by number of fires.
}
