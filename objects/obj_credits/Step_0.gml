if(keyboard_check_pressed(vk_right) or gamepad_button_check_pressed(0,gp_padr))
{
	sel++
	c=0
	//alarm[0] = 1
}

sel=clamp(sel,0, len)

if(keyboard_check_pressed(vk_left) or gamepad_button_check_pressed(0,gp_padl))
{
	sel--
	c=0
	//alarm[1] = 1
}

if (c < 255)
	c += 15


if(sel > len-1)
	sel = 0
if(sel <= -1)
	sel = len-1

if keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift) or keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0,gp_face2) {
	//audio_play_sound(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong)), 999, 1)
	if !instance_exists(obj_fadeout) {
        instance_create(0,0,obj_fadeout)
        obj_fadeout.roomgo=rm_stuffselect
        obj_stats.freeplay=false
    }
}