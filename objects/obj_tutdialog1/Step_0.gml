action_inherited();
///set cutscene sprites
if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 1:
            obj_cutscene.image_draw=1
        break;
        case 3:
            obj_cutscene.image_draw=2
        break;
    }
    //special updating
}

