.onLoad <- function(lib, pkg) {
    pkgs <- c("methods", "stashR")

    for(pkg in pkgs) {
        if(!require(pkg, quietly = TRUE, character.only = TRUE))
            stop(gettextf("'%s' package required", pkg))
    }
    stashROption("quietDownload", TRUE)
}

.onAttach <- function(lib, pkg) {
    dcf <- read.dcf(file.path(lib, pkg, "DESCRIPTION"))
    msg <- gettextf("%s (version %s %s)", dcf[, "Title"],
                    as.character(dcf[, "Version"]), dcf[, "Date"])
    writeLines(strwrap(msg))
    writeLines(strwrap("Initialize database using 'initDB'"))
}

.dbEnv <- new.env()


               