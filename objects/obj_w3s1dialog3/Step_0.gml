action_inherited();
///set cutscene sprites
if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 1:
            obj_cutscene.image_draw=11
            audio_stop_sound(mus_arkaid)
        break;
        case 6:
            obj_cutscene.image_draw=12
            if !audio_is_playing(mus_kindaAbadass) {
                audio_play_sound(mus_kindaAbadass,9999,true)
            }
        break;
        case 23:
            obj_cutscene.image_draw=13
            audio_pause_sound(mus_arkaid)
            if i=1 {
                audio_play_sound(snd_missing,9999,true)
            }
            if i>=ii {
                text++
                i=0
            }
        break;
        case 24:
            audio_resume_sound(mus_arkaid)
            audio_stop_sound(snd_missing)
        break;
    }
    //special updating
}

