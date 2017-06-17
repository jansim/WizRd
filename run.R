library(rmarkdown)

source("R/generate.R")
source("R/render_child.R")

load("data/gbd2015.RData")

generate(gbd2015)

