##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param section_centroids
##' @return
##' @author Nicholas Tierney
##' @export
extract_top_site <- function(station_lat, 
                             station_lon, 
                             n = 1) {

  sweep_for_stations(latlon = c(station_lat,
                                station_lon)) %>% 
    slice(n) %>% 
    pull(site)

}
