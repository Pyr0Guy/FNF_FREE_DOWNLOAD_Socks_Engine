action_inherited();
///set cutscene sprites

if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 1:
            obj_cutscene.image_draw=19
        break;
        case 5:
            obj_cutscene.image_draw=20
        break;
        case 8:
            if i=ii {
                text++
                i=0                
            }
        break;
        case 10:
            obj_cutscene.image_draw=21
        break;
    }
    //special updating
}

