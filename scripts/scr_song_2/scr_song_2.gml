//Channelsurf
function scr_song_2(){
	if instance_exists(obj_note) {
            obj_note.bombhit=false
            if obj_note.type=3 {
                obj_note.bombsprite=spr_bombsn
            }
        }
        //tint math
            if instance_exists(obj_midi_clock) && obj_song.event>3 {
                if obj_midi_clock.div_4_trigger = true {
                    obj_song.m++
                    if obj_song.m%2=0 {
                        obj_camera.image_xscale-=5
                    }
                    if obj_song.m%4=0 {
                        obj_camera.image_xscale-=10
                    }
                }
                if obj_song.m%8=0 { //blue
                    //r = 139
                    //g = 207
                    //b = 226
                    obj_song.mm=1
                    obj_song.alph=0.42//0.62
                }
                if obj_song.m&16=0 or obj_song.m=0 { //red
                    //r = 240
                    //g = 41
                    //b = 89
                    obj_song.mm=0
                    obj_song.alph=0.32//0.51
                }
                var red=make_color_rgb(251,111,177);
                var blue=make_color_rgb(115,223,242);
                //var redshadow=make_color_rgb(89,0,51);
                //var blueshadow=make_color_rgb(4,0,74);
                obj_song.mmm+=((obj_song.mm-obj_song.mmm)/180) * global.delta_multiplier
                obj_song.mmmm+=((obj_song.alph-obj_song.mmmm)/90) * global.delta_multiplier
                var colorsky=merge_color(red,blue,obj_song.mmm)
                //var colorshadow=merge_color(redshadow,blueshadow,mmm)
                var shade=obj_song.mmmm
            } else {
                var colorsky=make_colour_rgb(240,41,89)
                var colorshadow=make_color_rgb(89,0,51)
                var shade=0.55
            }
        //var colorsky = make_colour_rgb(240,41,89)
        switch(obj_song.event) {
            case 0:
                obj_player.image_alpha=0
                obj_badguy.image_alpha=0
                obj_nermal.image_alpha=0
                obj_lady.image_alpha=0
                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
            break;
            case 1:
                var coolcolor=make_color_rgb(183,224,251);
                var coolcolor2=make_color_rgb(120,164,228);
                if obj_song.paused=false {
                    obj_song.m+=0.02 * global.delta_multiplier
                    obj_song.mm+=0.0005 * global.delta_multiplier
                }
                draw_rectangle_colour(0,0,400,400,coolcolor,coolcolor,coolcolor2,coolcolor2,false)
                draw_sprite_ext(obj_player.sprite_index,obj_player.image_index,obj_player.x,obj_player.y-20,1,1,0,c_black,1)
                draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,obj_badguy.x,obj_badguy.y-20,1,1,0,c_black,1)
                draw_sprite_ext(obj_nermal.sprite_index,obj_nermal.image_index,obj_nermal.x,obj_nermal.y-20,1,1,0,c_black,1)
                draw_sprite_ext(spr_screensurfingintro,0,200,200,1+obj_song.mm,1+obj_song.mm,0,c_white,obj_song.m)
            break;
            case 2:
                var coolcolor=make_color_rgb(183,224,251);
                var coolcolor2=make_color_rgb(120,164,228);
                if obj_song.paused=false {
                    obj_song.m+=0.02 * global.delta_multiplier
                    obj_song.mm+=0.0005 * global.delta_multiplier
                    obj_song.mmm+=0.02 * global.delta_multiplier
                    obj_song.mmmm+=0.0005 * global.delta_multiplier
                }
                draw_rectangle_colour(0,0,400,400,coolcolor,coolcolor,coolcolor2,coolcolor2,false)
                draw_sprite_ext(obj_player.sprite_index,obj_player.image_index,obj_player.x,obj_player.y-20,1,1,0,c_black,1)
                draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,obj_badguy.x,obj_badguy.y-20,1,1,0,c_black,1)
                draw_sprite_ext(obj_nermal.sprite_index,obj_nermal.image_index,obj_nermal.x,obj_nermal.y-20,1,1,0,c_black,1)
                draw_sprite_ext(spr_screensurfingintro,0,200,200,1+obj_song.mm,1+obj_song.mm,0,c_white,obj_song.m)
                draw_sprite_ext(spr_screensurfingintro,1,200,200,1+obj_song.mmmm,1+obj_song.mmmm,0,c_white,obj_song.mmm)
            break;
            case 3:
                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
            break;
            default:
                //other stuff
                with(obj_backgroundp1) {
                    image_alpha=0
                    draw_sprite(sprite_index,0,x,y)
                    draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_black,shade)
                    draw_sprite_ext(sprite_index,0,x,y,1,1,0,colorsky,0.25)
                    draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_black,0.2)
                    draw_sprite(sprite_index,1,x,y)
                }
                with(obj_nermalnyan) {
                    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
                    //draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_black,image_alpha*shade)
                    //draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,colorsky,image_alpha*0.25)
                }
                if instance_exists(obj_nermal) {
                    if obj_nermal.depth=-1 {
                        with(obj_nermal) {
                            image_alpha=0
                            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,1)
                            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,colorsky,0.8)
                            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_black,shade)
                        }
                    }
                }
                with(obj_lady) {
                    image_alpha=0
                    draw_sprite(sprite_index,0,x,y)
                    draw_sprite_ext(sprite_index,0,x,y,1,1,0,colorsky,0.8)
                    draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_black,shade)
                    //screen
                    switch(obj_song.mmmmmm) {
                        case 0: //
                            draw_sprite(spr_cstvscreen,0,x,y)
                        break;
                        case -1: //tony
                            draw_sprite(spr_cstvscreen,2,x,y)
                        break;
                        case -2: //nothing
                            draw_sprite(sprite_index,2,x,y)
                            draw_sprite_ext(sprite_index,2,x,y,1,1,0,colorsky,0.8)
                            draw_sprite_ext(sprite_index,2,x,y,1,1,0,c_black,shade)
                        break;
                        default: //glitch
                            randomize();
                            var randomscreen=round(random(7))
                            if randomscreen=1 {
                                var screened=0
                            } else {
                                var screened=1
                            }
                            draw_sprite(spr_cstvscreen,0+screened,x,y)
                            obj_song.mmmmmm-=0.5 * global.delta_multiplier
                        break;
                    }
                    draw_sprite(sprite_index,1,x,y)
                }
                with(obj_player) {
                    image_alpha=0
                    scr_skinswapdude(c_white)
                        draw_sprite(sprite_index,image_index,x,y)
                    shader_reset();
                    scr_skinswapdude(colorsky);
                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.65)
                    shader_reset();
                    //scr_silhouette(colorshadow);
                    //    draw_sprite_ext(sprite_index,image_index,x+4,y+4,1,1,0,c_white,shade)
                    //shader_reset();
                    draw_sprite_ext(sprite_index,image_index,x+4,y+4,1,1,0,c_black,shade)
                }
                with(obj_badguy) {
                    image_alpha=0
                    draw_sprite(sprite_index,image_index,x,y)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
                    draw_sprite_ext(sprite_index,image_index,x-4,y+4,1,1,0,c_black,shade)
                    //highlights
                    //draw_set_blend_mode(bm_add)
                    scr_highlight(make_color_rgb(162,238,188),make_color_rgb(162,238,188))
                        draw_sprite(sprite_index,image_index,x,y)
                    shader_reset();
                    scr_highlight(make_color_rgb(123,186,193),make_color_rgb(123,186,193))
                        draw_sprite(sprite_index,image_index,x,y)
                    shader_reset();
                    //draw_set_blend_mode(bm_normal)
                }
                if instance_exists(obj_nermal) {
                    if obj_nermal.depth=0 {
                        with(obj_nermal) {
                            image_alpha=0
                            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,1)
                            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,colorsky,0.8)
                            draw_sprite_ext(sprite_index,image_index,x-4,y+4,image_xscale,image_yscale,0,c_black,shade)
                        }
                    }
                }
                //BONUS!!!
                if obj_song.event>=14 && obj_song.event<=18 {
                    with(obj_backgroundp1) {
                        image_alpha=0
                        draw_sprite_ext(sprite_index,0,-200,-200,2,2,0,c_white,1)
                        draw_sprite_ext(sprite_index,0,-200,-200,2,2,0,c_black,shade)
                        draw_sprite_ext(sprite_index,0,-200,-200,2,2,0,colorsky,0.25)
                        draw_sprite_ext(sprite_index,0,-200,-200,2,2,0,c_black,0.2)
                        draw_sprite_ext(sprite_index,1,-200,-200,2,2,0,c_white,1)
                    }
                    //tv
                    draw_sprite(spr_cstvs2,0,200,350+(sin(current_time/200)))
                    draw_sprite(spr_cstvs2,1,200,350)
                    draw_sprite(spr_cstv2,0,200,350)
                    draw_sprite_ext(spr_cstv2,0,200,350,1,1,0,colorsky,0.8)
                    draw_sprite_ext(spr_cstv2,0,200,350,1,1,0,c_black,shade)
                    draw_sprite(spr_cstv2,1,200,350)
                    //the guys
                    if obj_song.event>=16 {
                        obj_song.dingus=100
                    } else {
                        obj_song.dingus=60
                    }
                    obj_song.mmmmmmm+=((obj_song.mmmmm-obj_song.mmmmmmm)/obj_song.dingus) * global.delta_multiplier
                    with(obj_nermal) {
                        draw_sprite(sprite_index,image_index,obj_camera.x+200-(obj_song.mmmmmmm),obj_camera.y)
                        draw_sprite_ext(sprite_index,image_index,obj_camera.x+200-(obj_song.mmmmmmm),obj_camera.y,1,1,0,colorsky,0.8)
                        draw_sprite_ext(sprite_index,image_index,obj_camera.x+192-(obj_song.mmmmmmm),obj_camera.y+8,1,1,0,c_black,shade)
                    }
                    with(obj_player) {
                        image_alpha=0
                        scr_skinswapdude(c_white)
                            draw_sprite(sprite_index,image_index,x,y)
                        shader_reset();
                        scr_skinswapdude(colorsky);
                            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.65)
                        shader_reset();
                        draw_sprite_ext(sprite_index,image_index,x+8,y+8,1,1,0,c_black,shade) 
                    }
                    with(obj_badguy) {
                        image_alpha=0
                        draw_sprite(sprite_index,image_index,x,y)
                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
                        draw_sprite_ext(sprite_index,image_index,x-8,y+8,1,1,0,c_black,shade)
                        scr_highlight(make_color_rgb(162,238,188),make_color_rgb(162,238,188))
                            draw_sprite(sprite_index,image_index,x,y)
                        shader_reset();
                        scr_highlight(make_color_rgb(123,186,193),make_color_rgb(123,186,193))
                            draw_sprite(sprite_index,image_index,x,y)
                        shader_reset();
                        //draw_set_blend_mode(bm_normal)
                    }
                    draw_sprite_ext(spr_blackpixel,0,0,350,400,400,0,c_black,1)
                    draw_sprite_ext(spr_blackpixel,0,0,0,400,50,0,c_black,1)
                }
                //funny screens
                if obj_song.event>=18 && obj_song.event<=25{
                    if obj_song.m%2=0 {
                        var bighat=1
                    } else {
                        var bighat=0
                    }
                    var tempvent=((obj_song.event-18)*2)+bighat
                    var tempvent=clamp(tempvent,0,12)
                    //background
                    draw_sprite_ext(spr_slickcutsceneb,((tempvent div 12)*2),obj_camera.x,obj_camera.y,2,2,0,c_white,1)
                    draw_sprite_ext(spr_slickcutsceneb,((tempvent div 12)*2),obj_camera.x,obj_camera.y,2,2,0,c_black,shade)
                    draw_sprite_ext(spr_slickcutsceneb,((tempvent div 12)*2),obj_camera.x,obj_camera.y,2,2,0,colorsky,0.25)
                    draw_sprite_ext(spr_slickcutsceneb,((tempvent div 12)*2),obj_camera.x,obj_camera.y,2,2,0,c_black,0.2)
                    draw_sprite_ext(spr_slickcutsceneb,((tempvent div 12)*2)+1,obj_camera.x,obj_camera.y,2,2,0,c_white,1)
                    //characters
                    if tempvent<12 {
                        draw_sprite_ext(spr_slickcutscene,tempvent,obj_camera.x,obj_camera.y,2,2,0,c_white,1)
                        draw_sprite_ext(spr_slickcutscene,tempvent,obj_camera.x,obj_camera.y,2,2,0,colorsky,0.8)
                        draw_sprite_ext(spr_slickcutscene,tempvent,obj_camera.x-8,obj_camera.y+8,2,2,0,c_black,shade)
                        scr_highlight(make_color_rgb(162,238,188),make_color_rgb(162,238,188))
                            draw_sprite_ext(spr_slickcutscene,tempvent,obj_camera.x,obj_camera.y,2,2,0,c_white,1)
                        shader_reset();
                        scr_highlight(make_color_rgb(123,186,193),make_color_rgb(123,186,193))
                            draw_sprite_ext(spr_slickcutscene,tempvent,obj_camera.x,obj_camera.y,2,2,0,c_white,1)
                        shader_reset();
                    } else {
                        //background
                        draw_sprite_ext(spr_slickcutscene,12,obj_camera.x,obj_camera.y,2,2,0,c_white,1)
                        draw_sprite_ext(spr_slickcutscene,12,obj_camera.x,obj_camera.y,2,2,0,colorsky,0.8)
                        draw_sprite_ext(spr_slickcutscene,12,obj_camera.x+8,obj_camera.y+8,2,2,0,c_black,shade);
                        draw_sprite_ext(spr_slickcutsceneb,4,obj_camera.x,obj_camera.y,2,2,0,c_white,1)
                        //dude
                        if obj_player.sprite_index!=obj_player.idle[0] {
                            var poob=random(4)
                            draw_sprite_ext(spr_slickcutscened,1,obj_camera.x-2+poob,obj_camera.y-2+poob,2,2,0,c_white,1)
                            draw_sprite_ext(spr_slickcutscened,1,obj_camera.x-2+poob,obj_camera.y-2+poob,2,2,0,colorsky,0.8)
                            draw_sprite_ext(spr_slickcutscened,1,obj_camera.x+(-2+poob)+8,obj_camera.y+(-2+poob)+8,2,2,0,c_black,shade)
                        } else {
                            scr_skinswapdude(c_white)
                                draw_sprite_ext(spr_slickcutscened,0,obj_camera.x,obj_camera.y,2,2,0,c_white,1)
                            shader_reset();
                            scr_skinswapdude(colorsky)
                                draw_sprite_ext(spr_slickcutscened,0,obj_camera.x,obj_camera.y,2,2,0,c_white,0.8)
                            shader_reset();
                            scr_skinswapdude(c_black);
                                draw_sprite_ext(spr_slickcutscened,0,obj_camera.x+8,obj_camera.y+8,2,2,0,c_white,shade)
                            shader_reset();
                        }
                    
                    }
                }
            break;
        }
}