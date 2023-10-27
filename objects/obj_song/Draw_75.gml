/// @description health bar && pause menu
if obj_stats.downscroll=false {
    var minus=0
} else {
    var minus=320//331
}

if(!offHud)
{
	ui=surface_create(400,400)
	    surface_set_target(ui)
	        draw_clear_alpha(c_black,0) //reset alpha
	        ///hp bar
	        draw_sprite_ext(spr_whitepixel,0,59,(356-minus),282,19,0,houtline,1)
	        draw_sprite_ext(spr_whitepixel,0,63,(359-minus),282,19,0,houtline,1)
	        draw_sprite_ext(spr_whitepixel,0,61,(358-minus),278,15,0,hplayer,1)
	        //test+=(obj_song.skill*0.01*278-test)/2.5
	        draw_sprite_ext(spr_whitepixel,0,61,(358-minus),(obj_song.skill*0.01*278),15,0,hbaddie,1)
	        //draw_sprite_ext(spr_whitepixel,0,61,(358-minus),(obj_song.skill*0.01*278),15,0,hbaddie,1)
	        //flow
	        var sinnny=sin(current_time/200)
	        draw_sprite_ext(spr_whitepixel,0,200-(80),sinnny+(340-minus),82*2,12,0,foutline,1)
	        draw_sprite_ext(spr_whitepixel,0,200-(80)-2,sinnny+((340-minus))-2,82*2,12,0,foutline,1)
	        draw_sprite_ext(spr_whitepixel,0,200-(80),sinnny+(340-minus),80*2,8,0,fback,1)
	        draw_sprite_ext(spr_whitepixel,0,200+(80),sinnny+(340-minus),(-80*2*flow),8,0,ffull,1) 
	        //icons
	        if obj_song.skill>35 {
	            draw_sprite_ext(baddieicon,0,((61-23)+obj_song.skill*0.01*278),(360+6-minus),1,1,0,c_white,1)
	            //draw_sprite_ext(baddieicon,0,((61-23)+test),(360+6-minus),1,1,0,c_white,1)
	        } else {
	            draw_sprite_ext(baddieicon,1,((61-23)+obj_song.skill*0.01*278),(360+6-minus),1,1,0,c_white,1)
	            //draw_sprite_ext(baddieicon,1,((61-23)+test),(360+6-minus),1,1,0,c_white,1)
	        }
	        if obj_song.skill<65 {
	            draw_sprite_ext(playericon,0,((61+20)+obj_song.skill*0.01*278),(360+6-minus),1,1,0,c_white,1)
	            //draw_sprite_ext(playericon,0,((61+20)+test),(360+6-minus),1,1,0,c_white,1)
	        } else {
	            draw_sprite_ext(playericon,1,((61+20)+obj_song.skill*0.01*278),(360+6-minus),1,1,0,c_white,1)
	            //draw_sprite_ext(playericon,1,((61+20)+test),(360+6-minus),1,1,0,c_white,1)
	        }
	        //text
			
			//if(accuracy == 0)
				//accuracy = "?"
			
	        draw_set_halign(fa_center);
	        draw_set_color(toutline);
	        draw_set_font(fnt_comic1);
	        var bobo;
	        var bibi;
	        for (bobo=0;bobo<3;bobo++) {
	            for (bibi=0;bibi<3;bibi++) {
	                draw_text_transformed(200+bobo-1,((377-minus))+bibi-1,string_hash_to_newline(string("score: ")+string(coolscore)+string(" | ")+string("misses: ")+string(misses) + " | accuracy: " + string(accuracy) + "%"),1,1,0)  
	                draw_text_transformed(200+bobo,((377-minus))+bibi,string_hash_to_newline(string("score: ")+string(coolscore)+string(" | ")+string("misses: ")+string(misses) + " | accuracy: " + string(accuracy)  + "%"),1,1,0)  
	            }
	        }
	        draw_set_color(tcolor);
	        draw_text_transformed(200,(377-minus),string_hash_to_newline(string("score: ")+string(coolscore)+string(" | ")+string("misses: ")+string(misses) + " | accuracy: " + string(accuracy) + "%"),1,1,0)
			
			if(obj_stats.botplay){
				for (var i=0;i<3;i++) {
					for (var k=0;k<3;k++) {
						draw_text_color(200 + i - 1, 100 + k - 1, "BotPlay", c_black, c_black, c_black, c_black, 1)
						draw_text_color(200 + i, 100 + k, "BotPlay", c_black, c_black, c_black, c_black, 1)
					}
				}
				draw_text_color(200, 100, "BotPlay", c_white, c_white, c_white, c_white, 1)
			}
			
	        draw_set_halign(fa_left);
	    surface_reset_target()
	    //drawing surface
	    draw_surface_ext(ui,0,0,obj_stats.screenscale/2,obj_stats.screenscale/2,0,c_white,1)
	surface_free(ui);
}
//pause
if paused=true {
    if (keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0,gp_padd)) {
        sel++
    }
    if (keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu)) {
        sel--
    }
    if (keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1)) {
        switch(sel) {
            case 1:
                if !instance_exists(obj_fadeout) {
                    instance_create(0,0,obj_fadeout)
                    obj_fadeout.roomgo=room
					instance_destroy(obj_midi_clock)
                    audio_stop_sound(songplaying)
					game_set_speed(60, gamespeed_fps);
					
                }
            break;
            case 2:
                //fadeout
                if !instance_exists(obj_fadeout) {
                    if obj_stats.freeplay=false {
                        instance_create(0,0,obj_fadeout)
                        obj_fadeout.roomgo=rm_stuffselect
                    } else {
                        instance_create(0,0,obj_fadeout)
                        obj_fadeout.roomgo=rm_freeplay
                    }
                    audio_stop_sound(songplaying)
					game_set_speed(60, gamespeed_fps);
					instance_destroy(obj_midi_clock)
                    //music
                    if !audio_is_playing(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong))) {
                        audio_play_sound(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong)),9999,true)
                    }
                }
            break;
        }
    }
    draw_sprite_ext(spr_whitepixel,0,0,0,__view_get( e__VW.WPort, 0 ),__view_get( e__VW.HPort, 0 ),0,c_black,0.5)
    draw_set_font(fnt_comic2);
    draw_set_color(c_black);
    var xxxx;
    var yyyy;
    for (xxxx=0;xxxx<15;xxxx++) {
        for (yyyy=0;yyyy<15;yyyy++) {
            draw_text_transformed(20+xxxx-7,30+yyyy-7,string_hash_to_newline("PAUSED"),4,4,0)
        }
    }
    draw_set_color(c_white);
    var foobarb = make_colour_rgb(213,217,234)
    draw_text_transformed_colour(20,30,string_hash_to_newline("PAUSED"),4,4,0,c_white,c_white,foobarb,foobarb,1)
    draw_set_font(fnt_comic1);
    draw_set_colour(c_black);
    var xx;
    var yy;
    for (xx=0;xx<7;xx++) {
        for (yy=0;yy<7;yy++) {
            draw_text_transformed(20+xx-3,200+yy-3,string_hash_to_newline("Resume#Restart#Quit"),2,2,0)
        }
    }
    draw_set_colour(c_gray);
    draw_text_transformed(20,200,string_hash_to_newline("Resume#Restart#Quit"),2,2,0)
    draw_set_color(c_white)
    switch(sel) {
        case 0:
            draw_text_transformed(20,200,string_hash_to_newline("Resume"),2,2,0)
        break;
        case 1:
            draw_text_transformed(20,200,string_hash_to_newline("#Restart"),2,2,0)
        break;
        case 2:
            draw_text_transformed(20,200,string_hash_to_newline("##Quit"),2,2,0)
        break;
    }
    draw_set_colour(c_white);
}

