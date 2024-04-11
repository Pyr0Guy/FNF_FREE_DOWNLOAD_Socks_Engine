function scr_song8()
{
	var coolcolor1=make_color_hsv(113,182,169)
    if mmm%2=0 {
        var bobby=-1
    } else {
        var bobby=1
    }
    //background stars
    with(obj_backgroundp1) {
        image_alpha=0
        //stars
        var l;
        for(l=0;l<=300;l++) {
            var ll=l/25
            draw_sprite_part(sprite_index,1,0,l,sprite_width,1,round(exp(l*0.01)*(sin(current_time/700+ll))),l)
        }
        //back stage
        draw_sprite(sprite_index,2,x,y)
        draw_sprite_ext(sprite_index,2,x,y,1,1,0,c_black,0.35)
        draw_sprite(sprite_index,3,x,y)
    }
    //BLIMP!!!!
    m+=0.25
    if m>=1100 {
        m=-100
    }
    //draw_sprite(spr_gunkblimp,0,m,40)
    var b;
    for(b=0;b<72;b++) {
        var sine=round(((sin(current_time/400+(b/(1/25))))*2))
        //a friend of mine told me that "b/(1/25)" is just b*25 with extra steps.
        //and I was going to fix it but he was
        //being an ass about it so I'm keeping it in
        draw_sprite_part(spr_gunkblimp,0,b,0,1,32,x-71+b+m,50+sine)
    }
    draw_sprite_part(spr_gunkblimp,0,72,0,143,32,x+m,50)
    //background stage
    with(obj_backgroundp1) {
        draw_sprite_ext(spr_whitepixel,0,0,358,room_width,room_height,0,make_colour_rgb(48,46,61),1)
        draw_sprite(sprite_index,image_index,x,y)
        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,0.35)
        draw_sprite(sprite_index,4,x,y)
        draw_sprite(spr_gunkfans,0,x,sprite_height+(sin(current_time/200)))
    }
    //characters
    with(obj_lady) {
        image_alpha=0
        drawgirl=false
        var sadsin=round(sin(current_time/400)*4)
        draw_sprite(sprite_index,image_index,x,y)
        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,coolcolor1,0.25)
        draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.5)
        draw_sprite(spr_speakersscreenlight,image_index,x,y)
        draw_sprite(sprite[type],frame,x+sadsin,y)
        draw_sprite_ext(sprite[type],frame,x+sadsin,y,1,1,0,coolcolor1,0.25)
        draw_sprite_ext(sprite[type],frame,x+sadsin,y+4,1,1,0,c_black,0.5)
    }
    with(obj_player) { 
        image_alpha=0
        if scr_shadercheck(shader_colorswap,c_white) {
            draw_sprite(sprite_index,image_index,x,y)
            shader_reset();
            scr_skinswapdude(coolcolor1)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.25)
            shader_reset();
        } else {
            draw_sprite(sprite_index,image_index,x,y)
            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,coolcolor1,0.25)
        }
        draw_sprite_ext(sprite_index,image_index,x+4,y+4,1,1,0,c_black,0.5)
    }
    with(obj_georgeghost) {
        visible=false
        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_red,image_alpha)
    }
    with(obj_badguy) {
        image_alpha=0
        //rage sprites
        var rage;
        for (rage=4;rage<8;rage++) {
            if sprite_index=anim[rage] {
                var randx=-6+irandom(12)
                var randy=-6+irandom(12)
                instance_create(x+randx,y+randy,obj_georgeghost)
            }
        }
        //regular sprites
        draw_sprite(sprite_index,image_index,x,y)
        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,coolcolor1,0.25)
        draw_sprite_ext(sprite_index,image_index,x-4,y+4,1,1,0,c_black,0.5)
    }
    //crowd surfing cyan
    if mmmmmmm<999 {
        mmmmmmm+=0.5
        var csin=sprite_get_height(obj_backgroundp1.sprite_index)+(sin(current_time/200));
        draw_sprite(spr_cyancrowdsurf,0,mmmmmmm,csin)
        draw_sprite_ext(spr_cyancrowdsurf,0,mmmmmmm,csin,1,1,0,coolcolor1,0.25)
        draw_sprite_ext(spr_cyancrowdsurf,0,mmmmmmm,csin+4,1,1,0,c_black,0.5)
    }
    switch(event) {
        case 0:
            draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
        break;
        case 1: //real world intro
            //scrolling
            if paused=false {
                mm+=0.05*bobby
            }
            //sky
            var l;
            for(l=0;l<=250;l++) {
                draw_sprite_part(spr_gunkstage1,1,0,l,903,1,(obj_camera.x-200)+(mmm*-200)+(sin(current_time/200+(l/15)))/(l/140),(obj_camera.y-200)+l)
            }
            //cool images
            draw_sprite_ext(spr_gunkfbb,mmmmmm,obj_camera.x+(mm*-1),obj_camera.y,2,2,0,c_white,1)
            if scr_shadercheck(shader_colorswap,c_white) {
                draw_sprite_ext(spr_gunkfb,mmm,obj_camera.x+mm,obj_camera.y,2,2,0,c_white,1)
                shader_reset();
                scr_skinswapdude(coolcolor1)
                    draw_sprite_ext(spr_gunkfb,mmm,obj_camera.x+mm,obj_camera.y,2,2,0,c_white,0.25)
                shader_reset();
            } else {
                draw_sprite_ext(spr_gunkfb,mmm,obj_camera.x+mm,obj_camera.y,2,2,0,c_white,1)
                draw_sprite_ext(spr_gunkfb,mmm,obj_camera.x+mm,obj_camera.y,2,2,0,coolcolor1,0.25)
            }
            draw_sprite_ext(spr_gunkfb,mmm,obj_camera.x+mm+(bobby*8),obj_camera.y,2,2,0,c_black,0.5)
            //SCARY DUDE!
            if mmmm!=0 {
                mmmm+=0.045
                mmmmm=1-(exp(mmmm-4))
            }
            scr_shadercheck(sh_silhouette,make_color_rgb(31,30,40))
                draw_sprite_ext(spr_gunkfb,mmm,obj_camera.x+mm,obj_camera.y,2,2,0,c_black,mmmmm)
            shader_reset();
            if scr_shadercheck(sh_highlight,make_color_rgb(32,30,40),c_white) {
                draw_sprite_ext(spr_gunkfb,mmm,obj_camera.x+mm,obj_camera.y,2,2,0,c_white,mmmmm)
                shader_reset();
            }
        break;
        case 2: //rest of intro
            //scrolling
            if paused=false {
                mm+=0.05*bobby
            }
            draw_sprite_ext(spr_gunkfbb,mmmmmm,obj_camera.x+(mm*-1),obj_camera.y,2,2,0,c_white,1)
            draw_sprite_ext(spr_gunkfb,mmm,obj_camera.x+mm,obj_camera.y,2,2,0,c_white,1)
        break;
        case 3: //final part
            if mmmm>=0.01 {
                mmmm+=0.007
                mmmmm=(exp(mmmm))-1
            }
            draw_sprite_ext(spr_gunkfb,mmm,obj_camera.x,obj_camera.y,2,2,0,c_white,1)
            draw_sprite_ext(spr_gunkfb,mmm+1,obj_camera.x,obj_camera.y,2,2,0,c_white,mmmmm)
        break;
        case 22:
            waveint+=((mm*2)-waveint)/50
            if mmm>0 {
                mmm+=(1-mmm)/40
            }
            mmmmm+=(mmmm-mmmmm)/50
            draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,waveint/4)
            draw_sprite_ext(spr_scaryeyes,0,(obj_player.x+50),obj_player.y,1,1,0,c_white,mmm)
        break;
        case "boobies":
            mm+=0.5
            if mm>=200 {
                mm=0
            }
            mmm+=(mmmm-mmm)/30
            mmmmm+=(mmmmmm-mmmmm)/30
            if !surface_exists(gunkscreen) {
                gunkscreen=surface_create(400,400)
            } else {
                draw_surface(gunkscreen,obj_camera.x-200,obj_camera.y-200)
            }
            if !surface_exists(dudescreen) {
                dudescreen=surface_create(400,400)
            } else {
                draw_surface(dudescreen,obj_camera.x-200,obj_camera.y-200)
            }
            //gunk surface
            if !sprite_exists(gunkfreeze) {
                surface_set_target(gunkscreen)
                    draw_rectangle(0,0,180,400,false)
                    draw_triangle(180,0,220,0,180,400,false)
                    draw_set_color_write_enable(1,1,1,0)
                    var colorcool1=make_color_rgb(135,88,163);
                    var colorcool2=make_color_rgb(100,30,133);
                    var colorcool3=make_color_rgb(60,19,79);
                    draw_rectangle_colour(0,0,400,400,colorcool1,colorcool1,colorcool2,colorcool2,false)
                    var i;
                    var ii;
                    scr_shadercheck(sh_silhouette,colorcool3);
                        for(i=-2;i<9;i++) {
                            for(ii=-2;ii<9;ii++) {
                                draw_sprite_ext(spr_stradicon,0,mm+(i*100),mm+(ii*100),1,1,0,colorcool3,1)
                            }
                        }
                    shader_reset();
                    with(obj_georgeghost) {
                        draw_sprite_ext(sprite_index,image_index,85+irandom(10),435+irandom(10),2,2,0,c_red,image_alpha)
                    }
                    draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,90,440,2,2,0,c_white,1)
                    draw_line_width_color(220,0,180,400,6,c_black,c_black)
                    draw_set_color_write_enable(1,1,1,1)
                surface_reset_target();
            } else {
                draw_sprite_ext(gunkfreeze,0,obj_camera.x-200,obj_camera.y-200,1,1,0,c_purple,1)
            }
            //dude surface
            if !sprite_exists(dudefreeze) {
                surface_set_target(dudescreen)
                    draw_rectangle(220,0,400,400,false)
                    draw_triangle(220,400,180,400,220,0,false)
                    draw_set_color_write_enable(1,1,1,0)
                    var colorcool1=make_color_rgb(249,244,153);
                    var colorcool2=make_color_rgb(247,203,155);
                    var colorcool3=make_color_rgb(247,153,108)
                    draw_rectangle_colour(0,0,400,400,colorcool1,colorcool1,colorcool2,colorcool2,false)
                    var i;
                    var ii;
                    var flop;
                    if obj_song.skill<65 {
                        flop=0
                    } else {
                        flop=1
                    }
                    scr_shadercheck(sh_silhouette,colorcool3);
                        for(i=-2;i<9;i++) {
                            for(ii=-2;ii<9;ii++) {
                                draw_sprite_ext(spr_dudeicon,flop,mm+(i*100),mm+(ii*100),1,1,0,colorcool3,1)
                            }
                        }
                    shader_reset();
                    scr_shadercheck(shader_colorswap,c_white)
                        draw_sprite_ext(obj_player.sprite_index,obj_player.image_index,370,435,3,3,0,c_white,1)
                    shader_reset();
                    draw_line_width_color(220,0,180,400,6,c_black,c_black)
                    draw_set_color_write_enable(1,1,1,1)
                surface_reset_target();
            } else {
                draw_sprite_ext(dudefreeze,0,obj_camera.x-200,obj_camera.y-200,1,1,0,c_yellow,1)
            }
            //sillohoueotues
            draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_white,0.25-(mmm/520))
            with(obj_player) {
                draw_sprite_ext(sprite_index,image_index,obj_camera.x+(510*(1/4))+(obj_song.mmmmm),obj_camera.y+200,2,2,0,c_black,1)
            }
            with(obj_badguy) {
                draw_sprite_ext(sprite_index,image_index,obj_camera.x-(510*(1/4))-(obj_song.mmm),obj_camera.y+200,2,2,0,c_black,1)
            }
        break;
        case "gunkend":
            draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
            if scr_shadercheck(sh_silhouette,c_white) {
                draw_sprite_ext(spr_biggestfan,1,obj_camera.x-1.5,obj_camera.y,1.5,1.5,0,c_white,1)
                draw_sprite_ext(spr_biggestfan,1,obj_camera.x+1.5,obj_camera.y,1.5,1.5,0,c_white,1)
                draw_sprite_ext(spr_biggestfan,1,obj_camera.x,obj_camera.y-1.5,1.5,1.5,0,c_white,1)
                draw_sprite_ext(spr_biggestfan,1,obj_camera.x,obj_camera.y+1.5,1.5,1.5,0,c_white,1)
                shader_reset();
            }
            draw_sprite_ext(spr_biggestfan,1,obj_camera.x,obj_camera.y,1.5,1.5,0,c_white,1)
            draw_set_font(fnt_comic2)
            draw_set_halign(fa_center)
            draw_text(obj_camera.x,obj_camera.y+180,string_hash_to_newline("'Mom's biggest fan'"))
            draw_set_halign(fa_left)
        break;
        default:
        break;
    }
}