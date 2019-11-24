############################
# Developer - Bernie Parisi
# Data Sets - United States Census 
# Purpose - Exploratory Data Anaylsis and Visualization
############################

#Load the Data Set
source('C:/Users/Bernie/Documents/GitHub/R_Proj_Census_Maps/Load_Data_API.R')


# Clean the data so it is organized in a tidy fashion
source('C:/Users/Bernie/Documents/GitHub/R_Proj_Census_Maps/Clean_Data.R')

NJ_ACS_2017 <- Pull_Data('NJ','tract',2017)
Tidy_NJ_ACS <-Clean_Data(NJ_ACS_2017)

# Build a Map for the State of NJ at the Census Tract Level with regions differentiated
# by Median Income

source('C:/Users/Bernie/Documents/GitHub/R_Proj_Census_Maps/Income Map.R')