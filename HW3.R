
library(tidycensus)

places <- c("Miami city", "Miami Beach city", "Davie town", "Hialeah Gardens city", 
            "Coral Springs city", "Doral city", "Pinecrest village", "Fort Lauderdale city", 
            "Coral Gables city", "Aventura city", "Miramar city", "Wilton Manors city",
            "Boca Raton city", "Palm Beach town", "Juno Beach town", 
            "Belle Glade city", "Palm Beach Gardens city", "Royal Palm Beach village",
            "Key West city", "Opa-locka city", "Cutler Bay town", "Homestead city",
            "Sweetwater city", "Pembroke Pines city", "Sunrise city")


places_full <- paste0(places, ", Florida")

data <- data.frame (places_full)

Income <- get_acs(geography = "place",
                  variables = c(Median_income= "S1901_C01_012"),
                  state = 12, 
                  year = 2018)

Insurance  <- get_acs(geography = "place",
                      variables = c(Uninsured = "S2701_C04_001"),
                      state = 12, 
                      year = 2018)


library(sqldf)

Left <- sqldf("select a.places_full as place,
              b.estimate as Median_Income, 
              c.estimate as No_insurance