var i;
for (i=0;i<4;i++) {
    if obj_player.sprite_index=obj_player.anim[i] or obj_player.sprite_index=obj_player.anim[i+4]{
        sprite_index=anim[i]
        x=xx
        y=yy
    }
    if obj_player.sprite_index=obj_player.anim[i+8] {
        sprite_index=anim[i+4]
        x=random(3)+xx
        y=random(3)+yy
    }
}
//extra animations
switch(obj_player.sprite_index) {
    case obj_player.pause:
        sprite_index=pause
    break;
    case obj_player.ayy:
        sprite_index=ayy
    break;
}
//seperate for loop because life isn't good
var hate;
for (hate=0;hate<3;hate++) {
    if obj_player.sprite_index=obj_player.idle[hate] {
        sprite_index=idle[hate]
    }
}
//animating
if obj_player.image_index<image_number-1 {
    image_index=obj_player.image_index
}
//yay!
if sprite_index=spr_ladymayy && !audio_is_playing(snd_ladyyay) {
    audio_play_sound(snd_ladyyay,9999,false)
}

