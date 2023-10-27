//Break it down, triangle man
function scr_song_3(){
	 //camera
        if instance_exists(obj_midi_clock) {
            if obj_midi_clock.div_4_trigger = true {
                obj_song.mmmmmm++
            }
        }
        switch(obj_song.mmmmmmm) {
	            case "everybeat":
				if instance_exists(obj_midi_clock) {
	                if obj_midi_clock.div_4_trigger = true {
	                    if obj_song.mmmmmm%2=1 {
	                        obj_camera.image_xscale-=5
	                    }
	                }
				}
            break;
            case "SWAG!":
			if instance_exists(obj_midi_clock) {
                if obj_midi_clock.div_4_trigger = true {
                    if obj_song.mmmmmm%2=1 {
                        obj_camera.image_xscale-=10
                    }
                }
			}
            break;
        }
        //drawing sprites
        var time = floor(shader_get_uniform(sh_cool, "Time"))
        var texel = floor(shader_get_uniform(sh_cool, "Texel"))
        shader_set(sh_cool)
            shader_set_uniform_f(time, current_time)
            shader_set_uniform_f(texel, 0.005, 0.005)
            draw_sprite_ext(spr_bidbg,1,obj_backgroundp1.x,obj_backgroundp1.y,1,1,0,c_white,1)
        shader_reset();
        shader_set(sh_cool)
            shader_set_uniform_f(time, current_time)
            shader_set_uniform_f(texel, -0.005, -0.005)
            draw_sprite_ext(spr_bidbg,1,obj_backgroundp1.x,obj_backgroundp1.y,1,1,0,c_white,0.5)
        shader_reset();
        draw_sprite_ext(spr_bidbg,0,obj_backgroundp1.x,obj_backgroundp1.y,1,1,0,c_white,obj_backgroundp1.image_alpha)
        draw_sprite_ext(spr_bidbg2,0,obj_backgroundp1.x,obj_backgroundp1.y,1,1,0,c_white,obj_backgroundp1.image_alpha)
        switch(obj_song.event) {
            case 0: //intro
                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_white,1)
                if obj_song.m>0 {
                    draw_sprite_ext(spr_introcromp,m-1,obj_camera.x,obj_camera.y,4,4,0,c_white,1)
                }
                obj_badguy.image_alpha=0
                obj_player.image_alpha=0
                obj_lady.image_alpha=0
            break;
            case 1: //tunnel
                if obj_song.paused=false {
                    obj_song.m+=0.005 * global.delta_multiplier
                    obj_song.mm+=((obj_song.mmm-obj_song.mm)/500) * global.delta_multiplier
                    obj_song.mmmm+=((obj_song.mmmmm-obj_song.mmmm)/500) * global.delta_multiplier
                }
                draw_sprite(spr_crompt,0,obj_camera.x,obj_camera.y)
                draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,obj_camera.x+mm,(obj_camera.y+mmmm)+80,2,2,0,c_white,1)
                draw_sprite(spr_crompt,1,obj_camera.x,obj_camera.y)
                draw_sprite_ext(spr_bintro,0,obj_camera.x,obj_camera.y,2,2,0,c_white,m)
            break;
            case 2:
                if obj_song.paused=false {
                    obj_song.mm+=((obj_song.mmm-obj_song.mm)/50) * global.delta_multiplier
                }
                with(obj_player) {
                    scr_skinswapdude(c_white);
                        draw_sprite(sprite_index,image_index,x,y)
                    shader_reset();
                }
                with(obj_badguy) {
                    draw_sprite_ext(sprite_index,image_index,x-obj_song.mm,y,image_xscale,image_yscale,0,c_white,1)
                }
            break;
            case 3: //sad
                if obj_song.paused=false {
                    obj_song.mm+=((obj_song.mmm-obj_song.mm)/100) * global.delta_multiplier
                    obj_song.mmmm+=((obj_song.mmmmm-obj_song.mmmm)/120) * global.delta_multiplier
                }
                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
                draw_set_alpha(obj_song.mmmm);
                    draw_rectangle_colour(obj_camera.x-200,obj_camera.y-200+((sin(current_time/800))*64),obj_camera.x+200,obj_camera.y+200,c_black,c_black,c_green,c_green,false)
                draw_set_alpha(1);
                scr_silhouette(c_white)
                    with(obj_player) {
                        draw_sprite_ext(sprite_index,image_index,x+25,obj_camera.y+200,1.5,1.5,0,c_white,obj_song.mm)
                    }
                    with(obj_badguy) {
                        draw_sprite_ext(sprite_index,image_index,x-25,obj_camera.y+200,6,6,0,c_white,obj_song.mm)
                    }
                shader_reset();
            break;
            case 4:
                with(obj_player) {
                    scr_skinswapdude(c_white)
                        draw_sprite(sprite_index,image_index,x,y)
                    shader_reset();
                }
                with(obj_badguy) {
                    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,1)
                }
            break;
            case 5: //do-do-doodoo
                //background
                var time = floor(shader_get_uniform(sh_cool, "Time"))
                var texel = floor(shader_get_uniform(sh_cool, "Texel"))
                shader_set(sh_cool)
                    shader_set_uniform_f(time, current_time)
                    shader_set_uniform_f(texel, 0.005, 0.005)
                    draw_sprite_ext(spr_bidbg,1,obj_backgroundp1.x,obj_backgroundp1.y,1,1,0,c_white,1)
                shader_reset();
                shader_set(sh_cool)
                    shader_set_uniform_f(time, current_time)
                    shader_set_uniform_f(texel, -0.005, -0.005)
                    draw_sprite_ext(spr_bidbg,1,obj_backgroundp1.x,obj_backgroundp1.y,1,1,0,c_white,0.5)
                shader_reset();
                obj_song.mmm+=0.0025 * global.delta_multiplier
                if obj_song.mmm>=1 {
                    obj_song.mmm=0
                }
                var soup
                for(soup=0;soup<7;soup++) {
                    draw_sprite(spr_skylinecromp,0,(soup*200)+(obj_song.mmm*-200),obj_camera.y+10)
                }
                if obj_song.paused=false {
                    var dingus=spr_bintrohead
                } else {
                    var dingus=spr_bintroheadp
                }
                //heads
                draw_sprite(dingus,0,obj_camera.x-110,obj_camera.y-70+sin(current_time/200))
                draw_sprite(dingus,1,obj_camera.x-90,obj_camera.y-20+cos(current_time/200))
                draw_sprite(dingus,2,obj_camera.x+110,obj_camera.y-70+sin(current_time/200))
                scr_skinswapdude(c_white);
                    draw_sprite(dingus,3,obj_camera.x+90,obj_camera.y-20+cos(current_time/200))
                shader_reset();
                //logo
                draw_sprite(spr_bintro,0,obj_camera.x,obj_camera.y-40+sin(current_time/400))
            break;
        }
        draw_sprite(spr_bslicknerm,0,obj_player.x+200,obj_player.y)
}