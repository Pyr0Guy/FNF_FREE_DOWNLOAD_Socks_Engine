action_inherited();
///set cutscene sprites

if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 1:
            obj_cutscene.image_draw=0
            i=ii
        break;
        case 4:
            obj_cutscene.image_draw=1
        break;
    }
    //special updating
}

