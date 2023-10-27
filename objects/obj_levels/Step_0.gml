//exit
if keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift) or gamepad_button_check_pressed(0,gp_face2) or keyboard_check_pressed(vk_escape) {
    if !instance_exists(obj_fadeout) {
        instance_create(0,0,obj_fadeout)
        obj_fadeout.roomgo=rm_stuffselect
    }
}
//switch options
if keyboard_check_pressed(vk_left) or gamepad_button_check_pressed(0,gp_padl) {
    sel-=1
}
if keyboard_check_pressed(vk_right) or gamepad_button_check_pressed(0,gp_padr) {
    sel+=1
}
sel=clamp(sel,0,weeks)
x+=(-400*sel-x)/5
//select
if (keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter)) or gamepad_button_check_pressed(0,gp_face1) {
    if !instance_exists(obj_fadeout) /*&& sel!=3*/ {
        audio_stop_sound(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong)))
        audio_play_sound(snd_josh,999,false)
        instance_create(0,0,obj_fadeout)
        obj_fadeout.roomgo=rm_cutscenes
        obj_stats.weekgoing=sel*2-1
        obj_stats.weekgoing=clamp(obj_stats.weekgoing,0,999)
        obj_stats.cutgoing=sel
    }
}

/* */
/*  */
