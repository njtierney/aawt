##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param campsite_locations
##' @return
##' @author Nicholas Tierney
##' @export
sweep_sections <- function(section_centroids) {

  sweep_for_stations(latlon = c(section_centroids$centroid_lat[1],
                                section_centroids$centroid_lon[1]))

}
