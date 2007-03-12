.onLoad <- function(lib, pkg) {
    pkgs <- c("stashR")

    for(pkg in pkgs) {
        if(!require(pkg, quietly = TRUE, character.only = TRUE))
            stop(gettextf("'%s' package required", pkg))
    }
    stashROption("quietDownload", TRUE)
}

.onAttach <- function(lib, pkg) {
    dcf <- read.dcf(file.path(lib, pkg, "DESCRIPTION"))
    msg <- gettextf("%s (%s %s)", dcf[, "Title"],
                    as.character(dcf[, "Version"]), dcf[, "Date"])
    message(paste(strwrap(msg), collapse = "\n"))
    message(paste(strwrap(gettext("Initialize database using 'initDB'")),
                  collapse = "\n"))
}

.dbEnv <- new.env()


               
