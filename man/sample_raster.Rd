% Generated by roxygen2 (4.0.2): do not edit by hand
\name{sample_raster}
\alias{sample_raster}
\title{Generate random sample polygons from a raster layer, optionally with
stratification}
\usage{
sample_raster(x, size, strata = NULL, side = xres(x), fields = c(),
  na.rm = TRUE, exp = 5)
}
\arguments{
\item{x}{a \code{Raster*}}

\item{size}{the sample size (number of sample polygons to return)}

\item{strata}{(optional) a \code{RasterLayer} of integers giving the strata
of each pixel (for example, a classified image)}

\item{side}{desired length for each side of the sample polygon (units of the
input \code{Raster*}, usually meters)}

\item{fields}{a list of fields to include in the output
\code{SpatialPolygonsDataFrame} (such as a "class" field if you will be
digitizing classes).}

\item{na.rm}{whether to remove pixels with NA values from the sample}

\item{exp}{multiplier used to draw larger initial sample to account for the
loss of sample polygons lost because they contain NAs, and, for stratified
sampling, to account for classes that occur very infrequently in the data.
Increase this value if the final sample has fewer sample polygons than
desired.}
}
\value{
a \code{SpatialPolygonsDataFrame}
}
\description{
Useful for gathering training data for an image classification. With the
default settings, the output polygons will be perfectly aligned with the
pixels in the input raster.
}
\examples{
\dontrun{
set.seed(0)
L5TSR_1986_b1 <- raster(L5TSR_1986, layer=1)
training_polys <- sample_raster(L5TSR_1986_b1, 30,
                                  side=6*xres(L5TSR_1986_b1))
plot(L5TSR_1986_b1)
plot(training_polys, add=TRUE)
}
}

