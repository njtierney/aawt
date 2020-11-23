##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param aawt_tracks
##' @param buffer_dist
##' @return
##' @author Nicholas Tierney
##' @export
create_track_bbox <- function(aawt_tracks, buffer_dist = 0.5) {

  st_bbox(aawt_tracks) %>% 
    st_as_sfc() %>% 
    st_buffer(dist = buffer_dist)

}
