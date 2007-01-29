\name{variables}
\alias{variables}

\docType{data}

\title{U.S. Cities Variable Descriptions}

\description{
  Descriptions of pollutant, meteorology, and mortality variables for
  U.S. cities (1987--2000).  
}

\details{
  The following information (and more) can be found by loading the 
  \code{variables} table (i.e. via \code{getMetaData("variables")})
  
  Each city dataframe contains variables on:

  \describe{
    \item{city}{abbreviated city name}
    \item{date}{Date}
    \item{dow}{Day of week}
    \item{agecat}{3 age categories}
    \item{accident}{Accidental Deaths}
    \item{copd}{Chronic Obstructive Pulmonary Disease}
    \item{cvd}{Cardiovascular Deaths}
    \item{death}{All cause mortality excluding accident}
    \item{inf}{Influenza}
    \item{pneinf}{Pneumonia and Influenza}
    \item{pneu}{Pneumonia}
    \item{resp}{Respiratory Deaths}
    \item{tmpd}{Mean temperature}
    \item{tmax}{Maximum temperature}
    \item{tmin}{Minimum temperature}
    \item{tmean}{24 hourly mean temperature}
    \item{dptp}{Dew point temperature}
    \item{rhum}{Mean relative humidity}
    \item{mxrh}{Maximum relative humidity}
    \item{mnrh}{Minimum relative humidity}
    \item{pm10mean}{PM10 Mean}
    \item{pm10n}{No. non-missing}
    \item{pm10median}{PM10 Median}
    \item{pm10max1}{Maximum Hourly PM10}
    \item{pm10max2}{2nd Maximum Hourly PM10}
    \item{pm10max3}{3rd Maximum Hourly PM10}
    \item{pm10max4}{4th Maximum Hourly PM10}
    \item{pm10max5}{5th Maximum Hourly PM10}
    \item{pm10trend}{Daily mean of 1-year trends}
    \item{pm10mtrend}{Daily median of 1-year trends}
    \item{pm10grandmean}{Grand Mean}
    \item{pm10tmean}{PM10 Trimmed Mean}
    \item{pm10meanmax}{Mean of maximum PM10}
    \item{pm25mean}{Mean PM2.5}
    \item{pm25n}{No. non-missing}
    \item{pm25median}{Median PM2.5}
    \item{pm25max1}{Maximum Hourly PM2.5}
    \item{pm25max2}{2nd Maximum Hourly PM2.5}
    \item{pm25max3}{3rd Maximum Hourly PM2.5}
    \item{pm25max4}{4th Maximum Hourly PM2.5}
    \item{pm25max5}{5th Maximum Hourly PM2.5}
    \item{pm25trend}{Daily mean of 1-year trends}
    \item{pm25mtrend}{Daily median of 1-year trends}
    \item{pm25grandmean}{Grand Mean}
    \item{pm25tmean}{Trimmed Mean PM2.5}
    \item{pm25meanmax}{Mean of maximum PM2.5}
    \item{o3mean}{Mean O3}
    \item{o3n}{No. non-missing}
    \item{o3median}{Median O3}
    \item{o3h0}{0 hour mean}
    \item{o3h1}{1 hour mean}
    \item{o3h2}{2 hour mean}
    \item{o3h3}{3 hour mean}
    \item{o3h4}{4 hour mean}
    \item{o3h5}{5 hour mean}
    \item{o3h6}{6 hour mean}
    \item{o3h7}{7 hour mean}
    \item{o3h8}{8 hour mean}
    \item{o3h9}{9 hour mean}
    \item{o3h10}{10 hour mean}
    \item{o3h11}{11 hour mean}
    \item{o3h12}{12 hour mean}
    \item{o3h13}{13 hour mean}
    \item{o3h14}{14 hour mean}
    \item{o3h15}{15 hour mean}
    \item{o3h16}{16 hour mean}
    \item{o3h17}{17 hour mean}
    \item{o3h18}{18 hour mean}
    \item{o3h19}{19 hour mean}
    \item{o3h20}{20 hour mean}
    \item{o3h21}{21 hour mean}
    \item{o3h22}{22 hour mean}
    \item{o3h23}{23 hour mean}
    \item{o3max1}{Maximum Hourly O3}
    \item{o3max2}{2nd Maximum Hourly O3}
    \item{o3max3}{3rd Maximum Hourly O3}
    \item{o3max4}{4th Maximum Hourly O3}
    \item{o3max5}{5th Maximum Hourly O3}
    \item{o3trend}{Daily mean of 1-year trends}
    \item{o3mtrend}{Daily median of 1-year trends}
    \item{o3grandmean}{Grand Mean}
    \item{o3tmean}{Trimmed Mean O3}
    \item{o3meanmax}{Mean of maximum O3}
    \item{so2mean}{Mean SO2}
    \item{so2n}{No. non-missing}
    \item{so2median}{Median SO2}
    \item{so2h0}{0 hour mean}
    \item{so2h1}{1 hour mean}
    \item{so2h2}{2 hour mean}
    \item{so2h3}{3 hour mean}
    \item{so2h4}{4 hour mean}
    \item{so2h5}{5 hour mean}
    \item{so2h6}{6 hour mean}
    \item{so2h7}{7 hour mean}
    \item{so2h8}{8 hour mean}
    \item{so2h9}{9 hour mean}
    \item{so2h10}{10 hour mean}
    \item{so2h11}{11 hour mean}
    \item{so2h12}{12 hour mean}
    \item{so2h13}{13 hour mean}
    \item{so2h14}{14 hour mean}
    \item{so2h15}{15 hour mean}
    \item{so2h16}{16 hour mean}
    \item{so2h17}{17 hour mean}
    \item{so2h18}{18 hour mean}
    \item{so2h19}{19 hour mean}
    \item{so2h20}{20 hour mean}
    \item{so2h21}{21 hour mean}
    \item{so2h22}{22 hour mean}
    \item{so2h23}{23 hour mean}
    \item{so2max1}{Maximum Hourly SO2}
    \item{so2max2}{2nd Maximum Hourly SO2}
    \item{so2max3}{3rd Maximum Hourly SO2}
    \item{so2max4}{4th Maximum Hourly SO2}
    \item{so2max5}{5th Maximum Hourly SO2}
    \item{so2trend}{Daily mean of 1-year trends}
    \item{so2mtrend}{Daily median of 1-year trends}
    \item{so2grandmean}{Grand Mean}
    \item{so2tmean}{Trimmed Mean SO2}
    \item{so2meanmax}{Mean of maximum SO2}
    \item{no2mean}{Mean NO2}
    \item{no2n}{No. non-missing}
    \item{no2median}{Median NO2}
    \item{no2h0}{0 hour mean}
    \item{no2h1}{1 hour mean}
    \item{no2h2}{2 hour mean}
    \item{no2h3}{3 hour mean}
    \item{no2h4}{4 hour mean}
    \item{no2h5}{5 hour mean}
    \item{no2h6}{6 hour mean}
    \item{no2h7}{7 hour mean}
    \item{no2h8}{8 hour mean}
    \item{no2h9}{9 hour mean}
    \item{no2h10}{10 hour mean}
    \item{no2h11}{11 hour mean}
    \item{no2h12}{12 hour mean}
    \item{no2h13}{13 hour mean}
    \item{no2h14}{14 hour mean}
    \item{no2h15}{15 hour mean}
    \item{no2h16}{16 hour mean}
    \item{no2h17}{17 hour mean}
    \item{no2h18}{18 hour mean}
    \item{no2h19}{19 hour mean}
    \item{no2h20}{20 hour mean}
    \item{no2h21}{21 hour mean}
    \item{no2h22}{22 hour mean}
    \item{no2h23}{23 hour mean}
    \item{no2max1}{Maximum Hourly NO2}
    \item{no2max2}{2nd Maximum Hourly NO2}
    \item{no2max3}{3rd Maximum Hourly NO2}
    \item{no2max4}{4th Maximum Hourly NO2}
    \item{no2max5}{5th Maximum Hourly NO2}
    \item{no2trend}{Daily mean of 1-year trends}
    \item{no2mtrend}{Daily median of 1-year trends}
    \item{no2grandmean}{Grand Mean}
    \item{no2tmean}{Trimmed Mean NO2}
    \item{no2meanmax}{Mean of maximum NO2}
    \item{comean}{Mean CO}
    \item{con}{No. non-missing}
    \item{comedian}{Median CO}
    \item{coh0}{0 hour mean}
    \item{coh1}{1 hour mean}
    \item{coh2}{2 hour mean}
    \item{coh3}{3 hour mean}
    \item{coh4}{4 hour mean}
    \item{coh5}{5 hour mean}
    \item{coh6}{6 hour mean}
    \item{coh7}{7 hour mean}
    \item{coh8}{8 hour mean}
    \item{coh9}{9 hour mean}
    \item{coh10}{10 hour mean}
    \item{coh11}{11 hour mean}
    \item{coh12}{12 hour mean}
    \item{coh13}{13 hour mean}
    \item{coh14}{14 hour mean}
    \item{coh15}{15 hour mean}
    \item{coh16}{16 hour mean}
    \item{coh17}{17 hour mean}
    \item{coh18}{18 hour mean}
    \item{coh19}{19 hour mean}
    \item{coh20}{20 hour mean}
    \item{coh21}{21 hour mean}
    \item{coh22}{22 hour mean}
    \item{coh23}{23 hour mean}
    \item{comax1}{Maximum Hourly CO}
    \item{comax2}{2nd Maximum Hourly CO}
    \item{comax3}{3rd Maximum Hourly CO}
    \item{comax4}{4th Maximum Hourly CO}
    \item{comax5}{5th Maximum Hourly CO}
    \item{cotrend}{Daily mean of 1-year trends}
    \item{comtrend}{Daily median of 1-year trends}
    \item{cograndmean}{Grand Mean}
    \item{cotmean}{Trimmed Mean CO}
    \item{comeanmax}{Mean of maximum CO}
    \item{rmtmpd}{Adjusted 3-day lag temperature}
    \item{rmdptp}{Adjusted 3-day lag Dew point temperature}
    \item{markaccident}{Exclusions for Accidental Deaths}
    \item{markcopd}{Exclusions for COPD}
    \item{markcvd}{Exclusions for Cardiovascular Deaths}
    \item{markdeath}{Exclusions for death}
    \item{markinf}{Exclusions for Influenza}
    \item{markpneinf}{Exclusions for Pneumonia and Influenza}
    \item{markpneu}{Exclusions for Pneumonia}
    \item{markresp}{Exclusions for Respiratory Deaths}
    \item{l1pm10tmean}{Lag 1 PM10 trimmed mean}
    \item{l1pm25tmean}{Lag 1 PM25 trimmed mean}
    \item{l1cotmean}{Lag 1 CO trimmed mean}
    \item{l1no2tmean}{Lag 1 NO2 trimmed mean}
    \item{l1so2tmean}{Lag 1 SO2 trimmed mean}
    \item{l1o3tmean}{Lag 1 O3 trimmed mean}
    \item{l2pm10tmean}{Lag 2 PM10 trimmed mean}
    \item{l2pm25tmean}{Lag 2 PM25 trimmed mean}
    \item{l2cotmean}{Lag 2 CO trimmed mean}
    \item{l2no2tmean}{Lag 2 NO2 trimmed mean}
    \item{l2so2tmean}{Lag 2 SO2 trimmed mean}
    \item{l2o3tmean}{Lag 2 O3 trimmed mean}
  }
}

\seealso{
  \code{\link{readCity}}, \code{\link{listCities}}
}

\keyword{datasets}
