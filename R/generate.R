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
