action_inherited();
///set cutscene sprites
if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 1:
            obj_cutscene.image_draw=0
            if !audio_is_playing(mus_birthdayboy) {
                audio_play_sound(mus_birthdayboy,9999,true)
            }
        break;
        case 10:
            audio_pause_sound(mus_birthdayboy)
        break;
        case 11:
            obj_cutscene.image_draw=1
        break;
        case 12:
            obj_cutscene.image_draw=2
        break;
        case 13:
            obj_cutscene.image_draw=3
        break;
        case 14:
            obj_cutscene.image_draw=4
            audio_resume_sound(mus_birthdayboy)
        break;
        case 15:
            obj_cutscene.image_draw=5
        break;
        case 16:
            obj_cutscene.image_draw=6
        break;
        case 17:
            obj_cutscene.image_draw=7
        break;
    }
    //special updating
}

