##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param bom_stations_sf
##' @param track_bbox
##' @return
##' @author Nicholas Tierney
##' @export
find_stations_near_track_bbox <- function(bom_stations_sf, track_bbox) {

  st_intersection(bom_stations_subset, bbox_track)
  

}
