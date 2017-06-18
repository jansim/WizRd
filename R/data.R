#' Global Burden of Disease Study 2015.
#' 
#' Global Burden of Disease Study 2015 (GBD 2015) Results.
#' Seattle, United States: Institute for Health Metrics and Evaluation (IHME), 2016.
#' Available from http://ghdx.healthdata.org/gbd-results-tool.
#' For terms and conditions of use, please visit http://www.healthdata.org/about/terms-and-conditions
#'
#' @format A data frame with 316 rows and 11 variables:
#' \describe{
#'   \item{cause_name}{medical cause / disease}
#'   \item{cause_id}{individual id for each disease}
#'   \item{metric_name}{class: number, rate or percent}
#'   \item{acute_incidence}{acute incidence rate}
#'   \item{chronic_prevalence}{chronic prevalence rate}
#'   \item{DALYs}{disability adjusted life year - describes the numer of years lost due to ill-health, disability or early death}
#'   \item{deaths}{number of deaths in the population}
#'   \item{incidence}{number of incident cases in the population }
#'   \item{prevalence}{prevalence rate}
#'   \item{YLDs}{years lost due to disability}
#'   \item{YLLs}{years of life lost due to dying early}
#' }
#' @source \url{http://ghdx.healthdata.org/gbd-results-tool}
"gbd2015"