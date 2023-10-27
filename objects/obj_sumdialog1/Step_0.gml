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
        case 8:
            obj_cutscene.image_draw=3
        break;
        case 10:
            obj_cutscene.image_draw=4
        break;
    }
    //special updating
}

