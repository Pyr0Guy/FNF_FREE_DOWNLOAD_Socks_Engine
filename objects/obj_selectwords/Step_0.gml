if (selection) && (obj_stats.save)
{
	if(scr_multiCheckButtonPressed(vk_down, gp_padd))
		obj_stats.selectedWord++

	if(scr_multiCheckButtonPressed(vk_up, gp_padu))
		obj_stats.selectedWord--
}
	
if(obj_stats.selectedWord > len-1)
	obj_stats.selectedWord = 0
if(obj_stats.selectedWord <= -1)
	obj_stats.selectedWord = len-1
	
if scr_multiCheckButtonPressed(vk_enter, ord("Z"), gp_face1){
    audio_play_sound(snd_josh,9999,false)
    switch(obj_stats.selectedWord){
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

//TO DO: Hide this shit to script
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