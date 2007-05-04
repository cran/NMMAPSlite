library(NMMAPSlite)

initDB("NMMAPS")

try({
        cityList <- listCities()
        print(cityList)
})

try({
        ## Read from web
        ny <- readCity("ny", asDataFrame = FALSE)
        str(ny)

        ## Read from cache
        ny <- readCity("ny", asDataFrame = FALSE)
})

try({
        meta <- getMetaData()
        print(meta)
})


