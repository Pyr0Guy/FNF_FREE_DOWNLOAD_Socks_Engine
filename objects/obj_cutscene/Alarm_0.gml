/// @description cutscene timing
switch(obj_stats.cutgoing) {
    case 0: //tutorial
        switch(turn) {
            case 0:
				obj_stats.category = 1
				obj_stats.select = 0
                audio_play_sound(snd_doorknock,9999,false)
                alarm[0]=30
            break;
            case 1:
                instance_create(0,0,obj_tutdialog1)
                audio_play_sound(mus_birthdayboy,9999,true)
            break;
            case 2:
                instance_create(0,0,obj_tutdialog2)
            break;
            case 3:
                instance_create(0,0,obj_tutdialog3)
            break;
            case 4:
                alarm[0]=50
            break;
            case 5:
                instance_create(0,0,obj_tutdialog4)
            break;
            case 6:
                instance_create(0,0,obj_fadeout)
                audio_stop_sound(mus_bozo)
                obj_fadeout.roomgo=rm_stage
            break;
        }
        turn++
    break;
    case 0.1: //tutorial ending
        switch(turn) {
            case 0:
                audio_play_sound(mus_birthdayboy,9999,true)
                instance_create(0,0,obj_tutdialog5)
            break;
            case 1:
                instance_create(0,0,obj_fadeout)
                audio_stop_sound(mus_ohcrap)
                obj_fadeout.roomgo=rm_stageselect
                audio_play_sound(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong)),9999,true)
            break;
        }
        turn++
    break;
    case 1: //summer start
        switch(turn) {
            case 0:
				obj_stats.category = 1
				obj_stats.select = 1
                audio_play_sound(mus_crazyjohnny,999,true)
                instance_create(0,0,obj_fadein)
                instance_create(0,0,obj_sumdialog1)
            break;
            case 1:
                instance_create(0,0,obj_fadeout)
                audio_stop_sound(mus_crazyjohnny)
                obj_fadeout.roomgo=rm_stage
            break;
        }
        turn++
    break;
    case 1.1: //summer end/stars start
        switch(turn) {
            case 0:
                audio_play_sound(mus_crazyjohnny,999,true)
                instance_create(0,0,obj_sumdialog2)
            break;
            case 1:
                instance_create(0,0,obj_fadeout)
                audio_stop_sound(mus_crazyjohnny)
				obj_stats.category = 1
				obj_stats.select = 2
                obj_fadeout.roomgo=rm_stage
                obj_stats.weekgoing++
            break;
        }
        turn++
    break;
    case 1.2: //stars ending
        switch(turn) {
            case 0:
                instance_create(0,0,obj_stardialog1)
            break;
            case 1:
                audio_stop_sound(mus_birthdayboy)
                if obj_stats.songlocked[0][3]=true {
                    instance_create(0,0,obj_unlocksong);
                    instance_destroy();
                } else {
                    instance_create(0,0,obj_fadeout)
                    obj_fadeout.roomgo=rm_stageselect
                    audio_play_sound(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong)),9999,true)
                }
            break;
        }
        turn++
    break;
    case 2: //girl next door opening
        switch(turn) {
            case 0:
				obj_stats.category = 2
				obj_stats.select = 0
                audio_play_sound(mus_birthdayboy,9999,true)
                instance_create(0,0,obj_gnddialog1)
            break;
            case 1:
                instance_create(0,0,obj_gnddialog2)
            break;
            case 2:
                audio_pause_sound(mus_pictocyan)
                audio_play_sound(mus_w1s2_slow_reverb,9999,true)
                alarm[0]=20
                image_draw=8
                //instance_create(0,0,obj_gnddialog3)
            break;
            case 3:
                alarm[0]=40
                image_draw=9
            break;
            case 4:
                alarm[0]=40
                image_draw=10
            break;
            case 5:
                alarm[0]=40
                image_draw=11
            break;
            case 6:
                alarm[0]=100
                image_draw=12
            break;
            case 7:
                alarm[0]=70
                image_draw=13
            break;
            case 8:
                image_draw=14
                audio_stop_sound(mus_w1s2_slow_reverb)
                audio_resume_sound(mus_pictocyan)
                instance_create(0,0,obj_gnddialog3)
            break;
            case 9:
                audio_stop_sound(mus_pictocyan)
                audio_play_sound(snd_WHAM,9999,false)
                instance_create(0,0,obj_fadein)
                obj_fadein.color=c_red
                alarm[0]=2
                image_draw=15
            break;
            case 10:
                alarm[0]=2
                image_draw=16
            break;
            case 11:
                alarm[0]=2
                image_draw=15
            break;
            case 12:
                alarm[0]=2
                image_draw=16
            break;
            case 13:
                alarm[0]=2
                image_draw=15
            break;
            case 14:
                alarm[0]=2
                image_draw=16
            break;
            case 15:
                alarm[0]=2
                image_draw=15
            break;
            case 16:
                alarm[0]=2
                image_draw=16
            break;
            case 17:
                alarm[0]=2
                image_draw=15
            break;
            case 18:
                alarm[0]=2
                image_draw=16
            break;
            case 19:
                alarm[0]=2
                image_draw=15
            break;
            case 20:
                alarm[0]=2
                image_draw=16
            break;
            case 21:
                alarm[0]=2
                image_draw=15
            break;
            case 22:
                alarm[0]=2
                image_draw=16
            break;
            case 23:
                alarm[0]=2
                image_draw=15
            break;
            case 24:
                alarm[0]=2
                image_draw=16
            break;
            case 25:
                alarm[0]=2
                image_draw=15
            break;
            case 26:
                alarm[0]=2
                image_draw=16
            break;
            case 27:
                alarm[0]=2
                image_draw=15
            break;
            case 28:
                alarm[0]=2
                image_draw=16
            break;
            case 29:
                alarm[0]=2
                image_draw=15
            break;
            case 30:
                alarm[0]=2
                image_draw=16
            break;
            case 31:
                alarm[0]=2
                image_draw=15
            break;
            case 32:
                alarm[0]=2
                image_draw=16
            break;
            case 33:
                alarm[0]=2
                image_draw=15
            break;
            case 34:
                alarm[0]=2
                image_draw=16
            break;
            case 35:
                alarm[0]=2
                image_draw=15
            break;
            case 36:
                alarm[0]=2
                image_draw=16
            break;
            case 37:
                alarm[0]=2
                image_draw=15
            break;
            case 38:
                alarm[0]=2
                image_draw=16
            break;
            case 39:
                alarm[0]=2
                image_draw=15
            break;
            case 40:
                alarm[0]=2
                image_draw=16
            break;
            case 41:
                alarm[0]=2
                image_draw=15
            break;
            case 42:
                audio_play_sound(snd_static,9999,true)
                alarm[0]=80
                image_draw=17
            break;
            case 43:
                alarm[0]=80
                image_draw=18
            break;
            case 44:
                image_draw=19
                audio_stop_sound(snd_static)
                audio_play_sound(mus_bozo,9999,true)
                instance_create(0,0,obj_gnddialog4)
            break;
            case 45:
                audio_stop_sound(mus_bozo)
                instance_create(0,0,obj_fadeout)
                obj_fadeout.roomgo=rm_stage
            break;
        }
        turn++
    break;
    case 2.1: //girl next door to gamejack
        switch(turn) {
            case 0:
                audio_play_sound(mus_pictocyan,9999,true)
                instance_create(0,0,obj_ggdialog1)
            break;
            case 1:
                instance_create(0,0,obj_fadeout)
				obj_stats.category = 2
				obj_stats.select = 1
                obj_fadeout.roomgo=rm_stage
                obj_stats.weekgoing++
            break;
        }
        turn++
    break;
    case 2.2: //gamejack ending
        switch(turn) {
            case 0:
                audio_play_sound(mus_unknownvariable,9999,true)
                instance_create(0,0,obj_gdialog1)
            break;
            case 1:
                instance_create(0,0,obj_gdialog2)
            break;
            case 2:
                audio_stop_sound(mus_unknownvariable)
                if obj_stats.songlocked[0][2]=true {
                    instance_create(0,0,obj_unlocksong);
                    instance_destroy();
                } else {
                    instance_create(0,0,obj_fadeout)
                    obj_fadeout.roomgo=rm_stageselect
                    audio_play_sound(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong)),9999,true)
                }
                obj_stats.playedw2=true
            break;
        }
        turn++
    break;
    case 3: //twinkle
        switch(turn) {
            case 0:
				obj_stats.category = 3
				obj_stats.select = 0
                audio_play_sound(mus_arkaid,9999,true)
                instance_create(0,0,obj_w3s1dialog1)
            break;
            case 1:
                instance_create(0,0,obj_w3s1dialog2)
            break;
            case 2:
                instance_create(0,0,obj_w3s1dialog3)
            break;
            case 3:
                instance_create(0,0,obj_fadeout)
                obj_fadeout.roomgo=rm_stage
            break;
        }
        turn++
    break;
    case 3.1: //twinkle ending
        switch(turn) {
            case 0:
				obj_stats.category = 2
				obj_stats.select = 1
                instance_create(0,0,obj_w3s1dialog4)
            break;
            case 1:
                instance_create(0,0,obj_fadeout)
                obj_fadeout.roomgo=rm_stage
                obj_stats.weekgoing++
                audio_stop_sound(mus_bbbb)
            break;
        }
        turn++
    break;
    case 3.2: //this song isn't in yet but this is it's ending
        switch(turn) {
            case 0:
                instance_create(0,0,obj_w3s2dialog1)
            break;
            case 1:
                audio_stop_sound(mus_unknownvariable)
                if obj_stats.songlocked[0][1]=true {
                    instance_create(0,0,obj_unlocksong);
                    instance_destroy();
                } else {
                    instance_create(0,0,obj_fadeout)
                    obj_fadeout.roomgo=rm_stageselect
                    audio_play_sound(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong)),9999,true)
                }
                obj_stats.playedw2=true
            break;
        }
        turn++
    break;
}

