the_plan <-
  drake_plan(
    
    oz_map_aawt_states = create_oz_map_states(),
    aawt_tracks = st_read("data/AAWT.gpx", layer = "tracks"),
    aawt_track_points = st_read("data/AAWT.gpx", layer = "track_points"),
    aawt_waypoints = st_read("data/AAWT.gpx", layer = "waypoints"),
    campsite_locations = aawt_campsite_locations(aawt_tracks),
    campsite_stations = sweep_campsites(campsite_locations),
    campsite_weather_raw = historical_campsite_weather(campsite_stations),
    campsite_weather = tidy_campsite_weather(campsite_weather_raw),
    campsite_weather_summary = summarise_campsite_weather(campsite_weather),
    
    explore = target(
      command = {
        rmarkdown::render(knitr_in("doc/explore.Rmd"))
        file_out("doc/explore.html")
      }
    )

)
