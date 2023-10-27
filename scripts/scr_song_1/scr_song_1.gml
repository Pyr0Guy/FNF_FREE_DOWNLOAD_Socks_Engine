//Infografics

function scr_song_1(){
	//26
        if obj_song.song=mus_frostbytep1 {
            var colorsky = make_colour_rgb(115,108,86)
            var shade=0.55
            var tvplus=0
            var coolsine=0
        } else {
            var colorsky = make_colour_rgb(184,99,143)    
            var shade=0.75 
            var tvplus=9  
            var coolsine=sin(current_time/200)*4
        }
        with(obj_backgroundp1) {
            draw_set_color(colorsky)
            draw_rectangle(0,0,room_width,room_height,false)
            draw_set_color(c_white)
            image_alpha=0
            draw_sprite_ext(spr_georgeback,1,x+(((obj_camera.x/image_xscale)/4)-100)+150,y-(((obj_camera.x/image_xscale)/14))+150,0.5,0.5,0,c_white,0.6) //THE WORST WAY TO DO PARALAX LOL
            draw_sprite(sprite_index,0,x,y)
            draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_black,shade)
            draw_sprite_ext(sprite_index,0,x,y,1,1,0,colorsky,0.4)
        }
        with(obj_georgetrain) {
            draw_sprite(sprite_index,image_index,x,y)
            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,shade)
            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.4)
        }
        with(obj_lady) {
            var waving;
            var image;
            switch(obj_song.event) { //tv screen events
                case 11:
                    waving=sin(current_time/200)*4
                    image=8
                    alpha=1
                    m=1
                break;
                case 13:
                    waving=0
                    image=17
                    alpha=0
                    //screen flashing
                    if instance_exists(obj_midi_clock) {
                        if obj_midi_clock.div_8_trigger=true {
                            obj_song.m++
                        }
                        if obj_song.m%4=0 or obj_song.m=0{
                            obj_song.mm=1
                        }
                        obj_song.mm-=0.02 * global.delta_multiplier
                        alpha=obj_song.mm
                    }
                break;
                default:
                    waving=0
                    image=image_index
                    alpha=1
                break;
            }
            //draw table
            //draw_sprite(spr_georgetable,image_index,x+waving,y)
            //draw_sprite_ext(spr_georgetable,image_index,x+waving,y,1,1,0,colorsky,0.8)
            //draw_sprite_ext(spr_georgetable,image_index,x+waving,y,1,1,0,c_black,shade)
            //draw tv
            image_alpha=0
            draw_sprite(sprite_index,image_index,x+waving+coolsine,y)
            draw_sprite_ext(sprite_index,image_index,x+waving+coolsine,y,1,1,0,colorsky,0.8)
            draw_sprite_ext(sprite_index,image_index,x+waving+coolsine,y+4,1,1,0,c_black,shade)
            draw_sprite_ext(spr_georgetvscreen,image+tvplus,x+waving+coolsine,y,1,1,0,c_white,alpha)
            //draw_sprite_ext(sprite[type],frame,x,y,1,1,0,c_white,1)
            //draw_sprite_ext(sprite[type],frame,x,y,1,1,0,colorsky,0.8)
            //draw_sprite_ext(sprite[type],frame,x,y-4,1,1,0,c_black,shade)
        }
        with(obj_player) {
            image_alpha=0
            scr_skinswapdude(c_white)
                draw_sprite(sprite_index,image_index,x,y)
            shader_reset();
            scr_skinswapdude(colorsky)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.8)
                draw_sprite_ext(sprite_index,image_index,x+8,y,1,1,0,c_black,shade)
            shader_reset();
        }
        with(obj_georgeghost) {
            visible=false
            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,image_blend,image_alpha)
        }
        with(obj_badguy) {
            image_alpha=0
            draw_sprite(sprite_index,image_index,x,y)
            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
            draw_sprite_ext(sprite_index,image_index,x-8,y,1,1,0,c_black,shade)
        }
        //screencover stuff that isn't in draw gui bc im lazy
        if obj_song.song=mus_frostbytep1 {
            switch(obj_song.event) {
                case 0:
                    draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
                break;
                case 1:
                    var coolboys;
                    coolboys=obj_song.songpos/20
                    draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
                    draw_sprite_ext(spr_georgewindow,0,200,200,coolboys+1,coolboys+1,0,c_white,coolboys*10)
                break
                case 2:
                    draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
                break;
                case 3:
                    draw_sprite(spr_georgecutscene,0,0,0)
                    if obj_player.sprite_index!=obj_player.idle[0] {
                        var poob=random(4)
                        draw_sprite(spr_dudegintro,1,-2+poob,-2+poob)
                        draw_sprite_ext(spr_dudegintro,1,0,0,1,1,0,colorsky,0.8)
                        draw_sprite_ext(spr_dudegintro,1,(-2+poob)+8,(-2+poob)+8,1,1,0,c_black,shade)
                    } else {
                        scr_skinswapdude(c_white)
                            draw_sprite(spr_dudegintro,0,0,0)
                        shader_reset();
                        scr_skinswapdude(colorsky)
                            draw_sprite_ext(spr_dudegintro,0,0,0,1,1,0,c_white,0.8)
                            draw_sprite_ext(spr_dudegintro,0,8,8,1,1,0,c_black,shade)
                        shader_reset();
                    }
                break;
                case 4:
                    draw_sprite(spr_georgecutscene,1,0,0)
                break;
                case 5:
                    draw_sprite(spr_georgecutscene,2,0,0)
                    obj_song.mmmmmm=1
                break;
                case 6:
                    if obj_song.paused=false {
                        obj_song.mmmmmm+=0.0002 * global.delta_multiplier
                    }
                    draw_sprite_ext(spr_georgetvintro,0,obj_camera.x,obj_camera.y,obj_song.mmmmmm,obj_song.mmmmmm,0,c_white,1)
                break;
                case 7:
                    if obj_song.paused=false {
                        obj_song.mmmmmm+=0.0002 * global.delta_multiplier
                    }
                    draw_sprite_ext(spr_georgetvintro,1,obj_camera.x,obj_camera.y,obj_song.mmmmmm,obj_song.mmmmmm,0,c_white,1)
                break;
                case 8:
                    if obj_song.paused=false {
                        obj_song.mmmmmm+=0.0002 * global.delta_multiplier
                    }
                    draw_sprite_ext(spr_georgetvintro,2,obj_camera.x,obj_camera.y,obj_song.mmmmmm,obj_song.mmmmmm,0,c_white,1)
                break;
                case 9:
                    if obj_song.paused=false {
                        obj_song.mmmmmm+=0.0002 * global.delta_multiplier
                    }
                    draw_sprite_ext(spr_georgetvintro,3,obj_camera.x,obj_camera.y,obj_song.mmmmmm,obj_song.mmmmmm,0,c_white,1)
                break;
            }
            //skip intro
            if obj_song.songpos<25 && obj_song.songpos>0 {
                if keyboard_check(vk_control) && obj_song.paused=false{
                    obj_song.m+=0.02 * global.delta_multiplier
                } else { 
                    obj_song.m-=0.02 * global.delta_multiplier
                }
                obj_song.m=clamp(obj_song.m,0,2)
                draw_set_font(fnt_comic2)
                draw_set_halign(fa_center)
                draw_set_valign(fa_middle)
                var xxlol
                var yylol
                var color=make_color_rgb(220,133,174);
                var color2=make_color_rgb(247,125,135);
                for (xxlol=0;xxlol<6;xxlol++) {
                    for (yylol=0;yylol<6;yylol++) {
                        draw_sprite_ext(spr_fump,0,obj_camera.x-2+xxlol,obj_camera.y-2+yylol,4,4,0,c_black,obj_song.m)
                        draw_sprite_ext(spr_fump,0,obj_camera.x+xxlol,obj_camera.y+yylol,4,4,0,c_black,obj_song.m)
                        draw_text_colour(obj_camera.x+xxlol,obj_camera.y+yylol,string_hash_to_newline("SKIPPING INTRO"),c_black,c_black,c_black,c_black,obj_song.m)
                        draw_text_colour(obj_camera.x-2+xxlol,obj_camera.y-2+yylol,string_hash_to_newline("SKIPPING INTRO"),c_black,c_black,c_black,c_black,obj_song.m)
                    }
                }
                draw_sprite_ext(spr_fump,0,obj_camera.x,obj_camera.y,4,4,0,c_white,obj_song.m)
                draw_text_colour(obj_camera.x,obj_camera.y,string_hash_to_newline("SKIPPING INTRO"),color,color,color2,color2,obj_song.m)
                //reset text
                draw_set_halign(fa_left)
                draw_set_valign(fa_top)
                draw_set_font(fnt_comic1)
                if obj_song.m=2 {
                    audio_sound_set_track_position(obj_song.songplaying,26)
                    obj_song.event=7
                    //bpm
                    if !instance_exists(obj_midi_clock) {
                        instance_destroy(obj_midi_clock)
                        instance_create(0,0,obj_midi_clock)
                        obj_midi_clock.bpm=obj_song.bpm
                    }
                }
            }
        } else {
            //fump notes
            if instance_exists(obj_note) {
                with(obj_note) {
                    if note<4 {
                        sprite=spr_notefump
                    }
                }
            }
            instance_create(obj_badguy.x,obj_badguy.y,obj_georgeghost);
            switch(obj_song.event) {
                case 0:
                    draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
                    obj_song.m=0
                break;
                case 1:
                    //draw_sprite(spr_georgecutscene,3,0,0)
                    if obj_song.paused=false {
                        obj_song.m+=0.75 * global.delta_multiplier
                        var cooltext = "INCOMING FUMP"
                    } else {
                        var cooltext = "bro, really?"
                    }
                    var xx;
                    var yy;
                    for (xx=0;xx<20;xx++) {
                        for (yy=0;yy<20;yy++) {
                            draw_sprite_ext(spr_whitepixel,0,-50+(xx*44)+obj_song.m-80,(yy*44)+obj_song.m-80,44,44,0,make_color_rgb(220,133,174),1)
                            draw_sprite_ext(spr_fump,0,-50+(xx*44)+obj_song.m-80,(yy*44)+obj_song.m-80,2,2,0,c_white,1)
                            draw_sprite_ext(spr_whitepixel,0,(xx*44)+obj_song.m-80,(yy*44)+obj_song.m-80,44,44,0,make_color_rgb(220,133,174),0.25)
                        }
                    }


                    draw_sprite_ext(spr_fump,0,obj_camera.x,obj_camera.y,5+(obj_song.m/20),5+(obj_song.m/20),0,c_black,1)
                    draw_set_font(fnt_comic1)
                    draw_set_halign(fa_center)
                    draw_set_valign(fa_middle)
                    draw_set_color(c_black)
                    var xxt;
                    var yyt;
                    for (xxt=0;xxt<4;xxt++) {
                        for (yyt=0;yyt<4;yyt++) {
                            draw_set_color(c_black)
                            draw_text_transformed(obj_camera.x-2+xxt,obj_camera.y-2+yyt,string_hash_to_newline(cooltext),2,2,0)
                            draw_text_transformed(obj_camera.x+xxt,obj_camera.y+yyt,string_hash_to_newline(cooltext),2,2,0)
                        }
                    }
                    draw_set_color(make_color_rgb(255,174,201)) //thats mspaint pink lol
                    draw_text_transformed(obj_camera.x,obj_camera.y,string_hash_to_newline(cooltext),2,2,0)
                    draw_set_font(fnt_comic1)
                    //resetting text stuff
                    draw_set_halign(fa_left)
                    draw_set_valign(fa_top)
                    draw_sprite_ext(spr_whitepixel,0,0,obj_camera.y-120,room_width,-500,0,c_black,1)
                    draw_sprite_ext(spr_whitepixel,0,0,obj_camera.y+120,room_width,+500,0,c_black,1)
                break;
                case 3:
                    window_set_position((obj_song.lol-12)+sin(current_time/200)*24,obj_song.lol2)
					if instance_exists(obj_midi_clock) {
	                    if obj_midi_clock.div_4_trigger=true {
	                        obj_camera.image_xscale=obj_camera.image_xscale-10
	                    }
					}
                break;
                case 4:
                    window_set_position((obj_song.lol-24)+sin(current_time/400)*48,(obj_song.lol2-12)+sin(current_time/200)*24)
						if instance_exists(obj_midi_clock) {
                    if obj_midi_clock.div_4_trigger=true {
                        obj_camera.image_xscale=obj_camera.image_xscale-20
                    }
						}
                break;;
                case 5:
                    window_set_position(obj_song.lol,obj_song.lol2)
                break;
            }
        }
}