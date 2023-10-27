action_inherited();
///set cutscene sprites
if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 1:
            obj_cutscene.image_draw=14
        break;
        case 9:
            obj_cutscene.image_draw=18
        break;
        case 13:
            audio_stop_sound(mus_birthdayboy)
            obj_cutscene.image_draw=19
        break;
    }
    //special updating
}

