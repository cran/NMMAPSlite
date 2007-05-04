## Convert NMMAPSdata 'metpoll' data to NMMAPSlite

library(stashR)

datadir <- path.expand("~/data/masterIHAPSS/NMMAPSdata")

cities <- c("akr", "albu", "anch", "arlv", "atla", "aust", "bake", "balt",
            "batr", "bidd", "birm", "bost", "buff", "cayc", "cdrp", "char",
            "chic", "cinc", "clev", "clmg", "clmo", "colo", "corp", "covt",
            "dayt", "dc", "denv", "desm", "det", "dlft", "elpa", "evan",
            "fres", "ftwa", "gdrp", "grnb", "hono", "hous", "hunt", "indi",
            "jcks", "jckv", "jers", "john", "kan", "kans", "king", "knox",
            "la", "lafy", "lasv", "lex", "linc", "lkch", "loui", "ltrk",
            "lubb", "madi", "memp", "miam", "milw", "minn", "mobi", "mode",
            "musk", "nash", "new", "no", "nor", "nwk", "ny", "oakl", "okla",
            "olym", "oma", "orla", "phil", "phoe", "pitt", "port", "prov",
            "ral", "rich", "rive", "roch", "sacr", "salt", "sana", "sanb",
            "sand", "sanf", "sanj", "seat", "shr", "spok", "staa", "stlo",
            "stoc", "stpe", "syra", "taco", "tamp", "tole", "tope", "tucs",
            "tuls", "wich", "wor")

enames <- c("city", "date", "dow", "tmpd", "tmax", "tmin", "tmean",
            "dptp", "rhum", "mxrh", "mnrh", "pm10mean", "pm10n",
            "pm10median", "pm10max1", "pm10max2", "pm10max3",
            "pm10max4", "pm10max5", "pm10trend", "pm10mtrend",
            "pm10grandmean", "pm10tmean", "pm10meanmax", "pm25mean",
            "pm25n", "pm25median", "pm25max1", "pm25max2", "pm25max3",
            "pm25max4", "pm25max5", "pm25trend", "pm25mtrend",
            "pm25grandmean", "pm25tmean", "pm25meanmax", "o3mean",
            "o3n", "o3median", "o3h0", "o3h1", "o3h2", "o3h3", "o3h4",
            "o3h5", "o3h6", "o3h7", "o3h8", "o3h9", "o3h10", "o3h11",
            "o3h12", "o3h13", "o3h14", "o3h15", "o3h16", "o3h17",
            "o3h18", "o3h19", "o3h20", "o3h21", "o3h22", "o3h23",
            "o3max1", "o3max2", "o3max3", "o3max4", "o3max5",
            "o3trend", "o3mtrend", "o3grandmean", "o3tmean",
            "o3meanmax", "so2mean", "so2n", "so2median", "so2h0",
            "so2h1", "so2h2", "so2h3", "so2h4", "so2h5", "so2h6",
            "so2h7", "so2h8", "so2h9", "so2h10", "so2h11", "so2h12",
            "so2h13", "so2h14", "so2h15", "so2h16", "so2h17",
            "so2h18", "so2h19", "so2h20", "so2h21", "so2h22",
            "so2h23", "so2max1", "so2max2", "so2max3", "so2max4",
            "so2max5", "so2trend", "so2mtrend", "so2grandmean",
            "so2tmean", "so2meanmax", "no2mean", "no2n", "no2median",
            "no2h0", "no2h1", "no2h2", "no2h3", "no2h4", "no2h5",
            "no2h6", "no2h7", "no2h8", "no2h9", "no2h10", "no2h11",
            "no2h12", "no2h13", "no2h14", "no2h15", "no2h16",
            "no2h17", "no2h18", "no2h19", "no2h20", "no2h21",
            "no2h22", "no2h23", "no2max1", "no2max2", "no2max3",
            "no2max4", "no2max5", "no2trend", "no2mtrend",
            "no2grandmean", "no2tmean", "no2meanmax", "comean", "con",
            "comedian", "coh0", "coh1", "coh2", "coh3", "coh4",
            "coh5", "coh6", "coh7", "coh8", "coh9", "coh10", "coh11",
            "coh12", "coh13", "coh14", "coh15", "coh16", "coh17",
            "coh18", "coh19", "coh20", "coh21", "coh22", "coh23",
            "comax1", "comax2", "comax3", "comax4", "comax5",
            "cotrend", "comtrend", "cograndmean", "cotmean",
            "comeanmax", "time", "time2", "time3", "rmtmpd", "rmdptp",
            "l1pm10tmean", "l1pm25tmean", "l1cotmean", "l1no2tmean",
            "l1so2tmean", "l1o3tmean", "l2pm10tmean", "l2pm25tmean",
            "l2cotmean", "l2no2tmean", "l2so2tmean", "l2o3tmean")

