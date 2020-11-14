sweep_for_stations_lat_lon <- function(lat, lon){
  
  Lat <- lat
  Lon <- lon

  JSONurl_site_list <- lat <- lon <- NULL
  load(system.file("extdata", "JSONurl_site_list.rda", package = "bomrang"))
  JSONurl_site_list %>% 
    copy %>% 
    .[, `:=`("distance", 
             bomrang:::.haversine_distance(Lat, 
                                 Lon, 
                                 lat, 
                                 lon))] %>% 
    setorderv("distance") %>% 
    .[]
}