if(obj_stats.randomMenuSong == 0)
{
	nextSeq = 8.72
	obj_midi_clock.bpm = 110
}
else
{
	nextSeq = 14.69
	obj_midi_clock.bpm = 150
}

song=audio_play_sound(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong)),9999,true)

trace("mus_menu" + string(obj_stats.randomMenuSong))

part=0
tick=0

//GIGANT PICE OF CODE
var text_file = file_text_open_read(string(working_directory) + "data\\randomtext.txt")

var text_line_length = -1;
while(!file_text_eoln(text_file))
{
	file_text_readln(text_file);
	text_line_length++;
}

file_text_close(text_file);

randomtextvar= irandom(text_line_length)

var text_file2 = file_text_open_read(string(working_directory) + "data\\randomtext.txt")

repeat(randomtextvar)
	file_text_readln(text_file2);
	
var text_parts = file_text_read_string(text_file2);
var texts = string_split(text_parts, "/")

text[1]= texts[0]
text[2]= texts[1]

file_text_close(text_file2);

trace(text_line_length, randomtextvar)