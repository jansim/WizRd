#' Generate a WizRd Report
#'
#' @param df Dataframe to generate the Report for
#' @param pattern Pattern / Regex to use for subsettings the dataframe
#' @param template Path to .Rmd template
#' @param output_format Format to generate for the report
#'
#' @export
#'
#' @examples
#' Generate a report for the cars dataset
#' generate(cars)
#' 
#' # Generate a report for all columns containing "DALY" or "YLD"
#' generate(gbd2015, pattern = "DALY|YLD")
#' 
#' # Generate only a html report
#' generate(gbd2015, output_format = "html_document")
generate <- function(df, pattern = NULL, template = NULL, output_format = "all") {
  
  if (output_format == "all" || output_format == "pdf_document") {
    # Disable scientific notation when generating a pdf document (R/latex bug)
    options(scipen=999)
  }
  
  if (!is.null(pattern)) {
    df <- df[grep(pattern, names(df), value = T)]
  }
  
  if (is.null(template)){
    template <- system.file("main.Rmd", package = "WizRd")
  } 
  
  rmarkdown::render(template,
         output_format = output_format,
         output_dir = getwd(),
         params = list(
            set_title = paste("Report for" , as.list(match.call())$df)
         )
   )
}
