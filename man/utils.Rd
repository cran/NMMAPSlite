\name{getMetaData}
\alias{utils}
\alias{getMetaData}
\alias{listCities}

\title{Utilities for obtaining metadata}
\description{
  Utilities for getting metadata for NMMAPS city data
}
\usage{
listCities()
getMetaData(name = NULL)
}

\arguments{
  \item{name}{character, name of metadata object}
}

\details{
  If \code{name} is \code{NULL} for \code{getMetaData}, then a character
  vector is returned containing the names of all the available metadata
  objects.  \code{listCities} returns a character vector of the
  \emph{abbreviated} names for all of the cities.  These abbreviated
  names should be used directly with the \code{readCity} function.
}
\value{
  \code{listCities} returns a character vector.  \code{getMetaData}
  returns a character vector or a metadata object.
}
\author{Roger D. Peng \email{rpeng@jhsph.edu}}
\seealso{\code{\link{readCity}}}
\examples{
\dontrun{
initDB()
listCities()
getMetaData()
counties <- getMetaData("counties")
head(counties)
}
}
\keyword{datasets}
