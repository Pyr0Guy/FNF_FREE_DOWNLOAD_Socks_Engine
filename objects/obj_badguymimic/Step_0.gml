var i;
var ii;
for (ii=0;ii<2;ii++)    {
    for (i=0;i<4;i++) {
        if obj_badguy.sprite_index=obj_badguy.anim[i+(ii*4)] && mimic[ii]=true {
            sprite_index=anim[i+(ii*4)]
            x=xx
            y=yy
        }
    }
}
//extra animations
switch(obj_badguy.sprite_index) {
    case obj_badguy.pause:
        sprite_index=pause
    break;
    case obj_badguy.ayy:
        sprite_index=ayy
    break;
}
//seperate for loop because life isn't good
var hate;
for (hate=0;hate<3;hate++) {
    if obj_badguy.sprite_index=obj_badguy.idle[hate] {
        sprite_index=idle[hate]
    }
}
//animating
if obj_badguy.image_index<image_number-1 {
    image_index=obj_badguy.image_index
}
//yay!
if sprite_index=spr_ladymayy && !audio_is_playing(snd_ladyyay) {
    audio_play_sound(snd_ladyyay,9999,false)
}

////fdsfdsf
/*
var i;
for (i=0;i<4;i++) {
    if obj_badguy.sprite_index=obj_badguy.anim[i] && mimic[0]{
        sprite_index=anim[i]
        x=xx
        y=yy
    }
    if obj_badguy.sprite_index=obj_badguy.anim[i+8] {
        sprite_index=anim[i+4]
        x=random(3)+xx
        y=random(3)+yy
    }
}
//extra animations
switch(obj_badguy.sprite_index) {
    case obj_badguy.pause:
        sprite_index=pause
    break;
    case obj_badguy.ayy:
        sprite_index=ayy
    break;
}
//seperate for loop because life isn't good
var hate;
for (hate=0;hate<3;hate++) {
    if obj_badguy.sprite_index=obj_badguy.idle[hate] {
        sprite_index=idle[hate]
    }
}
//animating
if obj_badguy.image_index<image_number-1 {
    image_index=obj_badguy.image_index
}
//yay!
if sprite_index=spr_ladymayy && !audio_is_playing(snd_ladyyay) {
    audio_play_sound(snd_ladyyay,9999,false)
}

/* */
/*  */
