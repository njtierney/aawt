##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param aawt_waypoints
##' @return
##' @author Nicholas Tierney
##' @export
aawt_section_starts <- function(aawt_tracks) {

  aawt_tracks %>% 
    st_cast(to = "POINT") %>% 
    group_by(name) %>% 
    slice(1) %>% 
    ungroup() %>% 
    select(name, geometry) %>% 
    mutate(lat = st_coordinates(geometry)[,1],
           lon = st_coordinates(geometry)[,2])
  

}
