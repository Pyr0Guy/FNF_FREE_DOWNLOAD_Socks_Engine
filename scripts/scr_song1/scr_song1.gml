//Summer
function scr_song1(){
	
	var colorsky=make_colour_rgb(232,183,108)
        //drawing stuff
        //(this part isn't a switch because I needed an "or" statement lol)
        if obj_song.event=0 or obj_song.event=1 { //daytime background
            with(obj_backgroundp1) {
                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,make_color_rgb(145,207,221),1)
                draw_sprite(spr_houseback2,0,x+(((obj_camera.x/image_xscale)/4)-100),y) //THE WORST WAY TO DO PARALAX LOL
                draw_self();
            }
        }
        if obj_song.event=2 { //summer time
                with(obj_backgroundp1) {
                    var colorsky2=make_colour_rgb(230,140,111)
                    image_blend=colorsky
                    draw_rectangle_colour(0,0,room_width,250,colorsky2,colorsky2,colorsky,colorsky,false)
                    draw_sprite_ext(spr_houseback2,0,x+(((obj_camera.x/image_xscale)/4)-100),y,1,1,0,colorsky,1) //THE WORST WAY TO DO PARALAX LOL
                    draw_self();
                }
                with(obj_player) {
                    scr_skinswapdude(c_white);
                        image_alpha=0
                        draw_sprite(sprite_index,image_index,x,y)
                    shader_reset();
                    scr_skinswapdude(colorsky);
                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.8)
                        draw_sprite_ext(sprite_index,image_index,x+4,y+4,1,1,0,c_black,0.4)
                    shader_reset();
                }
                with(obj_badguy) {
                    image_alpha=0
                    draw_sprite(sprite_index,image_index,x,y)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
                    draw_sprite_ext(sprite_index,image_index,x-4,y+4,1,1,0,c_black,0.4)
                }
                with(obj_lady) {
                    image_alpha=0
                    drawgirl=false
                    draw_sprite(sprite_index,image_index,x,y)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
                    draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.4)
                    draw_sprite(spr_speakersscreenlight,image_index,x,y)
                    draw_sprite(sprite[type],frame,x,y)
                    draw_sprite_ext(sprite[type],frame,x,y,1,1,0,colorsky,0.8)
                    draw_sprite_ext(sprite[type],frame,x,y+4,1,1,0,c_black,0.4)
            }
        }
}