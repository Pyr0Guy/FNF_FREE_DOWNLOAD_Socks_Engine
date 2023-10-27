action_inherited();
///set cutscene sprites
if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 1:
            obj_cutscene.image_draw=5
        break;
        case 2:
            obj_cutscene.image_draw=6
        break;
        case 8:
            audio_stop_sound(mus_birthdayboy)
        break;
        case 11:
            if !audio_is_playing(mus_pictocyan) {
                audio_play_sound(mus_pictocyan,9999,true)
            }
            obj_cutscene.image_draw=7
        break;
    }
    //special updating
}

