/// @description set cutscene sprites
if pause=false {
action_inherited();
if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 1:
            obj_cutscene.image_draw=0
            if !audio_is_playing(mus_bbbb) {
                var scary = audio_play_sound(mus_bbbb,9999,true)
                audio_sound_pitch(scary,0.55)
            }
        break;
        case 2:
            obj_cutscene.image_draw=1
        break;
        case 3:
            //obj_cutscene.image_draw=2
        break;
        case 4:
            obj_cutscene.image_draw=3
        break;
        case 8:
            obj_cutscene.image_draw=4
            audio_stop_sound(mus_bbbb)
        break;
        case 9:
            obj_cutscene.image_blend=c_black
            audio_play_sound(snd_cdboydeath,9999,false)
            pause=true
            alarm[0]=80
        break;
        case 10:
        break;
        case 11:
            if !audio_is_playing(mus_kindaAbadass) {
                audio_play_sound(mus_kindaAbadass,9999,true)
            }
        break;
        case 16:
            obj_cutscene.image_draw=7
        break;
        case 18:
            //obj_cutscene.image_draw=8
        break;
        case 19:
            if i=ii {
                text+=1
                i=0
            }
        break;
        case 20:
            obj_cutscene.image_draw=9
            audio_stop_sound(mus_kindaAbadass)
            if !audio_is_playing(mus_bozo) {
                audio_play_sound(mus_bozo,9999,true)
            }
        break;
        case 23:
            //obj_cutscene.image_draw=10
            audio_pause_sound(mus_bozo)
        break;
        case 24:
            obj_cutscene.image_draw=11
            audio_resume_sound(mus_bozo)
        break;
        case 32:
            obj_cutscene.image_draw=12
            audio_stop_sound(mus_bozo)
        break;
        case 33:
            obj_cutscene.image_draw=13
        break;
        case 34:
            obj_cutscene.image_draw=14
            if !audio_is_playing(mus_birthdayboy) {
                var dude = audio_play_sound(mus_birthdayboy,9999,true)
                audio_sound_pitch(dude,2)
            }
        break;
        case 35:
            //obj_cutscene.image_draw=15
        break;
        case 37:
            obj_cutscene.image_draw=16
        break;
        case 38:
            obj_cutscene.image_draw=17
            audio_sound_gain(mus_birthdayboy,0,1500)
        break;
        case 39:
            audio_stop_sound(mus_birthdayboy)
        break;
        case 40:
            obj_cutscene.image_draw=18
        break;
        case 41:
            obj_cutscene.image_draw=19
        break;
        case 42:
            obj_cutscene.image_draw=20
        break;
        case 44:
            obj_cutscene.image_draw=21
        break;
        case 45:
            if !audio_is_playing(mus_specialguest) {
                var gunk = audio_play_sound(mus_specialguest,9999,true)
                audio_sound_pitch(gunk,0.55)
            }
        break;
        case 54:
            audio_pause_sound(mus_specialguest)
            audio_play_sound(snd_hoodie,9999,false)
            obj_cutscene.image_blend=c_black
            alarm[7]=35
            pause=true
        break;
        case 55:
            obj_cutscene.image_draw=22
            audio_resume_sound(mus_specialguest)
            audio_sound_pitch(mus_specialguest,1)
        break;
        case 56:
            if i=23 {
                audio_pause_sound(mus_specialguest)
                audio_play_sound(snd_gasp,9999,false)
            }
        break;
        case 57:
            audio_resume_sound(mus_specialguest)
        break;
        case 72:
            if i=18 {
                text++
                i=0
            }
        break;
        case 78:
            obj_cutscene.image_draw=23
            audio_stop_sound(mus_specialguest)
        break;
        case 87:
            obj_cutscene.sprite_draw=spr_tutcutscene
            obj_cutscene.image_draw=19
        break;
    }
    //special updating
}
}

