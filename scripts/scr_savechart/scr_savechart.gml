function scr_savechart(argument0) {
	//saving!!!!!
	filename = get_save_filename(".swows|*.swows", songWriter);
	//filename=string(argument0)+string(".swows")
	file=file_text_open_write(filename)
	//save that stuff
	trace(audio_get_name(obj_charting.song))
	if(audio_get_name(obj_charting.song) == "<undefined>")
		file_text_write_string(file, obj_stats.songName)
	else
		file_text_write_string(file,audio_get_name(obj_charting.song))
		
	file_text_writeln(file)
	file_text_write_string(file,obj_charting.bpm)
	file_text_writeln(file)
	file_text_write_string(file,obj_charting.notespeed)
	file_text_writeln(file)
	file_text_write_string(file,obj_charting.notes)
	file_text_writeln(file)
	var songlong = round(((audio_sound_length(obj_charting.song) / 60)*obj_charting.bpm*4));
	//saving notes
	var b;
	var bb;
	for (bb=0; bb<obj_charting.notes*2; bb++) {
	    for (b=0; b<songlong; b++) {
	        file_text_write_string(file,obj_charting.grid[# bb,b])
	        file_text_writeln(file)
	    }
	}
	file_text_close(file)



}
