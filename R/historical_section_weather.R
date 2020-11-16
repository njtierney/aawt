##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param section_stations
##' @return
##' @author Nicholas Tierney
##' @export
historical_section_weather <- function(section_stations) {
  
  rain <- get_historical(stationid = section_stations$nearest_station_code[1],
                         type = c("rain"))
  temp_min <- get_historical(stationid = section_stations$nearest_station_code[1],
                         type = c("min"))
  
  temp_max <- get_historical(stationid = section_stations$nearest_station_code[1],
                         type = c("max"))

}
