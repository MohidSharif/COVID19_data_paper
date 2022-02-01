#### Preamble ####
# Purpose: Download data from opendatatoronto
# Author: Mohid Sharif 
# Data: 1 February 2022
# Contact: mohid.sharif@mail.utoronto.ca [PROBABLY CHANGE THIS ALSO!!!!]
# License: MIT


#### Workspace setup ####
# Use R Projects, not setwd().
library(tidyverse)
library(opendatatoronto)

### Data Download ###
### From https://open.toronto.ca/dataset/covid-19-cases-in-toronto/

# Datasets are grouped into 'packages' that have multiple datasets
# also called 'resources' that are relevant to that topic. So we first look at the package
# using a unique key that we obtain from the datasets
# webpage (see above)

# Get all resources for this package
resources <- list_package_resources("64b54586-6180-4485-83eb-81e8fae3b8fe")

# We need the unique key from that list of resources
# get_resource() will load one resource.
covid19_outbreaks <- 
  resources %>% 
  get_resource()


### Save data ###
write_csv(covid19_outbreaks, "~/starter_folder-main/inputs/data/covid19_outbreaks.csv")










