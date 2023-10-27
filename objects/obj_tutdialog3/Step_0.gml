action_inherited();
///set cutscene sprites
if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 6:
            obj_cutscene.image_draw=5
        break;
        case 7:
            obj_cutscene.image_draw=6
        break;
        case 8:
            if i<44 {
                obj_cutscene.image_draw=7
            } else {
                obj_cutscene.image_draw=8
                audio_stop_sound(mus_birthdayboy)
                if !audio_is_playing(snd_static) {
                    audio_play_sound(snd_static,9999,true)
                }
            }
        break;
    }
    //special updating
}

