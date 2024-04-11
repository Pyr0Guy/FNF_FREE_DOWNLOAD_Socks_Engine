//debug
debug=false
//options
screenscale=4
downscroll=false
readable=false
skin=0
in_game_fps = 60;

globalvar deltatime;
deltatime=room_speed/1000000*delta_time;

volume=1
//4 key

globalvar bind;
bind[0]=37 //right
bind[1]=40 //up
bind[2]=38 //down
bind[3]=39 //left
//gamepad
bind[4]=gp_face3 //right
bind[5]=gp_face1 //up
bind[6]=gp_face4 //down
bind[7]=gp_face2 //left
//6 key
//bind[8]=ord("D")
//bind[9]=ord("F")
//bind[10]=ord("G")
//bind[11]=ord("H")
//bind[12]=ord("J")
//bind[13]=ord("K")

//scores
//mini=-4 //how far negative the songlist goes
//maxi=7 //how many songs are there

songscore		= ds_map_create()
songmiss		= ds_map_create()
songaccuracy	= ds_map_create()
songlocked		= ds_map_create()
songnew			= ds_map_create()

what_i_need_to_save = [] //Dynamicly saving staff
namesong = ""
locked_songs =	[ //Still thinks about best solution for locking songs
				"infographic",  
				"channelsurfing & nermal", 
				"break it down triangle man",
				"cinemassacre"
]

for(var lock = 0; lock < array_length(locked_songs); lock++)
	songlocked[? locked_songs[lock]] = true; 


/*
//categories
cat[0]=4
cat[1]=3
cat[2]=2
cat[3]=2
//cat[4]=2


for(var b=0; b<array_length(cat); b++)
{
	for(var s=0; s<cat[b]; s++)
	{
		songscore[b][s]=0
	    songmiss[b][s]=0
		songaccuracy[b][s]=0
	    songlocked[b][s]=false
	    songnew[b][s]=false	
	}
}

songlocked[0][1]=true //locking break it down triangle man
songlocked[0][2]=true //locking channelsurfing & nermal
songlocked[0][3]=true //locking infographic
*/

weeknd_songs = [] //Temp var for story mode
weekgoing=1.2 // song you're going to
weekndgoing=1 //weeknd you're going to
cutgoing=3.2 // cutscene you're going to
joshmode=false
freeplay=false //are you playing a song in freeplay or storymode
thunderstonedroprate=2 //your welcome you unthankful fucks
gamepad=false
//other fun things
discord=true
playedw2=false //hides cd boy and gamejack in level screen
seenpopup=false //if the player has seen the control screen popup
bluedude=false //if the childish pranksterF wears a blue shirt
gndscore=0 //temp score for weeknd 2 cutscene
suckass=false //you suck
specialroom=0 //what funny little room will you get
fullscreen=0 //sorry me Tyler
category = 0 //In wich category in freeplay you go
select = 0 //Wich song you choose
scr_loadoptions();
//create lady's font
globalvar fnt_lady;
fnt_lady = font_add_sprite_ext(spr_ladyfont," qwertyuiopasdfghjklzxcvbnm",false,0)

/* */
///skin variables
//(you can tell I got help with this part because
//I never capitialize variable names (thanks deklaswas))
//hat
colorHat[0] = 192
colorHat[1] = 80
colorHat[2] = 100
//skin
colorSkin[0] = 238
colorSkin[1] = 214
colorSkin[2] = 196
//hair
colorHair[0] = 133
colorHair[1] = 199
colorHair[2] = 221
//shirt
colorShirt[0] = 249
colorShirt[1] = 221
colorShirt[2] = 237
//stripe
colorStripe[0] = 178
colorStripe[1] = 74
colorStripe[2] = 92
//pants
colorPants[0] = 97
colorPants[1] = 87
colorPants[2] = 146
//shoes
colorShoes[0] = 178
colorShoes[1] = 74
colorShoes[2] = 92
scr_skinint(skin)

//lines for charter
songFile = mus_w3s2
bpm = 140
songName = "";

globalvar shaderbroke;
globalvar shaderdisabled;
if shaders_are_supported() && shader_is_compiled(sh_ntsc) {
    shaderbroke=false
    shaderdisabled=false
} else {
    shaderbroke=true
    shaderdisabled=true
}

//Engine fun
funnyNotePos = false
randomize()
randomMenuSong = 0
botplay = false
save = true
PlayAyySound = true;

global.deactivated_instances = ds_list_create();
global.custom_audio_filenames = 0;

reg_fps = 1/60
global.actual_delta = delta_time/1000000;
global.delta_multiplier = global.actual_delta/reg_fps;

//Sel position for all rooms
selectedWord		= 0
storyModeSel		= 0
freeplayCategoryes	= 1
freeplayPosition	= 0

trace(window_get_width(), window_get_height());