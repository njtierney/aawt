library(targets)
library(tarchetypes)
options(tidyverse.quiet = TRUE)
# source("packages.R")
## Load your R files
# lapply(list.files("./R", full.names = TRUE), source)
source("tar-option-set.R")
fs::dir_walk(path = "R/", fun = source)
source("conflicts.R")

# --- things for future and clusters -----------------
# Uncomment below to use local multicore computing
# when running tar_make_clustermq().
# options(clustermq.scheduler = "multicore")

# Uncomment below to deploy targets to parallel jobs
# on a Sun Grid Engine cluster when running tar_make_clustermq().
# options(clustermq.scheduler = "sge", clustermq.template = "sge.tmpl")
# future::plan(future::multiprocess)

# pipeline ---------------------------------------------------------------------
tar_pipeline(
  tar_target(oz_map_aawt_states ,
             create_oz_map_states()),
  tar_target(aawt_tracks,
             st_read("data/AAWT.gpx", layer = "tracks")),
  tar_target(aawt_track_points,
             st_read("data/AAWT.gpx", layer = "track_points")),
  tar_target(aawt_waypoints,
             st_read("data/AAWT.gpx", layer = "waypoints")),
  tar_target(section_stations,
             add_station_numbers(aawt_tracks)),
  tar_target(section_weather_raw,
             historical_section_weather(section_stations)),
  tar_target(section_weather,
             tidy_section_weather(section_weather_raw)),
  tar_target(section_weather_summary,
             summarise_section_weather(section_weather)),
  tar_render(report, "doc/explore.Rmd")
)