onames <- c("accident", "copd", "cvd", "death", "inf", "pneinf", "pneu",
            "resp", "markaccident", "markcopd", "markcvd", "markdeath",
            "markinf", "markpneinf", "markpneu", "markresp", "date",
            "agecat")
intnames <- c("accident", "copd", "cvd", "death", "inf", "pneinf", "pneu",
            "resp", "markaccident", "markcopd", "markcvd", "markdeath",
            "markinf", "markpneinf", "markpneu", "markresp")

## colClasses
cl <- local({
        d <- read.csv(file.path(datadir, "akr8700.csv"), nrow = 15400)
        cl <- sapply(d, class)
        cat("length(cl):", length(cl), "\n")
        cl[cl == "logical"] <- "numeric"
        cl[intnames] <- "integer"
        cl[enames] <- "numeric"
        cl["city"] <- "character"
        cl["date"] <- "character"
        cl
})
        

######################################################################

dbexp <- new("localDB", dir = "exposure", name = "exposure")
dbout <- new("localDB", dir = "outcome", name = "outcome")

for(city in cities) {
        cat(city, "\n")
        infile <- file.path(datadir, paste(city, "8700.csv", sep = ""))
        d <- read.csv(infile, colClasses = cl, nrow = 15400, comment.char = "")
        
        d$date <- as.Date(as.character(d$date), "%Y%m%d")
        d$dow <- factor(d$dow, labels = c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))
        d$agecat <- factor(d$agecat, labels = c("under65", "65to74", "75p"))

        expd <- local({
                dd <- subset(d, agecat == "under65")
                dd[, enames]
        })
        outd <- d[, onames]
        dbInsert(dbexp, city, expd)
        dbInsert(dbout, city, outd)
}

######################################################################
## Metadata

datadir <- path.expand("~/data/masterIHAPSS")

agecat <- read.table(file.path(datadir, "agecat.txt"), sep = "|", header = TRUE)
citycensus <- read.table(file.path(datadir, "citycensus.txt"), sep = "|",
                         header = TRUE)
dow <- read.table(file.path(datadir, "dow.txt"), sep = "|", header = TRUE)
cities <- read.table(file.path(datadir, "cities.txt"), sep = "|", header = TRUE)
counties <- read.table(file.path(datadir, "counties.txt"), sep = "|", header = TRUE)
latlong <- read.table(file.path(datadir, "latlong.txt"), sep = "|", header = TRUE)
regions <- read.table(file.path(datadir, "regions.txt"), sep = "|", header = TRUE)
variables <- read.table(file.path(datadir, "variables.txt"), sep = "|",
                        header = TRUE)

meta <- new("localDB", dir = "Meta", name = "Meta")
mnames <- c("agecat", "citycensus", "dow", "cities", "counties", "latlong",
            "regions", "variables")

for(mname in mnames) {
        dbInsert(meta, mname, get(mname))
}

dbInsert(meta, "siteList", cities)
