action_inherited();
///set cutscene sprites
if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 1:
            obj_cutscene.image_draw=0
        break;
        case 2:
            obj_cutscene.image_draw=1
        break;
        case 3:
            obj_cutscene.image_draw=2
        break;
        case 4:
            obj_cutscene.image_draw=3
        break;
        case 6:
            obj_cutscene.image_draw=5
        break;
        case 8:
            if i>=ii {
                text+=1
                i=0
            }
        break;
        case 12:
            obj_cutscene.image_draw=6
            audio_stop_sound(mus_arkaid)
            if !audio_is_playing(mus_birthdayboy) {
                var dude = audio_play_sound(mus_birthdayboy,9999,true)
                audio_sound_pitch(dude,2)
            }
        break;
        case 16:
            if i=14 {
                audio_stop_sound(mus_birthdayboy)
            }
        break;
        case 18:
            obj_cutscene.image_draw=3
            audio_stop_sound(mus_birthdayboy)
            if !audio_is_playing(mus_arkaid) {
                audio_play_sound(mus_arkaid,9999,true)
            }
        break;
        case 20:
            obj_cutscene.image_draw=4
        break;
        case 25:
            audio_pause_sound(mus_arkaid);
        break;
    }
    //special updating
}

