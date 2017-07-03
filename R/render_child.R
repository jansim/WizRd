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
render_child <- function(path) {
  cat(knitr::knit_child(path, quiet = T))
}
