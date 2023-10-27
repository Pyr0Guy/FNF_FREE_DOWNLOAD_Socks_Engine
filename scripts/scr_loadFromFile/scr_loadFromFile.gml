//@desc Takes name of the song and then load it index
//@arg string

function scr_loadFromFile(argument0)
{
	var audioname = (string(working_directory)+ "audio\\" + string(argument0) + ".ogg")
	var audioindex = audio_create_stream(audioname)
	//Fuck you, make it better later
	global.custom_audio_filenames = argument0;
	return audioindex;
}