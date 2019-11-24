library(tidyr)

Clean_Data <- function(data){
data <- spread(data, key=variable , value=estimate)
        
        return(data)
}