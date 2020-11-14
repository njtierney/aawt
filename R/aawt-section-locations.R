##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param aawt_waypoints
##' @return
##' @author Nicholas Tierney
##' @export
aawt_section_centroids <- function(aawt_tracks) {

  aawt_tracks %>% 
    mutate(centroid = st_centroid(geometry),
           centroid_lat = st_coordinates(centroid)[,1],
           centroid_lon = st_coordinates(centroid)[,2]) 
  

}
