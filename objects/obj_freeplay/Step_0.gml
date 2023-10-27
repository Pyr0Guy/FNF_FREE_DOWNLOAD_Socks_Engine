/// @description controlls
if keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu){
    sel--
}
if keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0,gp_padd){
    sel++
}

if categorySel > 0 && (keyboard_check_pressed(vk_left) or gamepad_button_check_pressed(0,gp_padl)){
    categorySel--
	stupitFuckingNumber -= array_length(categoryNew[categorySel])
	sel = 0
}
if categorySel < categoryLen-1 && (keyboard_check_pressed(vk_right) or gamepad_button_check_pressed(0,gp_padr)){
	stupitFuckingNumber += array_length(categoryNew[categorySel])
    categorySel++
	sel = 0
}

categorySel = clamp(categorySel, 0, categoryLen-1)
sel=clamp(sel,0,array_length(categoryNew[categorySel]) - 1)

//trace(sel+obj_stats.mini + stupitFuckingNumber, stupitFuckingNumber)

//select
if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1) {
    if !instance_exists(obj_fadeout) {
        if (sel+obj_stats.mini=obj_stats.mini) && categorySel == 0 {
            randomize();
            var randomalarm=round(random(3))
            audio_play_sound(snd_yoloalarm+randomalarm,999,false)
        } else {
            if !obj_stats.songlocked[categorySel][sel]  {
                obj_stats.weekgoing= sel+obj_stats.mini + stupitFuckingNumber
                obj_stats.freeplay=true
				obj_stats.category = categorySel
				obj_stats.select = sel
                instance_create(0,0,obj_fadeout)
                obj_fadeout.roomgo=rm_stage
                audio_stop_sound(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong)))
                audio_play_sound(snd_josh,999,false)
            } else {
                audio_play_sound(snd_failure2,999,false)
            }
        }
    }
}
//back
if keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift) or keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0,gp_face2) {
    if !instance_exists(obj_fadeout) {
        instance_create(0,0,obj_fadeout)
        obj_fadeout.roomgo=rm_stuffselect
        obj_stats.freeplay=false
    }
}

