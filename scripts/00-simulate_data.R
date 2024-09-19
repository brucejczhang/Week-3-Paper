#### Preamble ####
# Purpose: Simulates data
# Author: Bruce Zhang
# Date: 19 September 2024
# Contact: brucejc.zhang@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Simulate data ####
start_date <- ("2000-01-01")
end_date <- ("2024-01-01")
number_of_dates <- 100

data <-
  tibble(
    date = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date), 
        max = as.numeric(end_date)
      ),
      origin = "1978-01-01"
    ),
    number_of_marriages = rpois(n = 100, lambda = 15)
  )

write.csv(data, file = "")



