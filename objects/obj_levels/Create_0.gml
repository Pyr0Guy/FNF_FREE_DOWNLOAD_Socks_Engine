image_speed=0
image_index=0
y=61

all_files = []

weeks_going = []

searchfile = file_find_first(string(working_directory) + "data//weeknds//*.txt", fa_none);
files = 0;

while searchfile != ""
{
    files++;
	array_push(all_files, searchfile)
    searchfile = file_find_next();
}

weeks = files

weeks_going_name = array_create(weeks, -1)

for(var i = 0; i < weeks; i++){
	for(var j = 0; j < 2; j++){
		songname[i][j] = ""		
	}
}

sel = 0

for(var b=0; b<weeks; b++)
{
	var weeknd_file = file_text_open_read(string(working_directory) + "data//weeknds//" + string(all_files[b]))
	
	var weeknd_pos = file_text_read_real(weeknd_file)
	array_push(weeks_going, weeknd_pos)
	var weeknd_name = string_replace(all_files[b], ".txt", "")
	array_set(weeks_going_name, weeknd_pos, weeknd_name)
	
	file_text_readln(weeknd_file)
	
	songname[weeknd_pos][0] = file_text_read_string(weeknd_file)
	file_text_readln(weeknd_file)
	
	songname[weeknd_pos][1] = file_text_read_string(weeknd_file)
	file_text_readln(weeknd_file)
	
	difficulty[weeknd_pos]  = file_text_read_string(weeknd_file)
	
	file_text_close(weeknd_file)
}

//if !obj_stats.playedw2
//    songname[2,1]="gameplay"