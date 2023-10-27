//I know making 1 and 2 the volume controls is stupid but
//I couldn't make it plus and minus without it being on the numpad
if keyboard_check_pressed(ord(2)) {
    volume+=0.1
	if(!instance_exists(obj_volume))
		instance_create_depth(0, 0,-999999, obj_volume)
    audio_master_gain(volume)
    audio_play_sound(snd_ribbit1,9999,false)
}
if keyboard_check_pressed(ord(1)) {
    volume-=0.1
	if(!instance_exists(obj_volume))
		instance_create_depth(0, 0,-999999, obj_volume)
    audio_master_gain(volume)
    audio_play_sound(snd_ribbit2,9999,false)
}
volume=clamp(volume,0,1)


//weird noise
if keyboard_check(vk_alt) && keyboard_check_pressed(vk_enter) {
    audio_play_sound(snd_weirdnoise,9999,false)
}
//debug
if keyboard_check_pressed(ord("7")) {
    debug=!debug
}

//DELTA UPDATE, fuck the framerate
global.actual_delta = delta_time/1000000;
global.delta_multiplier = global.actual_delta/reg_fps;

window_set_fullscreen(fullscreen)