/// @description save game
if(save)
	scr_saveoptions();

ds_map_destroy(songscore)
ds_map_destroy(songmiss)
ds_map_destroy(songaccuracy)
ds_map_destroy(songlocked)
ds_map_destroy(songnew)