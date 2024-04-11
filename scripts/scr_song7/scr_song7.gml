function scr_song7()
{
	//make cyan's notes normal (not nermal)
    with(obj_note) {
        bombhit=false
        if type=3 {
            bombsprite=spr_notes
        }
    }
	
    var coolcolor1=make_color_hsv(123,240,196)
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
        //being a dingus about it so I'm keeping it in
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
    with(obj_lady) {
        image_alpha=0
        drawgirl=false
        draw_sprite(sprite_index,image_index,x,y)
        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,coolcolor1,0.4)
        draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.30)
        draw_sprite(spr_speakersscreenlight,image_index,x,y)
        if obj_song.event!=4 { //cyan and lady can't be in two places at once
            draw_sprite(sprite[type],frame,x,y)
            draw_sprite_ext(sprite[type],frame,x,y,1,1,0,coolcolor1,0.4)
            draw_sprite_ext(sprite[type],frame,x,y+4,1,1,0,c_black,0.30)
        }
    }
    if event=4 { //dance break
        var poop=sin(current_time/200)*2;
        //mm+=0.0175
        mm++
        if paused=false {
            if obj_badguy.sprite_index=spr_gunkw4d1 or obj_badguy.sprite_index=spr_gunkw4d2 {
                //obj_badguy.y=mmm-(sin(mm*(pi*2))*20)
                obj_badguy.y=mmm-round(abs(((sin(0.135263017097*mm))*20)))
            }
        } else {
            obj_badguy.y=mmm
        }
        with(obj_mimic) {
            if sprite_index=spr_cyanneru {
                draw_sprite(sprite_index,current_time/100,x,y)
                draw_sprite_ext(sprite_index,current_time/100,x,y,1,1,0,coolcolor1,0.4)
                draw_sprite_ext(sprite_index,current_time/100,x,y+4,1,1,0,c_black,0.30)
            } else {
                image_alpha=0
                draw_sprite(sprite_index,image_index,x,y)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,coolcolor1,0.4)
                draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.30)
            }
        }
        draw_sprite_ext(spr_dancebreak,poop,obj_camera.x,obj_camera.y-100,1,1,0,c_black,1)
        draw_sprite(spr_dancebreak,0,obj_camera.x,(obj_camera.y-100)+poop)
    }
    switch(event) {
        case 1:
            draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
            if scr_shadercheck(sh_silhouette,c_white) {
                draw_sprite_ext(spr_gunkicon,0,obj_camera.x-1.5,obj_camera.y,1.5,1.5,0,c_white,1)
                draw_sprite_ext(spr_gunkicon,0,obj_camera.x+1.5,obj_camera.y,1.5,1.5,0,c_white,1)
                draw_sprite_ext(spr_gunkicon,0,obj_camera.x,obj_camera.y-1.5,1.5,1.5,0,c_white,1)
                draw_sprite_ext(spr_gunkicon,0,obj_camera.x,obj_camera.y+1.5,1.5,1.5,0,c_white,1)
                shader_reset();
            }
            draw_sprite_ext(spr_gunkicon,0,obj_camera.x,obj_camera.y,1.5,1.5,0,c_white,1)
        break;
        case 3:
            draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
        break;
        default:
            //draw characters
            with(obj_nermal) { 
                image_alpha=0
                draw_sprite(sprite_index,image_index,x,y)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,coolcolor1,0.4)
                draw_sprite_ext(sprite_index,image_index,x-4,y+4,1,1,0,c_black,0.30)
            }
            with(obj_badguy) { 
                image_alpha=0
                var yy;
                if sprite_index=spr_gunkayy or obj_song.badan=spr_gunkayy {
                    if obj_song.mmmmmmm<1 {
                        obj_song.mmmmmmm+=0.045
                    }
                    yy=round(y-(20*(sin(obj_song.mmmmmmm*pi))))
                } else {
                    yy=y
                    obj_song.mmmmmmm=0
                }
                draw_sprite(sprite_index,image_index,x,yy)
                draw_sprite_ext(sprite_index,image_index,x,yy,1,1,0,coolcolor1,0.4)
                draw_sprite_ext(sprite_index,image_index,x-4,yy+4,1,1,0,c_black,0.30)
            }
            with(obj_player) {
                image_alpha=0
                if scr_shadercheck(shader_colorswap,c_white) {
                    draw_sprite(sprite_index,image_index,x,y)
                    shader_reset();
                    scr_skinswapdude(coolcolor1)
                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.4)
                    shader_reset();
                } else {
                    draw_sprite(sprite_index,image_index,x,y)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,coolcolor1,0.4)
                }
                draw_sprite_ext(sprite_index,image_index,x+4,y+4,1,1,0,c_black,0.30)
            }
            //scary ending
            if event="scary" {
                if paused=false waveint+=0.002;
                draw_sprite(spr_sat,1,obj_camera.x,obj_camera.y)
                draw_sprite(spr_sat,0,obj_camera.x,obj_camera.y)
                draw_sprite(spr_tillite,0,obj_camera.x,obj_camera.y)
                draw_sprite_ext(spr_tillite,1,obj_camera.x,obj_camera.y,1,1,0,c_white,abs(sin(current_time/200)))
            }
        break;
    }
}