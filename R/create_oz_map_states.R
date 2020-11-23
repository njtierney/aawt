##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title

##' @return
##' @author Nicholas Tierney
##' @export
create_oz_map_states <- function() {

  
  oz_map <- ne_states(country = "australia", returnclass = "sf")
  
  oz_map_aawt_states <- oz_map %>% 
    filter(name %in% c("New South Wales",
                       "Victoria",
                       "Australian Capital Territory")) %>% 
    rmapshaper::ms_simplify()

}
