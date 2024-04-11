/// @description leave
obj_stats.songscore[? openName] = 0;
obj_stats.songmiss[? openName] = 0;
obj_stats.songaccuracy[? openName] = 0;
obj_stats.songlocked[? openName] = false
obj_stats.songnew[? openName] = true
if(!array_contains(obj_stats.what_i_need_to_save, openName))
	array_push(obj_stats.what_i_need_to_save, openName)

scr_saveoptions()
instance_create(0,0,obj_fadeout)
obj_fadeout.roomgo=rm_stageselect
audio_play_sound(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong)),9999,true)

