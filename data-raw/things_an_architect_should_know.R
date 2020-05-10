## code to prepare `things_an_architect_should_know` dataset goes here

library(stringr)
library(dplyr)

things_orig <- read.csv("data-raw/raw_things.csv")

things_an_architect_should_know <- things_orig %>%
  mutate(thing = str_trim(thing, side = "both"))

usethis::use_data(things_an_architect_should_know, overwrite = TRUE, compress = "xz")
