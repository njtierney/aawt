##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title

##' @return
##' @author Nicholas Tierney
##' @export
st_read_aawt_track_points <- function() {

  st_read("data/AAWT.gpx", 
          layer = "track_points") %>% 
    st_transform(crs = 3112)

}
