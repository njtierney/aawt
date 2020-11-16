##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param campsite_locations
##' @return
##' @author Nicholas Tierney
##' @export
sweep_sections <- function(lat, lon) {

  stations <- pmap_dfr(.l = list(station_lat = lat,
                                 station_lon = lon),
                       .f = extract_top_site) %>% 
    pivot_longer(cols = everything(),
                 names_to = c("waypoint"),
                 values_to = c("nearest_station_code"))
  
  stations

}
