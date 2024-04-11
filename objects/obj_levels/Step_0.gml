//exit

if scr_multiCheckButtonPressed(ord("X"), vk_shift, vk_escape, gp_face2) {
    if !instance_exists(obj_fadeout) {
        instance_create(0,0,obj_fadeout)
        obj_fadeout.roomgo=rm_stuffselect
    }
}
//switch options

if scr_multiCheckButtonPressed(vk_left, gp_padl) {
    obj_stats.storyModeSel-=1
}
if scr_multiCheckButtonPressed(vk_right, gp_padr) {
    obj_stats.storyModeSel+=1
}
obj_stats.storyModeSel=clamp(obj_stats.storyModeSel,0,weeks-1)
x+=(-400*obj_stats.storyModeSel-x)/5
//select
if (scr_multiCheckButtonPressed(ord("Z"), vk_enter, gp_face1)) {
    if !instance_exists(obj_fadeout) /*&& sel!=3*/ {
		audio_stop_sound(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong)))
        audio_play_sound(snd_josh,999,false)
        instance_create(0,0,obj_fadeout)
        obj_fadeout.roomgo=rm_cutscenes
		
		obj_stats.weeknd_songs = []
		array_push(obj_stats.weeknd_songs, songname[obj_stats.storyModeSel][0])
		array_push(obj_stats.weeknd_songs, songname[obj_stats.storyModeSel][1])
		
		var songIndex = scr_songInfo(songname[obj_stats.storyModeSel][0], index)
		
        obj_stats.weekgoing=songIndex
        obj_stats.weekgoing=clamp(obj_stats.weekgoing,0,999)
        obj_stats.cutgoing=weeks_going[obj_stats.storyModeSel]
		obj_stats.weekndgoing=weeks_going[obj_stats.storyModeSel]
		obj_stats.namesong = songname[obj_stats.storyModeSel][0];
    }
}

/* */
/*  */
