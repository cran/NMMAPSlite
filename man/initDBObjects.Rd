\name{initDB}
\alias{initDB}

\title{Initialize database objects}
\description{
  Initialize the database objects for the NMMAPS database
}
\usage{
initDB(basedir = "NMMAPS")
}

\arguments{
  \item{basedir}{character, the directory where the local version of the
  NMMAPS database should be stored.}
}
\details{
  \code{initDB} creates a local directory structure for storing a
  local cache of the NMMAPS database.  Internal code makes sure that the
  local copy is synchronized with the remote version of the database.
}
\value{
  Nothing is returned.
}
\author{Roger D. Peng \email{rpeng@jhsph.edu}}
\seealso{\code{\link{readCity}}}
\keyword{datasets}

