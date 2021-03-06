CREATE TABLE aprs_stations (id INTEGER PRIMARY KEY, callsign TEXT, adressee TEXT, via TEXT, symbol TEXT, payload TEXT, message TEXT, latitude NUMERIC, longitude NUMERIC, time_seen NUMERIC);
CREATE TABLE commands (id INTEGER PRIMARY KEY, id_session NUMERIC, update_signals TEXT);
CREATE TABLE "fgfs_settings" 
    (
    "aprs_server" TEXT,
    "windowY" NUMERIC DEFAULT (768) ,
    "windowX" NUMERIC DEFAULT (1024) ,
    "id" INTEGER PRIMARY KEY ,
    "fgfs_binary" TEXT,
    "fgdata_path" TEXT,
    "aircraft" TEXT,
    "airport" TEXT,
    "scenery_path" TEXT,
    "use_clutter" NUMERIC DEFAULT (1) ,
    "use_antenna_pattern" NUMERIC DEFAULT (0) ,
    "itm_performance_mode" INTEGER DEFAULT (1) , 
    "srtm_path" TEXT, 
    "shapefile_path" TEXT, 
    "aprs_filter_range" INTEGER DEFAULT 200, 
    "plot_range" INTEGER DEFAULT 30, 
    "aprs_enabled" INTEGER DEFAULT 1, 
    "use_ITWOM" INTEGER DEFAULT 1, 
    "scale_with_distance" INTEGER DEFAULT 0,
    "aprs_settings" TEXT,
    "init_lat" READ DEFAULT (46),
    "init_long" REAL DEFAULT(26)
    );

CREATE TABLE flightplan_positions (id INTEGER PRIMARY KEY, id_session NUMERIC, longitude TEXT, latitude TEXT, altitude NUMERIC, created_on NUMERIC);
CREATE TABLE ground_stations (id INTEGER PRIMARY KEY, id_session NUMERIC, name TEXT, longitude TEXT, latitude TEXT, frequency NUMERIC, beacon_delay NUMERIC, transmission_type NUMERIC, elevation_feet NUMERIC, heading_deg NUMERIC, pitch_deg NUMERIC, polarization NUMERIC, rx_antenna_height NUMERIC, rx_antenna_type TEXT, rx_antenna_gain NUMERIC, rx_line_losses NUMERIC, rx_sensitivity NUMERIC, tx_power_watt NUMERIC, tx_antenna_height NUMERIC, tx_antenna_gain NUMERIC, tx_line_losses NUMERIC, tx_antenna_type TEXT, enabled NUMERIC, created_on NUMERIC);
CREATE TABLE mobile_stations (created_on NUMERIC, id INTEGER PRIMARY KEY, id_session NUMERIC, name TEXT, longitude TEXT, latitude TEXT, current_longitude TEXT, current_latitude TEXT, heading_deg NUMERIC, elevation_feet NUMERIC, speed NUMERIC, frequency NUMERIC, tx_power_watt NUMERIC, terrain_following NUMERIC);
CREATE TABLE replays (id INTEGER PRIMARY KEY, id_session NUMERIC, id_replay TEXT, mobile_longitude TEXT, mobile_latitude TEXT, id_station NUMERIC, signal_dbm TEXT, signal NUMERIC, field_strength_uv TEXT, link_budget TEXT, terrain_attenuation TEXT, clutter_attenuation TEXT, prop_mode TEXT);
CREATE TABLE sessions (id INTEGER PRIMARY KEY, name TEXT, created_on NUMERIC);
CREATE TABLE signals (id INTEGER PRIMARY KEY, id_session NUMERIC, id_station NUMERIC, signal_dbm TEXT, signal NUMERIC, field_strength_uv TEXT, link_budget TEXT, terrain_attenuation TEXT, clutter_attenuation TEXT, prop_mode TEXT);
INSERT INTO "fgfs_settings" VALUES ("romania.aprs2.net","768","1024","1","","","ufo","LFPG","","0","1","0","/install/bin/data/srtm-hgt/hgt-files/","/install/bin/data/clc/cropped/","201","10","1","1","1","XASTIR","46","26");
