library(rmarkdown)

source("R/generate.R")

load("data/gbd2015.RData")

generate(gbd2015)

