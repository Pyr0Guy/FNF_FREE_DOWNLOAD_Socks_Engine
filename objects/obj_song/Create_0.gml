/// @description ui colors
//health bar
houtline=c_black
hplayer=c_yellow
hbaddie=c_purple
//flow
foutline=c_black
fback=make_color_rgb(18,72,75)
ffull=make_color_rgb(83,206,213)
//icons
baddieicon=spr_stradicon
playericon=spr_dudeicon
//text color
tcolor=c_white
toutline=c_black

///extra vars
m=0
mm=0
mmm=0
mmmm=0
mmmmm=0
mmmmmm=0 //ok this is starting to get out of hand
mmmmmmm=0 //holy shmoley
//color vars
r=0
g=0
b=0
alph=0

///main vars
instance_create(0,0,obj_fadein)
image_speed=0
image_index=0
image_alpha=0
if obj_stats.downscroll=false {
    //y=16
    basey=48
} else {
    basey=352
}
//song vars
bpm=95
song=mus_tutorial
notespeed=3
notes=4
songpos=0
songplaying=0
paused=false
//points
skill=50
flow=0
coolscore=0
misses=0
accuracy = "?"

totalHitNote = 0
totalNote = 0
//paused
dudean=0
dudeim=0
badan=0
badim=0
weeknd3=false
weeknd3m=1
//extra
mcdonalds=false
ntsc=false
ntscdist=3
lol=window_get_x();
lol2=window_get_y();

alarm[0]=20
alarm[1]=50
alarm[2]=80
alarm[3]=110
alarm[4]=150
scr_songint(obj_stats.weekgoing);
spacey=48
surfaceh=true
//ploopy!
sel=0
event=0
saved=false

category = 0
offHud = false

pitch = 1;