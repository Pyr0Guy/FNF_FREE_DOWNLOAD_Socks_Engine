var __b__;
__b__ = action_if_variable(funnylol, false, 0);
if __b__
{
{
action_inherited();
///set cutscene sprites
if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 1:
            obj_cutscene.image_draw=10
            audio_resume_sound(mus_arkaid)
        break;
    }
    //special updating
}

}
}
