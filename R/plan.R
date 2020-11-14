the_plan <-
  drake_plan(
    
    oz_map_aawt_states = create_oz_map_states(),
    aawt_tracks = st_read("data/AAWT.gpx", layer = "tracks"),
    aawt_track_points = st_read("data/AAWT.gpx", layer = "track_points"),
    aawt_waypoints = st_read("data/AAWT.gpx", layer = "waypoints"),
    section_centroids = aawt_section_centroids(aawt_tracks),
    section_stations = sweep_sections(section_centroids),
    section_weather_raw = historical_section_weather(section_stations),
    section_weather = tidy_section_weather(section_weather_raw),
    section_weather_summary = summarise_section_weather(section_weather),
    
    explore = target(
      command = {
        rmarkdown::render(knitr_in("doc/explore.Rmd"))
        file_out("doc/explore.html")
      }
    )

)
