if (obj_stats.bpm != "")
	bpm=obj_stats.bpm
else
	bpm=140

if (obj_stats.songFile != "")
	song=obj_stats.songFile
else
	song=mus_w2s1

songWrite = false;
songWriter = "test";

songFileWrite = false;
songFileWriter = obj_stats.songName;

bpmWrite = false
bpmWriter = "";

hitsoundCheck = false
playHitSound = false
hitsoundTimer = 0 

notespeed=1
songspeed = 1
notes=4
//unimportant crap
songlong=round(((audio_sound_length(song) / 60)*bpm*4))
songpos=-1
songplaying=0 //I wanted to make this a var
yy = 0;

//notes
var doubleNotes = notes*2;
grid = ds_grid_create(doubleNotes, songlong)

//grid

var i;
for (i=0;i<doubleNotes;i++) {	
    var dingus = instance_create(352+(i*16),64,obj_notecreater)
    with(dingus) {
        image_yscale=other.songlong;
    }
    dingus.row=i
    if i<doubleNotes/2 {
        dingus.image_blend=make_colour_hsv(181,157,145)
    } else {
        dingus.image_blend=make_colour_hsv(35,207,199)
    }
	
}

room_height = songlong;


option[0] = "New"
option[1] = "Load"
option[2] = "Save"
option[3] = "Note"
option[4] = "Exit"
option[5] = "Refresh"
submenop[1] = 0

randomise();
bg = irandom(10);

//List for note spaces
id_list = []