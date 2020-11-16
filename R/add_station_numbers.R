##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param aawt_tracks
##' @return
##' @author Nicholas Tierney
##' @export
add_station_numbers <- function(aawt_tracks) {
  
  track_starts <- aawt_tracks %>%
    aawt_section_starts() %>%
    rowid_to_column()
  
  nearest_station <- sweep_sections(lat = track_starts$lat,
                                    lon = track_starts$lon) %>%
    mutate(waypoint = as.integer(waypoint))
  
  track_starts %>%
    left_join(nearest_station,
              by = c("rowid" = "waypoint"))
  

}
