#' Generate a WizRd Report
#'
#' @param df Dataframe to generate the Report for
#' @param pattern Pattern / Regex to use for subsettings the dataframe
#' @param template Path to .Rmd template
#'
#' @export
#'
#' @examples
#' generate(cars)
generate <- function(df, pattern = NULL, template = NULL) {
  if (!is.null(pattern)) {
    df <- df[grep(pattern, names(df), value = T)]
  }
  
  if (is.null(template)){
    template <- system.file("main.Rmd", package = "WizRd")
  } 
  
  render(template, params = list(set_title = "Test Bericht"))
}
