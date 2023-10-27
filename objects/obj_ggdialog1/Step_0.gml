action_inherited();
///set cutscene sprites
if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 1:
            obj_cutscene.image_draw=14
        break;
        case 6:
            obj_cutscene.image_draw=0
        break;
        case 7:
            obj_cutscene.image_draw=1
        break;
        case 11:
            obj_cutscene.image_draw=2
        break;
        case 12:
            obj_cutscene.image_draw=3
        break;
        case 13:
            obj_cutscene.image_draw=4
        break;
        case 14:
            obj_cutscene.image_draw=5
        break;
        case 15:
            obj_cutscene.image_draw=6
        break;
        case 17:
            audio_stop_sound(mus_pictocyan)
            obj_cutscene.image_draw=7
        break;
        case 18:
            if !audio_is_playing(mus_player2) {
                audio_play_sound(mus_player2,9999,true)
            }
            if i<59 {
                obj_cutscene.image_draw=8
            } else {
                obj_cutscene.image_draw=9
            }
        break;
        case 20:
            obj_cutscene.image_draw=10
        break;
        case 21:
            if i<29 {
                obj_cutscene.image_draw=11
            } else {
                voice[21]="cd-cyan"
                obj_cutscene.image_draw=12
            }
        break;
        case 22:
            obj_cutscene.image_draw=13
            if i=31 {
                audio_pause_sound(mus_player2)
                audio_play_sound(snd_win,9999,false)
            }
        break;
        case 23:
            audio_resume_sound(mus_player2)
        break;
        case 24:
            obj_cutscene.image_draw=10
        break;
        case 26:
            obj_cutscene.image_draw=14
        break;
        case 27:
            if i=84 {
                audio_pause_sound(mus_player2)
                audio_play_sound(snd_own,9999,false)
            }
        break;
        case 28:
            audio_resume_sound(mus_player2)
            obj_cutscene.image_draw=15
        break;
        case 29:
            obj_cutscene.image_draw=16
        break;
        case 30:
            obj_cutscene.image_draw=17
        break;
        case 31:
            if i=119 {
                audio_pause_sound(mus_player2)
                audio_play_sound(snd_own,9999,false)
            }
            if i<ii {
                obj_cutscene.image_draw=18
            } else {
                obj_cutscene.image_draw=19
            }
        break;
        case 32:
            audio_resume_sound(mus_player2)
            obj_cutscene.image_draw=20
        break;
        case 37:
            obj_cutscene.image_draw=21
        break;
        case 38:
            if i<16 {
                obj_cutscene.image_draw=22
            }
            if i>16 && i < 48 {
                obj_cutscene.image_draw=23
            }
            if i > 48 {
                obj_cutscene.image_draw=24
            }
        break;
        case 39:
            obj_cutscene.image_draw=25
        break;
        case 41:
            audio_stop_sound(mus_player2)
            obj_cutscene.image_draw=18
        break;
        case 44:
            obj_cutscene.image_draw=26
        break;
    }
    //special updating
}

