##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title

##' @return
##' @author Nicholas Tierney
##' @export
load_bom_stations <- function() {

  load(system.file("extdata", "JSONurl_site_list.rda", package = "bomrang"))
  
  JSONurl_site_list
  

}
