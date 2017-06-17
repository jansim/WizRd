#' Generate a WizRd Report
#'
#' @param df Dataframe to generate the Report for
#'
#' @export
#'
#' @examples
#' generate(cars)
generate <- function(df) {
  render("inst/main.Rmd", params = list(set_title = "Test Bericht"))
}

#' Render a child R Markdown document inside a parent R Markdown document.
#' Has to run inside a .Rmd document!
#'
#' @param path Path to the .Rmd file (relative to current document)
#'
#' @export
#'
#' @examples
#' ```{r, results='asis'}
#' render.child("_general.Rmd")
#' ```
render.child <- function(path) {
  cat(knit_child(path, quiet = T))
}
