function scr_loadchart(argument0) {
	//loading!!!!!
	filename = get_open_filename("*.swos", "");
	//filename=string(argument0)+string(".swows")
	//skip unimportant stuff
	if(file_exists(filename))
	{
		file=file_text_open_read(filename)
		var i;
		for (i=0; i<4; i++) {
		    file_text_readln(file)
		}
		var songlong = round(((audio_sound_length(obj_charting.song) / 60)*obj_charting.bpm*4));
		//loading notes
		var b;
		var bb;
		for (bb=0; bb<obj_charting.notes*2; bb++) {
		    for (b=0; b<songlong; b++) {
		        obj_charting.grid[# bb,b] = file_text_read_real(file)
		        file_text_readln(file)
		    }
		}
		file_text_close(file)
	}
	



}
