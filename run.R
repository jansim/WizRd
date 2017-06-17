library(knitr)
library(rmarkdown)
library(ggplot2)

source("R/generate.R")
source("R/render_child.R")

load("data/gbd2015.RData")

generate(gbd2015, template = "inst/main.Rmd")
