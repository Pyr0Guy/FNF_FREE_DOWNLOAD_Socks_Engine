var keys=keyboard_string
var i;
for(i=0;i<array_length_1d(code);i++) {
    if string_copy(keys,string_length(keys)-string_length(code[i])-1,string_length(keys))=code[i] {
        switch(i) {
            case 0:
                audio_play_sound(snd_unlockall,9999,false)
				for(var lock = 0; lock < array_length(obj_stats.locked_songs); lock++) //Well i think i made locked songs array just for cheat code, fuck
				{
					var song = obj_stats.locked_songs[lock]
					obj_stats.songscore[? song] = 0;
					obj_stats.songmiss[? song] = 0;
					obj_stats.songaccuracy[? song] = 0;
					obj_stats.songlocked[? song] = false
					obj_stats.songnew[? song] = true
					
					if(!array_contains(obj_stats.what_i_need_to_save, song))
						array_push(obj_stats.what_i_need_to_save, song)
				}
                //clear string
                string_delete(keys,1,string_length(keys))
                keyboard_string=""
            break;
            case 2: //soundtest
                audio_stop_all();
                obj_stats.specialroom="soundtest"
                room_goto(rm_special)
                //clear string
                string_delete(keys,1,string_length(keys))
                keyboard_string=""
            break;
            case 3: //botplay
                audio_play_sound(snd_doorslam,9999,false)
	
				obj_stats.botplay = true
                //clear string
                string_delete(keys,1,string_length(keys))
                keyboard_string=""
            break;
			case 4: //Charter
				audio_stop_all();
	
				window_set_size(1280, 720)
				window_center()
				surface_resize(application_surface, 1280, 720)
			    room_goto(rm_chater)
				
				//clear string
                string_delete(keys,1,string_length(keys))
                keyboard_string=""
			break;
			case 5: //Rainbow
				obj_stats.weekgoing="rainbow"
				obj_stats.freeplay=false
				instance_create(0,0,obj_fadeout)
				obj_fadeout.roomgo=rm_stage
				audio_stop_sound(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong)))
				
				//clear string
                string_delete(keys,1,string_length(keys))
                keyboard_string=""
			break;
        }
    }
}

/*
"gullible"
"deeper secrets"

/* */
/*  */

/*

Long story here,

this was the old way I coded in using cheat
codes. in "lame man's" terms, I made 5 variables
in the "create event" that are used to represent
the 5 most recent keys that the user typed. anytime
the user presses a key on their keyboard the first
variable out of the 5 is set to the key pressed and
the other 4 equal the value of the variable
before it in order. then there is a line of code
that checks if all the variables spell out stink,
in reverse, naturally. and then and only then
does the game unlock everysong. This was coded
like this for awhile but then funne was 
making a port of his life changing game
"chimp game" and wanted to add an ending that
you unlock by typing in, you guessed it;
mark, I told him how I did it and thats when
a friend of mine said, "wait why are you
doing it like that? just use string_copy"
he then proceded to write 2 lines of code
that included a if statement and 1 temp
variable to do what I needed an array and
a zillion lines of code to do. I usally try
to live by the rule that, if the game runs
fine and it works, whatever but wow that
was embarrassing. its not even that I
have never used string copy before it had
just never crossed my mind to use the statement
that is designed to read certain sections
of strings. So yeah, thats why this object
uses the "I_AM_A_PRO" sprite. I also decided
to leave all the old code in so you can
be in awe on how much of a fool I was.


///stink!
if keyboard_check_pressed(vk_anykey) {
    var s;
    for (s=5;s>0;s--) {
        key[s]=key[s-1]
    }
    key[0]=keyboard_lastchar
}
if ((key[0]="K" && key[1]="N" && key[2]="I" && key[3]="T" && key[4]="S") or (key[0]="k" && key[1]="n" && key[2]="i" && key[3]="t" && key[4]="s")) {
    audio_play_sound(snd_unlockall,9999,false)
    var unlock;
    var getout;
    //i unlocked the songs
    for (unlock=0;unlock<(obj_stats.mini*-1)+obj_stats.maxi;unlock++) {
        obj_stats.songlocked[unlock]=false
    }
    //now get out
    for (getout=0;getout<5;getout++) {
        key[getout]=-1
    }
}

/* */
/*  */
