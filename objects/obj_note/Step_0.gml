var __b__;
__b__ = action_if_variable(obj_song.songpos, 0.01, 4);
if __b__
{
	
{
y=yy+obj_song.y
x=xx+obj_song.x
obj_song.flow=clamp(obj_song.flow,0,1)
var lose=1+(7*(1-obj_song.flow))
var win=2.5

var rang;
//if(obj_note.y == obj_uinotes.y)
//	rang = 1
//else if()

var distance = obj_note.y - obj_uinotes.y;

if distance <= 6
	rang = 1
else if distance >= 7 && distance <= 10
	rang = 0.75
else if distance >= 11 && distance <= 14
	rang = 0.5
else if distance >= 25 && distance <= 24
	rang = 0.25
else
	rang = 0.2

//bool var
var checkNoteGoesOffScreen = obj_stats.downscroll ? y >= 500 : y <= -60;

//note goes off screen
if (checkNoteGoesOffScreen && (type=1 || type=2 || type=8 || type=9) && note >= obj_song.notes) {
	instance_destroy();
	obj_song.skill+=lose
	obj_song.totalNote += 1
    obj_song.misses+=1
	obj_player.dudeStunCount = 1/60
    obj_song.flow-=0.1
    obj_song.coolscore-=50
}
//event
if (type == 10) {
	
	var noteCheck = obj_stats.downscroll ? y>=obj_uinotes.y : y<=obj_uinotes.y;
	
	if(noteCheck){
		
		scr_noteevent(obj_song.song,event);
        instance_destroy();	
	}
	
}
//hitting notes
if note < obj_song.notes { //enemy
    if y <= obj_uinotes.y+14 && y >= obj_uinotes.y-14 {
        var butt; //LOL
        var sprite; //less funny
        var chungy; //abit funny
        switch(type) {
            case 2:
                chungy=4
            break;
            case 3:
                chungy=8
            break;
            case 9:
                chungy=4
            break;
            default:
                chungy=0
            break;
        }
        switch(type) {
            case 3:
                if bombhit=true {
                    obj_badguy.sprite_index=obj_badguy.anim[((note)+chungy)]
                    obj_badguy.hit[note]=true
                } else {
                    scr_bombevent(obj_song.song,note);
                }
            break;
            case 7:
                obj_badguy.sprite_index=obj_badguy.ayy
                obj_badguy.hit[note]=true
				
				if(obj_stats.PlayAyySound)
					audio_play_sound(obj_badguy.bad_ayy_snd, 99999, false)
					
            break;
            default:
                obj_badguy.sprite_index=obj_badguy.anim[((note)+chungy)]
                obj_badguy.hit[note]=true
                if obj_song.weeknd3=true && obj_song.skill<95 {
                    obj_song.skill+=(2.5*obj_song.weeknd3m) * global.delta_multiplier
                }
            break;
        }
        instance_destroy();
    }
	
} else { //player
    //if (y <= obj_uinotes.y+(32*obj_song.notespeed) && y >= obj_uinotes.y-(32*obj_song.notespeed) && hitable=true) && obj_song.paused=false {
    if (y <= obj_uinotes.y+(32) && y >= obj_uinotes.y-(32) && hitable=true) && obj_song.paused=false {
        var butt; //LOL
        var sprite; //less funny
        var chungy; //abit funny
        //sprites spacing
        switch(type) {
            case 2:
                chungy=4
            break;
            case 9:
                chungy=4
            break;
            default:
                chungy=0
            break;
        }
        //pressing note
        switch(type) {
            default: //normal note
            if obj_stats.botplay || keyboard_check_pressed((obj_stats.bind[note-obj_song.notes])+plus) or gamepad_button_check_pressed(0,(obj_stats.bind[note-obj_song.notes+4])) {
				obj_player.sprite_index=obj_player.anim[((note-obj_song.notes)+chungy)]
                obj_player.hit[(note-obj_song.notes)]=true
                obj_song.skill-=win
                obj_song.flow+=0.05
                obj_song.coolscore+=100
				obj_song.totalNote += 1
				obj_song.totalHitNote += rang
				
				if(rang == 1){
					with(instance_create(id.x, obj_uinotes.y,obj_noteFlash))
						frame = 0;
				}
					
                instance_destroy();  
            }
            break;
            case 3: //bomb
				
                if keyboard_check_pressed(obj_stats.bind[note-obj_song.notes]) or gamepad_button_check_pressed(0,(obj_stats.bind[note-obj_song.notes+4])) {
                    obj_player.sprite_index=obj_player.anim[(note-obj_song.notes+chungy)]
                    obj_player.hit[note-obj_song.notes]=true
                    obj_song.skill+=15
                    obj_song.misses+=1
                    obj_song.flow=0
					obj_song.totalNote += 1
                    obj_song.coolscore-=200
                    randomize();
                    var randomsound=round(random(2))
					var bombSND = asset_get_index("snd_bomb" + string(randomsound));
					audio_play_sound(bombSND, 99999, false);
                    instance_destroy();
                }
                scr_bombevent(obj_song.song,note);
            break;
            case 4:
                obj_camera.place=0
                instance_destroy();  
            break;
            case 5:
                obj_camera.place=1
                instance_destroy();  
            break;
            case 6:
                obj_camera.place=2
                instance_destroy();  
            break;
            case 7:
                obj_player.press=true
                obj_player.frame=0
                if obj_song.skill < 75 {
                    obj_player.sprite_index=obj_player.ayy
                    audio_play_sound(snd_dudeayy,9999,false)
                } else {
                    obj_player.sprite_index=obj_player.yousuck
                    audio_play_sound(snd_crap,9999,false)
                }
                instance_destroy();  
            break;
            case 8: //hold
            if obj_stats.botplay || keyboard_check(obj_stats.bind[note-obj_song.notes]) or gamepad_button_check(0,(obj_stats.bind[note-obj_song.notes+4])) {
                obj_player.sprite_index=obj_player.anim[(note-obj_song.notes+chungy)]
                //obj_player.hit[(note-obj_song.notes)]=true
                obj_player.frame=0
                obj_song.skill-=1
				obj_song.totalHitNote += 1
				obj_song.totalNote += 1
                obj_song.coolscore+=25
                instance_destroy();  
            }
            break;
            case 9: //hold alt
            if obj_stats.botplay || keyboard_check(obj_stats.bind[note-obj_song.notes]) or gamepad_button_check(0,(obj_stats.bind[note-obj_song.notes+4])) {
                obj_player.sprite_index=obj_player.anim[(note-obj_song.notes+chungy)]
                //obj_player.hit[(note-obj_song.notes)]=true
                obj_player.frame=0
                obj_song.skill-=1
				obj_song.totalHitNote += rang
				obj_song.totalNote += 1
                obj_song.coolscore+=25
                instance_destroy();  
            }
            break;
            case 10: //event
                //just found out you can time your key press perfectly
                //and hit an event note and it doesnt do the event lolol
            break;
        }  
    }
}

}
}

