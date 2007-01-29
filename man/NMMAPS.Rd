\name{NMMAPS}
\alias{NMMAPS}
\alias{NMMAPSlite-package}

\docType{data}

\title{Overview of NMMAPS database}
\description{
  The NMMAPS database:  Daily mortality, weather, and pollution data for
  1987--2000.

  The database contains dataframes with air pollution, weather, and
  mortality data for 108 United States cities.  Each city dataframe
  contains daily time series of mortality counts (for various causes of
  death), pollution levels, and weather (e.g. temperature and
  humidity).

  The data were assembled from publicly available data sources as part
  of the National Morbidity, Mortality, and Air Pollution Study (NMMAPS)
  sponsored by the Health Effects Institute.  Daily
  mortality counts were obtained from the National Center for Health
  Statistics and classified into three age categories (< 65; 65-74; >=
  75).  Accidental deaths (i.e. ICD-9 >= 800) were excluded.  Weather
  data were obtained from the National Climatic Data Center EarthInfo
  CD-ROM and pollution data were obtained from the Environmental
  Protection Agency's Aerometric Information Retrieval System (AIRS)
  and AirData System.

  Note that the data included with this package only contain the
  daily counts of mortality.  Morbidity outcomes (e.g. hospital
  admissions, etc.) are not included with this package.
}


\format{
  Note that by default, the \code{readCity} function returns data frames
  that have the pollution and weather data replicated 3 times
  because the mortality counts are split into three age categories.
  There are only 5114 \emph{days} of observations, but each day has
  three mortality counts.  The dataframes are stored in this format so
  that they can be used immediately with a regression procedure such as
  \code{lm} or \code{glm}.  If age category stratified counts are not
  needed, one can use the \code{collapseAge} argument to \code{readCity}
  to combine the outcomes across age categories.

  Pollution variables have been de-trended and their names all have the
  suffix *tmean (which stands for \dQuote{trimmed mean}).  Briefly, the
  pollution value for a particular day in a given city is the 10\%
  trimmed mean of the values from all of the monitors in the given
  city.  

  Each pollutant also has variable whose name has the suffix *mtrend.
  This variable stores the median trend of the pollution monitors for a
  given city.  This roughly the value that is subtracted off the
  original pollution series to center it around zero.  See the
  \code{PollutantProcess} vignette for more details.

  The iHAPSS website (\url{http://www.ihapss.jhsph.edu/}) contains
  detailed information on the different variables included with each
  city dataframe.
}

\references{
  Samet JM, Dominici F, Zeger SL, Schwartz J, Dockery DW (2000).  \emph{The
  National Morbidity, Mortality, and Air Pollution Study, Part I:
  Methods and Methodologic Issues}.  Research Report 94, Health Effects
  Institute, Cambridge MA.

  \url{http://www.healtheffects.org/Pubs/Samet.pdf}

  Samet JM, Zeger SL, Dominici F, Curriero F, Coursac I, Dockery DM,
  Schwartz J, Zanobetti A (2000).  \emph{The National Morbidity, Mortality,
  and Air Pollution Study, Part II:  Morbidity and Mortality from Air
  Pollution in the United States}.  Research Report 94, Health Effects
  Institute, Cambridge MA.

  \url{http://www.healtheffects.org/Pubs/Samet2.pdf}

  Dominici F, McDermott A, Daniels M, Zeger SL, Samet JM (2003).
  \dQuote{Mortality among residents of 90 cities,} in \emph{Revised
    Analyses of Time-Series Studies of Air Pollution and Health}.
  Research Report 94, Health Effects Institute, Cambridge MA, pp. 9-24.

  \url{http://www.healtheffects.org/Pubs/TimeSeries.pdf}

  Daniels MJ, Dominici F, Zeger SL, Samet JM (2004). \emph{The National
  Morbidity, Mortality, and Air Pollution Study, Part III:
  Concentration-Response Curves and Thresholds for the 20 Largest US
  Cities}. Health Effects Institute, Cambridge MA.

  \url{http://www.healtheffects.org/Pubs/Daniels94-3.pdf}
  
  Internet-based Health and Air Pollution Surveillance System (iHAPSS):
  
  \url{http://www.ihapss.jhsph.edu/}
}

\keyword{datasets}
