action_inherited();
///set cutscene sprites
if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 1:
            obj_cutscene.image_draw=3
        break;
        case 11:
            obj_cutscene.image_draw=4
        break;
    }
    //special updating
}

