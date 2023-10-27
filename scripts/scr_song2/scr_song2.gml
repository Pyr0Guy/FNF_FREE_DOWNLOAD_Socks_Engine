//Stars

function scr_song2(){
	//drawing stuff
        //var colorsky=make_colour_rgb(71,47,94)
        var colorsky=make_colour_rgb(75,46,112)
        //sky
        draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,colorsky,1)
        var time = floor(shader_get_uniform(sh_cool, "Time"))
        var texel = floor(shader_get_uniform(sh_cool, "Texel"))
        shader_set(sh_cool)
            shader_set_uniform_f(time, current_time)
            shader_set_uniform_f(texel, 0.005, 0.005)
            draw_sprite_ext(spr_nightskyfromgoogle,0,-10+(((obj_camera.x/image_xscale)/2)-200),0,1,1,0,c_white,0.2)
        shader_reset();
        shader_set(sh_cool)
            shader_set_uniform_f(time, current_time)
            shader_set_uniform_f(texel, -0.005, -0.005)
            draw_sprite_ext(spr_nightskyfromgoogle,0,-10+(((obj_camera.x/image_xscale)/2)-200),0,1,1,0,c_white,0.2)
        shader_reset();
        //background
        with(obj_backgroundp1) {
                //var colorsky2=make_colour_rgb(230,140,111)
                var colorsky2=make_colour_rgb(37,24,50)
                var spotlight = make_color_rgb(17,38,123)
                //var colorsky2=make_colour_rgb(75,46,112)
                image_blend=colorsky2
                draw_sprite_ext(spr_houseback2,0,x+(((obj_camera.x/image_xscale)/4)-100),y,1,1,0,colorsky2,1) //THE WORST WAY TO DO PARALAX LOL
                draw_self();
            }
            with(obj_lady) {
                image_alpha=0
                drawgirl=false
                var wump
                draw_sprite(sprite_index,image_index,x,y)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
                draw_sprite_ext(sprite_index,image_index,x,y-4,1,1,0,c_black,0.5)
                draw_sprite(spr_speakersscreenlight,image_index,x,y)
                if obj_song.event!=9 {
                    draw_sprite_ext(sprite[type],frame,x,y,1,1,0,c_white,1)
                    draw_sprite_ext(sprite[type],frame,x,y,1,1,0,colorsky,0.8)
                    draw_sprite_ext(sprite[type],frame,x,y-4,1,1,0,c_black,0.5)
                }
                draw_sprite(spr_housebackslights,image_index,obj_backgroundp1.x,obj_backgroundp1.y)
            }
            switch(obj_song.event) {
                case 3:
                    with(obj_player) {
                        draw_sprite_ext(sprite_index,image_index,x+80,y+100,2,2,0,c_black,1)
                    }
                    with(obj_badguy) {
                        draw_sprite_ext(sprite_index,image_index,x-100,y+180,2,2,0,c_black,1)
                    }
                break;
                case 4:
                    with(obj_player) {
                        draw_sprite_ext(sprite_index,image_index,x+80,y+100,2,2,0,c_black,1)
                    }
                    with(obj_badguy) {
                        draw_sprite_ext(sprite_index,image_index,x-100,y+180,2,2,0,c_black,1)
                    }
                break;
                case 5:
                    obj_player.image_alpha=0
                    with(obj_badguy) {
                        image_alpha=0
                        draw_set_alpha(0.5)
                        draw_ellipse_colour(x-120,y-20,x+180,y+20,c_white,c_white,false)
                        draw_set_alpha(1)
                        draw_sprite(sprite_index,image_index,x,y)
                        draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.6)
                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x+10,0,1,1,0,c_white,1)
                        draw_set_color(c_black)
                        draw_rectangle(0,0,x-160,room_height,false)
                        draw_rectangle(x+160,0,room_width,room_height,false)
                        draw_set_color(c_white)
                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x+10,0,-1,1,0,c_white,1)
                        draw_rectangle_colour(0,0,x-140,room_height,c_black,c_black,c_black,c_black,false)
                        draw_rectangle_colour(x+160,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
                    }
                break;
                case 6:
                    obj_badguy.image_alpha=0
                    with(obj_player) {
                        image_alpha=0
                        draw_set_alpha(0.5)
                        draw_ellipse_colour(x-160,y-20,x+140,y+20,c_white,c_white,false)
                        draw_set_alpha(1)
                        scr_skinswapdude(c_white)
                            draw_sprite(sprite_index,image_index,x,y)
                        shader_reset();
                        draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.6)
                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x,0,1,1,0,c_white,1)
                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x,0,-1,1,0,c_white,1)
                        draw_set_color(c_black)
                        draw_rectangle(0,0,x-150,room_height,false)
                        draw_rectangle(x+150,0,room_width,room_height,false)
                        draw_set_color(c_white)
                        draw_rectangle_colour(0,0,x-150,room_height,c_black,c_black,c_black,c_black,false)
                        draw_rectangle_colour(x+150,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
                    }
                break;
                case 7:
                    obj_player.image_alpha=0
                    with(obj_badguy) {
                        image_alpha=0
                        draw_set_alpha(0.5)
                        draw_ellipse_colour(x-120,y-20,x+180,y+20,c_white,c_white,false)
                        draw_set_alpha(1)
                        draw_sprite(sprite_index,image_index,x,y)
                        draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.6)
                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x+10,0,1,1,0,c_white,1)
                        draw_set_color(c_black)
                        draw_rectangle(0,0,x-160,room_height,false)
                        draw_rectangle(x+160,0,room_width,room_height,false)
                        draw_set_color(c_white)
                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x+10,0,-1,1,0,c_white,1)
                        draw_rectangle_colour(0,0,x-140,room_height,c_black,c_black,c_black,c_black,false)
                        draw_rectangle_colour(x+160,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
                    }
                break;
                case 8:
                    obj_badguy.image_alpha=0
                    with(obj_player) {
                        image_alpha=0
                        draw_set_alpha(0.5)
                        draw_ellipse_colour(x-160,y-20,x+140,y+20,c_white,c_white,false)
                        draw_set_alpha(1)
                        scr_skinswapdude(c_white)
                            draw_sprite(sprite_index,image_index,x,y)
                        shader_reset();
                        draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.6)
                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x,0,1,1,0,c_white,1)
                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x,0,-1,1,0,c_white,1)
                        draw_set_color(c_black)
                        draw_rectangle(0,0,x-150,room_height,false)
                        draw_rectangle(x+150,0,room_width,room_height,false)
                        draw_set_color(c_white)
                        draw_rectangle_colour(0,0,x-150,room_height,c_black,c_black,c_black,c_black,false)
                        draw_rectangle_colour(x+150,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
                    }
                break;
                case 9:
                    with(obj_player) {
                        image_alpha=0
                        draw_set_alpha(0.5)
                        draw_ellipse_colour(x-320,y-20,x+180,y+20,c_white,c_white,false)
                        draw_set_alpha(1)
                        scr_skinswapdude(c_white)
                            draw_sprite(sprite_index,image_index,x,y)
                        shader_reset();
                        draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.6)
                        with(obj_playermimic) { //lady
                            image_alpha=0
                            draw_sprite(sprite_index,image_index,x,y)
                            draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.6)
                        }
                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x-40,0,-1,1,0,c_white,1)
                        draw_rectangle_colour(x+110,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
                        draw_set_color(c_black)
                        draw_rectangle(x+190,0,room_width,room_height,false)
                        draw_set_color(c_white)
                    }
                    with(obj_badguy) {
                        image_alpha=0
                        draw_sprite(sprite_index,image_index,x,y)
                        draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.6)
                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x+80,0,1,1,0,c_white,1)
                        draw_set_color(c_black)
                        draw_rectangle(0,0,x-190,room_height,false)
                        draw_set_color(c_white)
                        draw_rectangle_colour(0,0,x-270,room_height,c_black,c_black,c_black,c_black,false)
                    }
                break;
                case 10:
                    with(obj_player) {
                        image_alpha=0
                        scr_skinswapdude(c_white)
                            draw_sprite(sprite_index,image_index,x,y)
                        shader_reset();
                        scr_skinswapdude(colorsky)
                            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.8)
                            draw_sprite_ext(sprite_index,image_index,x+4,y,1,1,0,c_black,0.5)
                        shader_reset();
                    }
                    with(obj_badguy) {
                        image_alpha=0
                        draw_sprite(sprite_index,image_index,x,y)
                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
                        draw_sprite_ext(sprite_index,image_index,x-4,y,1,1,0,c_black,0.5)
                    }
                    draw_sprite(spr_housebacklightsgirl,0,obj_backgroundp1.x,obj_backgroundp1.y)
                break;
                default:
                    with(obj_player) {
                        image_alpha=0
                        scr_skinswapdude(c_white)
                            draw_sprite(sprite_index,image_index,x,y)
                        shader_reset();
                        scr_skinswapdude(colorsky)
                            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.8)
                            draw_sprite_ext(sprite_index,image_index,x+4,y,1,1,0,c_black,0.5)
                        shader_reset();
                    }
                    with(obj_badguy) {
                        image_alpha=0
                        draw_sprite(sprite_index,image_index,x,y)
                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
                        draw_sprite_ext(sprite_index,image_index,x-4,y,1,1,0,c_black,0.5)
                    }
                break;
            }
            //5 light
            //6 lights
}