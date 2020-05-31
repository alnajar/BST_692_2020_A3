# BST_692_2020_A3 
BST 692 Summer 2020 - Assignment 3

# Goal
We have extracted the cities of residence from the women in the breast cancer study. What you need to do is find 
information on median *household* income and the number of people with *no insurance*.

*TABLE 1*: S1901 - Income  
*TABLE 2*: S2701 - Insurance Coverage  

Pull the specified data from these two tables and use some SQL magic to join them together.

# Output
In your `R` folder, a file that does the API calls and joining and an R dataset (.rds) with your final dataset in your `data` folder

# To Get Started
```{r cities, include=TRUE}
#hint 1: read the tidycensus documentation, these geographies are called Census Designated Places
#hint 2: to compare with the UI you see on data.census.gov, follow this structure: TABLE#_COL#_ROW# - ex: S1901_C01_012

places <- c("Miami city", "Miami Beach city", "Davie town", "Hialeah Gardens city", 
            "Coral Springs city", "Doral city", "Pinecrest village", "Fort Lauderdale city", 
            "Coral Gables city", "Aventura city", "Miramar city", "Wilton Manors city",
            "Boca Raton city", "Palm Beach town", "Juno Beach town", 
            "Belle Glade city", "Palm Beach Gardens city", "Royal Palm Beach village",
            "Key West city", "Opa-locka city", "Cutler Bay town", "Homestead city",
            "Sweetwater city", "Pembroke Pines city", "Sunrise city")

```

## Another Hint:

```{r filter}
#from inspecting the census webste, we need attach Florida to the places to filter by
places_full <- paste0(places, ", Florida")

```
