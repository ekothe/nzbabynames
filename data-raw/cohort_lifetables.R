# Create lifetable object
library(dplyr)

life_tables <- readr::read_csv("data-raw/nz-complete-cohort-life-tables-1876-2021.csv") |>
  mutate(age = as.integer(age))

usethis::use_data(life_tables, overwrite = TRUE)
