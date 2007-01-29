baseurl <- "http://www.ihapss.jhsph.edu/NMMAPS/v0.1"

initDB <- function(basedir = "NMMAPS") {
    if(!file.exists(basedir))
        message(gettextf("creating directory '%s' for local storage", basedir))
    outcome <- new("remoteDB",
                   url = paste(baseurl, "outcome", sep = "/"),
                   dir = file.path(basedir, "outcome"),
                   name = "outcome")
    exposure <- new("remoteDB",
                    url = paste(baseurl, "exposure", sep = "/"),
                    dir = file.path(basedir, "exposure"),
                    name = "exposure")
    Meta <- new("remoteDB",
                url = paste(baseurl, "Meta", sep = "/"),
                dir = file.path(basedir, "Meta"),
                name = "Meta")
    assign("exposure", exposure, .dbEnv)
    assign("outcome", outcome, .dbEnv)
    assign("Meta", Meta, .dbEnv)
}

readCity <- function(name, collapseAge = FALSE, asDataFrame = TRUE) {
    checkEnv()
    exposure <- dbFetch(.dbEnv$exposure, name)
    outcome <- dbFetch(.dbEnv$outcome, name)

    if(collapseAge)
        outcome <- collapseOutcome(outcome)
    r <- if(asDataFrame)
        merge(outcome, exposure, by = "date")
    else
        list(exposure = exposure, outcome = outcome)
    r
}

getMetaData <- function(name = NULL) {
    checkEnv()
    if(is.null(name))
        dbList(.dbEnv$Meta)
    else
        dbFetch(.dbEnv$Meta, name)
}

listCities <- function() {
    checkEnv()
    cities <- dbFetch(.dbEnv$Meta, "siteList")
    cities
}

checkEnv <- function() {
    if(!exists(".dbEnv") || length(ls(.dbEnv)) == 0)
        stop("need to call 'initDB' first")
    TRUE
}
        

######################################################################

collapseOutcome <- function(x) {
    if(!is.data.frame(x))
        stop("'x' should be a data frame")
    if(!all(c("agecat", "date") %in% names(x)))
        stop("'x' should have variables 'agecat' and 'date'")
    agecat <- x$agecat
    date <- x$date
    x$agecat <- NULL
    x$date <- NULL
    data.frame(rowsum(x, date, reorder = TRUE), date = unique(date))
}

setBaseDir <- function(path) {
    .dbEnv$exposure@dir <- file.path(path, .dbEnv$exposure@name)
    .dbEnv$outcome@dir <- file.path(path, .dbEnv$outcome@name)
    .dbEnv$Meta@dir <- file.path(path, .dbEnv$Meta@name)
    invisible()
}

setBaseURL <- function(url = "http://www.ihapss.jhsph.edu/NMMAPS") {
    .dbEnv$exposure@url <- file.path(url, .dbEnv$exposure@name)
    .dbEnv$outcome@url <- file.path(url, .dbEnv$outcome@name)
    .dbEnv$Meta@url <- file.path(url, .dbEnv$Meta@name)
    invisible()
}

setDB <- function(db, name = c("exposure", "outcome", "Meta")) {
    name <- match.arg(name)

    if(!is(db, "remoteDB"))
        stop("'db' should be of class 'remoteDB'")
    assign(name, db, .dbEnv)
}

