var __b__;
__b__ = action_if_variable(staticscreen, false, 0);
if __b__
{
{
action_inherited();
///set cutscene sprites
if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 1:
            audio_stop_sound(snd_static)
            obj_cutscene.image_draw=10
        break;
        case 4:
            if i<29 {
                obj_cutscene.image_draw=11
            } else {
                obj_cutscene.image_draw=12
            }
        break;
        case 6:
            obj_cutscene.image_draw=13
        break;
    }
    //special updating
}

}
}
