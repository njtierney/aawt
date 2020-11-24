##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title

##' @return
##' @author Nicholas Tierney
##' @export
st_read_aawt_tracks <- function() {

  st_read("data/AAWT.gpx", 
          layer = "tracks") %>% 
    st_transform(crs = 3112)

}
