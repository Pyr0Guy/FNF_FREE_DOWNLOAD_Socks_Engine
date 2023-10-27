/// @description key press old
/* */
///hit note new
if obj_song.paused=false {
    var n;
    for (n=0;n<obj_song.notes;n++) {
        //actually hit note
        if obj_stats.botplay || keyboard_check_pressed(obj_stats.bind[n]) or gamepad_button_check_pressed(0,obj_stats.bind[n+4]) {
			if hit[n] == true {
			
                hit[n]=false
                press=true
                frame=0
				combo++
                sprite_index=anim[n]
            } else {
                obj_song.skill+=1+(4*(1-obj_song.flow))
                obj_song.flow-=0.1
                obj_song.misses+=1
                obj_song.coolscore-=50
				if(combo > highCombo)
					highCombo = combo
				combo = 0
                press=true
                frame=0
                sprite_index=anim[(n+8)]
                //sound
                randomize();
                var ow = audio_play_sound(snd_owch,9999,false)
                var pitch = 0.6 + random(0.8)
                audio_sound_pitch(ow,pitch)
            }
        }
    }
//animations
    if (frame<image_number+10 && press=true) {
        if sprite_index=ayy {
            frame+=12/1000000*delta_time
        } else {
            frame+=framerate * global.delta_multiplier
        }
    } else {
        press=false
        sprite_index=idle[idleon]
    }
    //bopping
    if instance_exists(obj_midi_clock) {
        if (obj_midi_clock.div_4_trigger=true) {
            if everybeat>1 {
                var what=1 //every odd numbered beat
            } else {
                var what=0 //every even numbered beat
            }
            beat++ //increase beat count
            if (beat%everybeat=what) {
                //go to idle animation
                if press=false {
                    frame=0
                    bop=true
                }
                //increase idle count
                if idleon<numidle {
                    idleon++
                } else {
                    idleon=0
                }
            }
        }
        if bop=true && press=false{
            if frame<image_number-1 {
                frame+=0.15 * global.delta_multiplier
            } else {
                bop=false
            }
        }
    }
    //frame junk so the animations aren't 2 frames
    if frame<image_number-1 {
        image_index=frame
    }
    //triple jump
}
/* */
/*  */
