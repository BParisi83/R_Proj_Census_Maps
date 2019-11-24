library(tidyverse)
library(tidycensus)

# Store the Census API Key to pull data
census_api_key("f4f32af0ec3e5711d1a10fef39740ab08ac7b435")

# We will pull in the 2017 ACS data for NJ
# The data will be at the census tract level
# Run the following for the variable codes and definition
#vars_List <- load_variables(year = 2017, 'acs5' ,cache = TRUE)

Pull_Data <- function(location, level, timeframe){

ACS_Data <- get_acs(geography = level, year = timeframe, state = location,
                       variables = c(Median_Income = 'B19013_001',
                                     Pop_Under_18 = 'B09001_001',
                                     Total_Pop = 'B01003_001'),  geometry = TRUE
                    )
        #remove the margin of error column from the data set
        ACS_Data <- ACS_Data %>% select(-moe)
        
        return(ACS_Data)
}
