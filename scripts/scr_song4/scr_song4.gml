//Gamejack

function scr_song4(){
	if instance_exists(obj_note) {
            obj_note.bombhit=false
        }
        var greencolor=make_color_rgb(27,114,24)
        draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,make_color_rgb(192,192,192),1)
        if obj_song.event<8 { //intro
            obj_song.m+=0.25
            if obj_song.m=25
				obj_song.m=0 
			
            draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,make_color_rgb(6,27,5),1)
            for(i=0;i<50;i++) {
                draw_sprite_ext(spr_whitepixel,0,0,obj_song.m+(i*25),room_width,3,0,make_color_rgb(12,51,11),1)
            }
            with(obj_backgroundp1) {
                draw_sprite(sprite_index,3,x,y)
            }
        }
        switch(obj_song.event) {
            case 0:
                obj_lady.image_alpha=0
                obj_lady.drawgirl=false
                obj_player.image_alpha=0
                obj_badguy.image_alpha=0
                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
            break;
            case 1:
                with(obj_badguy) {
                    draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
                }
            break;
            case 2:
                with(obj_badguy) {
                    draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
                }
            break;
            case 3:
                with(obj_badguy) {
                    draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
                }
                with(obj_lady) {
                    draw_sprite_ext(sprite_index,image_index,x-45,y,1,1,0,greencolor,1)
                }
            break;
            case 4:
                with(obj_badguy) {
                    draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
                }
                with(obj_lady) {
                    draw_sprite_ext(sprite_index,image_index,x-45,y,1,1,0,greencolor,1)
                }
            break;
            case 5:
                with(obj_badguy) {
                    draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
                }
                with(obj_lady) {
                    draw_sprite_ext(sprite_index,image_index,x-45,y,1,1,0,greencolor,1)
                }
                with(obj_player) {
                    draw_sprite_ext(sprite_index,image_index,x,y-95,1,1,0,greencolor,1)
                    draw_sprite_ext(spr_msladyandwatch,image_index,x,y,1,1,0,greencolor,1)
                }
            break;
            case 6:
                with(obj_badguy) {
                    draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
                }
                with(obj_lady) {
                    draw_sprite_ext(sprite_index,image_index,x-45,y,1,1,0,greencolor,1)
                }
                with(obj_player) {
                    draw_sprite_ext(sprite_index,image_index,x,y-95,1,1,0,greencolor,1)
                    draw_sprite_ext(spr_msladyandwatch,image_index,x,y,1,1,0,greencolor,1)
                }
            break;
            case 7:
                with(obj_badguy) {
                    draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
                }
                with(obj_lady) {
                    draw_sprite_ext(sprite_index,image_index,x-45,y,1,1,0,greencolor,1)
                }
                with(obj_player) {
                    draw_sprite_ext(sprite_index,image_index,x,y-95,1,1,0,greencolor,1)
                    draw_sprite_ext(spr_msladyandwatch,image_index,x,y,1,1,0,greencolor,1)
                }
            break;
            default:
                //screen bop
				 if instance_exists(obj_midi_clock) {
                if obj_midi_clock.div_4_trigger=true {
                    if obj_song.mmmm%2=0 {
                        obj_camera.image_xscale=obj_camera.image_xscale-5
                    }
				}
                    obj_song.mmmm += 1 * global.delta_multiplier
                }
                //background
                obj_song.m+=1 * global.delta_multiplier
                obj_song.mm+=0.25 * global.delta_multiplier
                if obj_song.m>=344 {
                    obj_song.m=0
                }
                if obj_song.mm>=238 {
                    obj_song.mm=0
                }
                with(obj_backgroundp1) {
                    var i;
                    var ii;
                    for (ii=0;ii<13;ii++) {
                        draw_sprite(spr_backbustrees,0,9+(239*ii)-obj_song.mm,139)
                    }
                    for (i=0;i<13;i++) {
                        draw_sprite(spr_backbus,0,9+(345*i)-obj_song.m,139)
                    }
                    draw_self();
                    draw_sprite(spr_busback,2,0,0)
                }
                //character stuff
                with(obj_lady) {
                    image_alpha=0
                    draw_sprite(sprite_index,image_index,x,y)
                    if obj_song.mmmmm>0 { //bomb note screen glitch
                        randomize();
                        var randomscreen=round(random(7))
                        if randomscreen=1 {
                            var screened=1
                        } else {
                            var screened=0
                        }
                        draw_sprite(spr_speakersscreenlightw2,2+screened,x,y)
                        draw_sprite(spr_speakersscreenlightw2,4,x,(y+(sin(current_time/200)) * global.delta_multiplier))
                        obj_song.mmmmm-=0.5 * global.delta_multiplier
                    }
                    draw_sprite(spr_busow,0,224,296)
                }
                with(obj_badguy) {
                    scr_drawcd(170,303);
                    //scr_drawcd(64,235);
                }
            break;
        }
        if obj_song.event<8 && obj_song.songpos>0.1 { //skip intro (SORRY FOR HAVING 2 IF STATEMENTS CHECKING FOR THE SAME THING WAAAAA)
            if keyboard_check(vk_control) && paused=false {
                obj_song.mmm+=0.02 * global.delta_multiplier
            } else {
                obj_song.mmm-=0.02 * global.delta_multiplier
            }
            obj_song.mmm=clamp(obj_song.mmm,0,2)
            draw_set_font(fnt_comic2)
            draw_set_halign(fa_center)
            draw_set_valign(fa_middle)
            var xxlol
            var yylol
            for (xxlol=0;xxlol<6;xxlol++) {
                for (yylol=0;yylol<6;yylol++) {
                    draw_sprite_ext(spr_cdboyskip,0,obj_camera.x-3+(xxlol),obj_camera.y-3+(yylol),4,4,0,c_black,obj_song.mmm)
                    draw_sprite_ext(spr_cdboyskip,0,obj_camera.x+xxlol,obj_camera.y+yylol,4,4,0,c_black,obj_song.mmm)
                    draw_text_colour(obj_camera.x+xxlol,obj_camera.y+yylol,string_hash_to_newline("SKIPPING INTRO"),c_black,c_black,c_black,c_black,obj_song.mmm)
                    draw_sprite_ext(spr_cdboyskip,0,obj_camera.x,obj_camera.y,1,1,0,c_white,obj_song.mmm)
                    draw_text_colour(obj_camera.x-3+(xxlol),obj_camera.y-3+(yylol),string_hash_to_newline("SKIPPING INTRO"),c_black,c_black,c_black,c_black,obj_song.mmm)
                }
            }
            draw_text_colour(obj_camera.x,obj_camera.y,string_hash_to_newline("SKIPPING INTRO"),greencolor,greencolor,greencolor,greencolor,obj_song.mmm)
            //reset text
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            draw_set_font(fnt_comic1)
            if obj_song.mmm=2 {
                instance_create(0,0,obj_fadein)
                obj_fadein.color=c_white
                audio_sound_set_track_position(obj_song.songplaying,21.33)
                obj_song.mmm=0
                obj_song.event=10
                //bpm
                if !instance_exists(obj_midi_clock) {
                    instance_destroy(obj_midi_clock)
                    instance_create(0,0,obj_midi_clock)
                    obj_midi_clock.bpm=obj_song.bpm
                }
            }
        }
        if obj_song.event>=19 && obj_song.event<22 {
            //screen bop
			if instance_exists(obj_midi_clock) {
            if obj_midi_clock.div_4_trigger=true {
                if obj_song.mmmm%2=0 {
                    obj_camera.image_xscale=obj_camera.image_xscale-20
                }
            }
        }
	}
}