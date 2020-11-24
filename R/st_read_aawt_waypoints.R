##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title

##' @return
##' @author Nicholas Tierney
##' @export
st_read_aawt_waypoints <- function() {

  st_read("data/AAWT.gpx", 
          layer = "waypoints") %>% 
    st_transform(crs = 3112)

}
