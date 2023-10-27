//trace(song, typeof(song))

//pause
if ((keyboard_check_pressed(ord("z")) or keyboard_check_pressed(vk_escape) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_start)) && instance_exists(obj_midi_clock) && songpos>0.1) {
    audio_play_sound(snd_recordscratch,9999,false)
    if audio_is_paused(songplaying) && sel=0 {
        paused=false
        audio_resume_sound(songplaying)
        obj_midi_clock.paused=false
        obj_badguy.paused=false
        obj_badguy.sprite_index=badan
        obj_badguy.image_index=badim
        obj_player.sprite_index=dudean
        obj_player.image_index=dudeim
    } else {
        paused=true
        audio_pause_sound(songplaying)
        dudean=obj_player.sprite_index
        dudeim=obj_player.image_index
        badan=obj_badguy.sprite_index
        badim=obj_badguy.image_index
		//instance_destroy(obj_midi_clock)
        obj_midi_clock.paused=true
        obj_player.sprite_index=obj_player.pause
        obj_badguy.sprite_index=obj_badguy.pause
        obj_player.image_index=0
        obj_badguy.paused=true
    }
}


if paused=false {
//countdown
    if image_alpha>0{
        image_alpha-=0.05
    }
//culling
//Dont be like me and have the culling check run every frame! It's not good for the environment!!
if songpos >= 0.01 {
    if obj_stats.downscroll=false {
        instance_deactivate_region(-room_width,-600,room_width*2,1800+(y*-1),false,true)
        instance_activate_region(-room_width,-600,room_width*2,1800+(y*-1),true)
        //instance_activate_region(-room_width,-600,room_width*2,1800,true)
    } else {
        instance_deactivate_region(-room_width,-600+(y*-1),room_width*2,1800+y,false,true)
        instance_activate_region(-room_width,-600+(y*-1),room_width*2,1800+y,true)
        //instance_activate_region(-room_width,-600+(y*-1),room_width*2,1800+y,true)
    }
}
//surfaces actually stink really bad wow this sux
if window_has_focus() {
    if surfaceh=false {
        ui=surface_create(400,400)
        surfaceh=true
    }
} else {
    surfaceh=false
}
//mcdonalds
    if keyboard_check_pressed(ord("9")) or gamepad_button_check_pressed(0,gp_shoulderl){
        mcdonalds=!mcdonalds
		playericon = mcdonalds ? spr_dudeicon : spr_momgotmcdonalds;
    }
    //notes funny
    if notes>4 {
        var spacey=29
    } else {
        var spacey=48
    }
        songpos=audio_sound_get_track_position(songplaying)
        if obj_stats.downscroll = false {
            y=-(songpos/60*bpm*4)*(spacey*notespeed)
        } else {
            y=+(songpos/60*bpm*4)*(spacey*notespeed)
    }
	//funny
	audio_sound_pitch(songplaying, pitch);
//game over
    if skill>=100 {
		game_set_speed(60, gamespeed_fps);
        room_goto(rm_gameover)
    }
//end song
    if songpos>=(audio_sound_length(songplaying)-0.1) {
        //scoreing
        if saved=false {
            if coolscore>obj_stats.songscore[obj_stats.category][obj_stats.select]{
				trace(obj_stats.category, "||", obj_stats.select)
                obj_stats.songscore[obj_stats.category][obj_stats.select]=coolscore
                obj_stats.songmiss[obj_stats.category][obj_stats.select]=misses
				obj_stats.songaccuracy[obj_stats.category][obj_stats.select]=accuracy
				obj_stats.songnew[obj_stats.category][obj_stats.select]=false;
                scr_saveoptions();
                saved=true
            }   
        }
		game_set_speed(60, gamespeed_fps);
        //where to go
        if obj_stats.freeplay = false {
            if !instance_exists(obj_fadeout){
                instance_create(0,0,obj_fadeout)
                obj_fadeout.roomgo=rm_cutscenes
                obj_stats.cutgoing+=0.1
            }
        } else {
            if !instance_exists(obj_fadeout) {
                instance_create(0,0,obj_fadeout)
            }
            obj_fadeout.roomgo=rm_freeplay
            if !audio_is_playing(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong))) {
                audio_play_sound(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong)),9999,true)
            }
        }
    }
}

accuracy = string(min(1, max(0, totalHitNote / totalNote)) * 100)