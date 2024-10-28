# Live birth data -------------------------

library(dplyr, warn.conflicts = FALSE)
library(readr)
library(usethis)

# Raw data from https://infoshare.stats.govt.nz/ 
# Choose Subject Category:
#  Population > Births - VSB
#  Table: Live births (by sex), stillbirths (Maori and total population) (Annual-Dec)
# Select variables: 
  # Under Live births, Stillbirths select: Live births, male; Live births, female; Live births
  # Under Ethnicity select: Total
  # Under Time select: Select all
# Save table as csv (link on top of table)

rawbirths <- read_csv("data-raw/rawbirths_20241021.csv", skip = 1)

nzbirths <- rawbirths %>%
  select(Year = `...1`, Male = `Live births, male`, Female = `Live births, female`, Total = `Live births`) %>%
  filter(!is.na(Year), !is.na(Total)) %>%
  mutate(Male = parse_number(Male), Female = parse_number(Female), Total = parse_number(Total))
  

write_csv(nzbirths, "data-raw/nzbirths.csv")
usethis::use_data(nzbirths, overwrite = TRUE)
