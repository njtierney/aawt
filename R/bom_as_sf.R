##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param bom_stations
##' @return
##' @author Nicholas Tierney
##' @export
bom_as_sf <- function(bom_stations) {

  st_as_sf(bom_stations,
           coords = c("lon", "lat"),
           crs = 4326)

}
