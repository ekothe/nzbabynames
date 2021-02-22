# Live birth data -------------------------

library(dplyr, warn.conflicts = FALSE)
library(readr)
library(usethis)

rawbirths <- read_csv("data-raw/rawbirths_20210222.csv", skip = 1)

nzbirths <- rawbirths %>%
  select(Year = X1, Male = `Live births, male`, Female = `Live births, female`, Total = `Live births`) %>%
  filter(!is.na(Year), !is.na(Total)) %>%
  mutate(Male = as.numeric(Male), Female = as.numeric(Female))

write_csv(nzbirths, "data-raw/nzbirths.csv")
usethis::use_data(nzbirths, overwrite = TRUE)
