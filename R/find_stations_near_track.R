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
                                     bom_stations_sf) {
  
  bom_stations_sf %>% 
    slice(st_nearest_feature(aawt_tracks, bom_stations_sf))

}
