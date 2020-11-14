add_lat_lon <- function(.data){
  .data %>% 
    mutate(lat = st_coordinates(.)[,1],
           lon = st_coordinates(.)[,2])
}