# Function to read in Our World in Data COVID-19 vaccination data
# and subset a country's vaccination data from global vaccination csv
# and write the data to new csv file

# Madison Ng
# mtng2@dons.usfca.edu
# May 8, 2021

# load package
library("dplyr")
library("readr")

# create a function to subset any country from the full vaccination data set
# this should also create an output CSV named based on the country subsetted
subset_country_vax <- function(input_file_name,
                               country_vax_subset) {
  # read in complete csv file
  full_vaccine_data <- readr::read_csv(input_file_name)

  # subset data set to only include rows where country column has
  # chosen country's ISO code in it, but include all other columns.
  country_subset <- full_vaccine_data %>%
    dplyr::filter(`iso_code` == country_vax_subset)

  # check subsetted data actually has data present
  if (nrow(country_subset) == 0) {
    stop("ERROR: No rows matching given country name. Possible typo.")
  }

  # save country vaccine data to new csv file in data directory
  readr::write_csv(country_subset, file = paste0("data/",
                                                 "covid-19-data-owid/",
                                                 "vaccinations/",
                                                 "subset_country_vax",
                                                 "_",
                                                 country_vax_subset,
                                                 ".csv"))
  return(country_subset)
}
