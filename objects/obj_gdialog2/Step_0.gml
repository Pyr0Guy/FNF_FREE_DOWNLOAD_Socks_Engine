action_inherited();
///set cutscene sprites
if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 7:
            obj_cutscene.image_draw=2
        break;
        case 8:
            obj_cutscene.image_draw=3
        break;
        case 10:
            if i<33 {
                obj_cutscene.image_draw=4 
            } else {
                obj_cutscene.image_draw=5
            }
        break;
        case 11:
            obj_cutscene.image_draw=6
        break;
        case 12:
            obj_cutscene.image_draw=5
        break;
        case 13:
            obj_cutscene.image_draw=7
        break;
        case 14:
            obj_cutscene.image_draw=8
        break;
    }
    //special updating
}

