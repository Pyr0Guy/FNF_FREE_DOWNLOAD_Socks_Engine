if(!instance_exists(obj_midi_clock))
	instance_create(0,0,obj_midi_clock)
obj_midi_clock.bpm=bpm
obj_midi_clock.paused = false
songplaying=audio_play_sound(song,9999,false)
audio_sound_pitch(songplaying, pitch);
//game_set_speed(obj_stats.in_game_fps, gamespeed_fps);