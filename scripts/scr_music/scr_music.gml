/// @description scr_playsong(song, fadein time)
/// @param song
/// @param  fadein time
function scr_playsong(sound, time = 0) {
	time *= 1000;
	if audio_is_playing(sound) {
	    song[sound]=audio_stop_sound(sound)
	}
	song[sound]=audio_play_sound(sound,9999,true)
	//fade in
	audio_sound_gain(song[sound],0,0)
	audio_sound_gain(song[sound],1,time)
}

/// @description scr_stopsong(song,fade out time)
/// @param song
/// @param fade out time
function scr_stopsong(sound, time = 0) {
	time *= 1000; 
	audio_sound_gain(song[sound],0,time)

}