//old data
/*
//icons
draw_sprite_ext(spr_stradicon,0,28*obj_stats.screenscale,y+5,1,1,0,c_white,1)
//dude
if mcdonalds = false {
    if obj_song.skill < 75 {
        draw_sprite_ext(spr_dudeicon,0,obj_stats.skill*0.01*358+25*2*obj_stats.screenscale,358*obj_stats.screenscale/2,obj_stats.screenscale/2,obj_stats.screenscale/2,0,c_white,1)
    } else {
        draw_sprite_ext(spr_dudeicon,1,obj_stats.skill*0.01*358+25*2*obj_stats.screenscale,358*obj_stats.screenscale/2,obj_stats.screenscale/2,obj_stats.screenscale/2,0,c_white,1)
    }
} else {
    draw_sprite_ext(spr_momgotmcdonalds,0,x+obj_stats.skill*0.01*290+29,358*obj_stats.screenscale/2,obj_stats.screenscale/2,obj_stats.screenscale/2,0,c_white,1)
}

/* */
///debug
if obj_stats.debug=true {
    var text=(string("FPS: ")+string(fps)+string("#")+string("event: ")+string(event)+string("#")+string(m)+string("#")+string(mm)+string("#")+string(mmm)+string("#")+string(mmmm)+string("#")+string(mmmmm)+string("#")+string(mmmmmm)+string("#")+string(mmmmmmm))
    var t;
    for(t=1;t<=string_length(text);t++) {
        if t=1 {
            var longback=0;
            var hi=0;
            var hue=0;
        }
        if string_char_at(text,t) = "#" {
            hi+=35//20
            hue+=0.1
            longback=t
        }
        var xt;
        var yt;
        for(xt=-2;xt<=2;xt++) {
            for(yt=-2;yt<=2;yt++) {
                draw_set_color(c_black)
                draw_text_transformed(xt+((t-longback)*17),yt+hi,string_hash_to_newline(string_char_at(text,t)),2,2,0)
                draw_text_transformed(1+xt+((t-longback)*17),1+yt+hi,string_hash_to_newline(string_char_at(text,t)),2,2,0)
            }
        }
        draw_set_color(make_color_hsv(255*hue,127,255))
        draw_text_transformed((t-longback)*17,hi,string_hash_to_newline(string_char_at(text,t)),2,2,0)
        draw_set_color(c_white)
    }
}

/* */
/*  */
