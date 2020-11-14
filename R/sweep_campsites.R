##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param campsite_locations
##' @return
##' @author Nicholas Tierney
##' @export
sweep_campsites <- function(campsite_locations) {

  sweep_for_stations(latlon = c(campsite_locations$centroid_lat[1],
                                campsite_locations$centroid_lon[1]))

}
