\name{readCity}
\alias{readCity}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Read data for a city}
\description{
  Read/download weather, air pollution, and mortality data for a given
  city in the NMMAPS database
}
\usage{
readCity(name, collapseAge = FALSE, asDataFrame = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{name}{character, abbreviated name of a city}
  \item{collapseAge}{logical, should age categories be collapsed?}
  \item{asDataFrame}{logical, should a data frame be returned?}
}
\details{
  If \code{asDataFrame} is \code{FALSE}, then a list with two data
  frames named "exposure" and "outcome" is returned.  Otherwise, a
  single data frame with all the data merged together is returned.
}
\value{
  A data frame or a list with "exposure" and "outcome" data frames.
}
\author{Roger D. Peng \email{rpeng@jhsph.edu}}

\examples{
\dontrun{
initDB()
data <- readCity("akr")  ## Read/download Akron, OH data
data1 <- readCity("akr", collapseAge = TRUE)  ## Read from cache
nrow(data)
nrow(data1)
}
}
\keyword{datasets}

