song=obj_stats.cutgoing
songplaying=-1
alarm[0]=50
started=false
squigliness_invert_value=1


//dan song frames
var s;
for(s=0;s<4;s++) {
    dframe[s]=0
}
//debug
audio_stop_sound(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong)))

openName = ""