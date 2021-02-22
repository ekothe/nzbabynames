# Baby name data -------------------------

library(dplyr, warn.conflicts = FALSE)
library(readr)
library(usethis)

nzbabynames <- read_csv("https://catalogue.data.govt.nz/dataset/01ee87cd-ecf8-44a1-ad33-b376a689e597/resource/0b0b326c-d720-480f-8f86-bf2d221c7d3f/download/baby-names-2021-01-07.csv",
               col_types = cols(Sex = col_character()))

nzbabynames <- nzbabynames %>%
  mutate(Sex = case_when(
    Sex == "F" ~ "Female",
    Sex == "M" ~ "Male"
  ))

write_csv(nzbabynames, "data-raw/nzbabynames.csv")
usethis::use_data(nzbabynames, overwrite = TRUE)
