action_inherited();
///set cutscene sprites
if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 1:
            obj_cutscene.image_draw=0
        break;
        case 4:
            obj_cutscene.image_draw=1
        break;
        case 5:
            obj_cutscene.image_draw=2
        break;
        case 9:
            obj_cutscene.image_draw=3
        break;
        case 10:
            obj_cutscene.image_draw=4
        break;
        case 12:
            obj_cutscene.image_draw=5
        break;
        case 20:
            audio_stop_sound(mus_crazyjohnny)
            obj_cutscene.image_alpha=0
        break;
        case 21:
            obj_cutscene.image_draw=6
            obj_cutscene.image_alpha=1
        break;
    }
    //special updating
}

