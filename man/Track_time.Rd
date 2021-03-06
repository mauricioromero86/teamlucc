% Generated by roxygen2 (4.0.2): do not edit by hand
\name{Track_time}
\alias{Track_time}
\title{Instantiate a new Track_time object}
\usage{
Track_time(notify = print)
}
\arguments{
\item{notify}{a function to handle the string output from Track_time.  This
function should accept a string as an argument. Default is the
\code{\link{print}} function.}
}
\value{
Track_time object
}
\description{
Creates a new Track_time object for use in tracking and printing status the
running time of processes in an R script.
}
\examples{
timer <- Track_time()
print(timer)
}
\seealso{
\code{\link{start_timer}}, \code{\link{stop_timer}}
}

