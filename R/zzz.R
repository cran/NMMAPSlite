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
        msg1 <- gettextf("%s (%s %s)", dcf[, "Title"],
			 as.character(dcf[, "Version"]), dcf[, "Date"])
        packageStartupMessage(paste(strwrap(msg1), collapse = "\n"))

	msg2 <- gettext("Initialize database using 'initDB'")
        packageStartupMessage(paste(strwrap(msg2), collapse = "\n"))
}

.dbEnv <- new.env()



