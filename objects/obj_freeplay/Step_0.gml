/// @description controlls
if scr_multiCheckButtonPressed(vk_up, gp_padu){
    obj_stats.freeplayPosition--
}
if scr_multiCheckButtonPressed(vk_down, gp_padd){
    obj_stats.freeplayPosition++
}

if obj_stats.freeplayCategoryes > 0 && (scr_multiCheckButtonPressed(vk_left, gp_padl)){
    obj_stats.freeplayCategoryes--
	obj_stats.freeplayPosition = 0
}

if obj_stats.freeplayCategoryes < categoryLen-1 && (scr_multiCheckButtonPressed(vk_right, gp_padr)){
    obj_stats.freeplayCategoryes++
	obj_stats.freeplayPosition = 0
}

obj_stats.freeplayCategoryes = clamp(obj_stats.freeplayCategoryes, 0, categoryLen-1)
obj_stats.freeplayPosition=clamp(obj_stats.freeplayPosition,0,array_length(categoryNew[obj_stats.freeplayCategoryes]) - 1)
var songName = categoryNew[obj_stats.freeplayCategoryes][obj_stats.freeplayPosition]

//select
if scr_multiCheckButtonPressed(ord("Z"),vk_enter ,gp_padr) {
    if !instance_exists(obj_fadeout) {
		if(songName == "misplaced")
		{
            randomize();
            var randomalarm=round(random(3))
            audio_play_sound(snd_yoloalarm+randomalarm,999,false)
			return;
        } 
		if obj_stats.songlocked[? songName] == false || !ds_map_exists(obj_stats.songlocked, songName)  {
			var songIndex = scr_songInfo(songName, index)
		
	        obj_stats.weekgoing= songIndex
			obj_stats.namesong = songName;
	        obj_stats.freeplay=true
			obj_stats.category = obj_stats.freeplayCategoryes
			obj_stats.select = obj_stats.freeplayPosition
	        instance_create(0,0,obj_fadeout)
	        obj_fadeout.roomgo=rm_stage
	        audio_stop_sound(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong)))
	        audio_play_sound(snd_josh,999,false)
		} 
		else 
			audio_play_sound(snd_failure2,999,false)
            
    }
}
//back
if scr_multiCheckButtonPressed(ord("X"),vk_shift, vk_escape ,gp_face2) {
    if !instance_exists(obj_fadeout) {
        instance_create(0,0,obj_fadeout)
        obj_fadeout.roomgo=rm_stuffselect
        obj_stats.freeplay=false
    }
}