/// @description controlls + stuff 

//It would be cool if I wrote down the id of only one obj_notespace from (notes * 2) and when only one is loaded, 
//the rest would be loaded, but I think that's enough for now
scr_deactivate_obj(obj_notespace);

if(alarm[0] < 0)
	alarm[0] = 10

//play the song
if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space) {
    if songpos=-1 or (!audio_is_playing(songplaying) && !audio_is_paused(songplaying)){
        songplaying=audio_play_sound(song,9999,false)
        songpos=audio_sound_get_track_position(songplaying)
    } else {
        if audio_is_paused(songplaying) {
            audio_resume_sound(songplaying)
        } else {
            audio_pause_sound(songplaying)
        }
    }
}


if songpos>-1 {
//moving through song
if keyboard_check_pressed(vk_up) or mouse_wheel_up() {
    songpos-=audio_sound_length(songplaying)/songlong
    audio_sound_set_track_position(songplaying,songpos)
}
if keyboard_check_pressed(vk_down) or mouse_wheel_down() {
    songpos+=audio_sound_length(songplaying)/songlong
    audio_sound_set_track_position(songplaying,songpos)
}
//MAAATH
    songpos=audio_sound_get_track_position(songplaying)
    yy =(songpos/60*bpm*4)*16
	camera_set_view_pos(view_camera[0], 0, yy);
}

if (songWrite)
{
	//keyboard_string = ""
	songWriter += keyboard_string;
	keyboard_string = ""
	
	if(keyboard_check_pressed(vk_backspace))
		songWriter=string_copy(songWriter, 1, string_length(songWriter)-1)		
}

if (songFileWrite)
{
	//keyboard_string = ""
	songFileWriter += keyboard_string;
	keyboard_string = ""
	
	if(keyboard_check_pressed(vk_backspace))
		songFileWriter=string_copy(songFileWriter, 1, string_length(songFileWriter)-1)		
}

if (bpmWrite)
{
	//keyboard_string = ""
	bpmWriter += keyboard_string;
	keyboard_string = ""
	
	if(keyboard_check_pressed(vk_backspace))
		bpmWriter=string_copy(bpmWriter, 1, string_length(bpmWriter)-1)		
}


if(hitsoundCheck) && (songpos>-1) && !audio_is_paused(songplaying) 
{
	var coolThing = round(songpos/60*bpm*4);
	
	for(var i = 0; i < array_length(id_list); i++){
		var _id = id_list[i];
		var note_pos = (_id.y - 64) / 16
		trace(note_pos, coolThing)
		if(note_pos == coolThing){
			if(!_id.s_play){
				audio_play_sound(snd_hitsound, 9999, 0)
				_id.s_play = true;
			}
		}
		else
			_id.s_play = false
	}
		
}
