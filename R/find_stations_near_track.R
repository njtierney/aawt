##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param aawt_tracks
##' @param bom_stations_sf
##' @return
##' @author Nicholas Tierney
##' @export
find_stations_near_track <- function(aawt_tracks,
                                     bom_stations_sf,
                                     buffer_distance = 0.25) {

  buffered_track <- st_buffer(aawt_tracks, buffer_distance) %>% st_union()
  
  stations_in_polygon <- st_intersection(bom_stations_sf, 
                                         buffered_track)
  
  stations_in_polygon
  

}
