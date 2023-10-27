if (selection) && (obj_stats.save)
{
	if(keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0,gp_padd))
		sel++

	if(keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu))
		sel--
}
	
if(sel > len-1)
	sel = 0
if(sel <= -1)
	sel = len-1
	
if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"))  or gamepad_button_check_pressed(0,gp_face1) {
    audio_play_sound(snd_josh,9999,false)
    switch(sel){
        case 0:
            instance_create(0,0,obj_fadeout)
            obj_fadeout.roomgo=rm_stageselect
        break;
        case 1:
            instance_create(0,0,obj_fadeout)
            obj_fadeout.roomgo=rm_freeplay
        break;
        case 2:
            instance_create(0,0,obj_fadeout)
            obj_fadeout.roomgo=rm_options
        break;
		
        case 3:
			instance_create(0,0,obj_fadeout)
			obj_fadeout.roomgo=rm_credits	
        break;
		case 4:
			audio_stop_all();
			room_goto(rm_discord)
		break;
    }
}

if(keyboard_check(vk_alt))
{
	delAlpha += 0.05
	delAlpha = clamp(delAlpha, 0, 1)
	del += 0.2
}
else
{
	delAlpha = 0
	del = 0
}

frame = (del>39) ? 1 : 0;

if(del >= 40)
{
	obj_stats.save = false
	selection = false
	if(file_exists("scoresandsets.txt"))
	{
		audio_stop_all()
		if(!audio_is_playing(delSnd))
			audio_play_sound(delSnd, 9999, false)
		
		file_delete("scoresandsets.txt")
		
		//trace(audio_sound_get_track_position(delSnd))
		//if(audio_sound_get_track_position(delSnd) > 2.36)
		//	game_restart()
	}
}

if(!obj_stats.save)
	oneMoreDelVar += 0.1
	
if(oneMoreDelVar >= 15)
	game_restart()