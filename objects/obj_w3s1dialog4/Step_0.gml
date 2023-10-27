/// @description set cutscene sprites
if cdscare=false {
action_inherited();
if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 1:
            obj_cutscene.image_draw=0
            if !audio_is_playing(mus_cats) {
                audio_play_sound(mus_cats,9999,true)
            }
        break;
        case 2:
            obj_cutscene.image_draw=1
        break;
        case 4:
            obj_cutscene.image_draw=2
        break;
        case 6:
            obj_cutscene.image_draw=3
        break;
        case 7:
            obj_cutscene.image_draw=2
        break;
        case 12:
            obj_cutscene.image_draw=4
        break;
        case 14:
            obj_cutscene.image_draw=5
            audio_pause_sound(mus_cats)
        break;
        case 15:
            obj_cutscene.image_draw=6
        break;
        case 16:
            obj_cutscene.image_draw=4
            audio_resume_sound(mus_cats)
        break;
        case 22:
            obj_cutscene.image_draw=7
        break;
        case 36:
            obj_cutscene.image_draw=8
            audio_stop_sound(mus_cats)
            if !audio_is_playing(mus_mysweetheart) {
                audio_play_sound(mus_mysweetheart,9999,true)
            }
        break;
        case 39:
            obj_cutscene.image_draw=9
        break;
        case 40:
            obj_cutscene.image_draw=10
        break;
        case 45:
            obj_cutscene.image_draw=11
        break;
        case 47:
            obj_cutscene.image_draw=12
        break;
        case 55:
            if i>=100 {
                audio_stop_sound(mus_mysweetheart)
            }
            var volume=0
        break;
        case 59:
            obj_cutscene.image_draw=13
        break;
        case 60:
            if !audio_is_playing(mus_buddy) {
                var dudewtf = audio_play_sound(mus_buddy,0,true)
                audio_sound_gain(dudewtf,0,0)
                audio_sound_gain(dudewtf,1,20000)
            }
        break;
        case 70:
            obj_cutscene.image_draw=14
        break;
        case 79:
            audio_stop_sound(mus_buddy)
            obj_cutscene.image_draw=15
            cdscare=true
            audio_play_sound(snd_doorslam2,9999,false)
            alarm[0]=45
        break;
        case 81:
            if !audio_is_playing(mus_bbbb) {
                audio_play_sound(mus_bbbb,9999,true)
            }
        break;
        case 82:
            obj_cutscene.image_draw=18
        break;
        
    }
    //special updating
    /*
    if text>=60 && text<80 {
        if !audio_is_playing(mus_buddy) {
                var dudewtf = audio_play_sound(mus_buddy,0,true)
                audio_sound_gain(dudewtf,0,0)
                audio_sound_gain(dudewtf,1,10000)
        }
    }
    */
}
}

/* */
/*  */
