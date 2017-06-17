generate <- function(df) {
  render("inst/main.Rmd", params = list(set_title = "Test Bericht"))
}

render.child <- function(path) {
  cat(knit_child(path, quiet = T))
}
