//Tsunami

function scr_song6(){

	//tv screen surface handling
    var paralax=(((obj_camera.x/image_xscale)/4)-50) //tv screen paralaxing
    var scarysin=round(2*(sin(current_time/350)))
    var scarysin2=round(2*(sin((current_time-300)/350)))
    switch(mmmmmmm) {
        case 0:
            var colorbase1=make_colour_rgb(0,0,0)
            var colorbase2=make_colour_rgb(0,0,0)
            var colorgo1=make_colour_rgb(0,0,0)
            var colorgo2=make_colour_rgb(0,0,0)
        break;
        case 1:
            var colorbase1=make_colour_rgb(0,0,0)
            var colorbase2=make_colour_rgb(0,0,0)
            var colorgo1=make_colour_rgb(75,46,112)
            var colorgo2=make_colour_rgb(75/70,46/70,112/70)
        break;
        case 2:
            var colorbase1=make_colour_rgb(75,46,112)
            var colorbase2=make_colour_rgb(75/70,46/70,112/70)
            var colorgo1=make_colour_rgb(0,0,0)
            var colorgo2=make_colour_rgb(0,0,0)
        break;
        case 3: //cdboy green
            var colorbase1=make_colour_rgb(0,0,0)
            var colorbase2=make_colour_rgb(0,0,0)
            var colorgo1=make_colour_rgb(144,222,133)
            var colorgo2=make_colour_rgb(1,16,10)//(7,24,16)
        break;
        case 4:
            var colorbase1=make_colour_rgb(144,222,133)
            var colorbase2=make_colour_rgb(1,16,10)
            var colorgo1=make_colour_rgb(255,255,255)
            var colorgo2=make_colour_rgb(5,6,10)
        break;
        case 6: //cyan
            var colorbase1=make_color_hsv(153,240,182)
            var colorbase2=make_color_hsv(151,240,30)
            var colorgo1=make_colour_rgb(55,223,232)
            var colorgo2=make_color_rgb(10/2,53/2,65/2)
        break;
        case 7:
            var colorbase1=make_colour_rgb(55,223,232)
            var colorbase2=make_color_rgb(10/2,53/2,65/2)
            var colorgo1=make_colour_rgb(0,0,0)
            var colorgo2=make_color_rgb(0,0,0)
        break;
        case 8:
            var colorbase1=make_colour_rgb(0,0,0)
            var colorbase2=make_color_rgb(0,0,0)
            var colorgo1=make_color_hsv(153,240,182)
            var colorgo2=make_color_hsv(151,240,30)
        break;
        case 10:
            var colorbase1=make_color_hsv(153,240,182)
            var colorbase2=make_color_hsv(151,240,30)
            var colorgo1=make_colour_rgb(0,0,0)
            var colorgo2=make_color_rgb(0,0,0)
        break;
        case 11:
            var colorbase1=make_color_hsv(153,240,182)
            var colorbase2=make_color_hsv(151,240,30)
            var colorgo1=make_colour_rgb(255,255,255)
            var colorgo2=make_colour_rgb(5,6,10)
        break;
        case 12:
            var colorbase1=make_colour_rgb(255,255,255)
            var colorbase2=make_colour_rgb(5,6,10)
            var colorgo1=make_color_rgb(85,0,36)
            var colorgo2=make_color_rgb(30,0,7)
        break;
        case 13:
            var colorbase1=make_color_rgb(85,0,36)
            var colorbase2=make_color_rgb(30,0,7)
            var colorgo1=make_colour_rgb(144,222,133)
            var colorgo2=make_colour_rgb(1,16,10)//(7,24,16)
        break;
        default:
            var colorbase1=make_color_hsv(153,240,182)
            var colorbase2=make_color_hsv(151,240,30)
            var colorgo1=make_color_hsv(153,240,182)
            var colorgo2=make_color_hsv(151,240,30)
        break;
    }
    mmmm+=(1-mmmm)/30 
    var colorcool1=merge_color(colorbase1,colorgo1,mmmm)
    var colorcool2=merge_color(colorbase2,colorgo2,mmmm)
    //drawing sprites
    if event=1 {
        //floating
        var cdfloat=sin(current_time/-200)
        var bfloat=cos(current_time/200)
        //tv screens
        var background=surface_create(200,200)
        var scarystartv=surface_create(296,124)
        surface_set_target(scarystartv) //stars
            draw_clear_alpha(c_black,0) //reset alpha
            var stary;
            for(stary=0;stary<sprite_get_height(spr_hell);stary++) {
                var starsin=sin((current_time/800)+(stary/25))*15;
                draw_sprite_part_ext(spr_hell,1,0,stary,sprite_get_width(spr_nightskyfromgoogle),1,starsin-15,obj_backgroundp1.y+stary,2,1,c_white,1)
            }
        surface_reset_target();
        surface_set_target(background) //background
            draw_clear_alpha(c_black,0) //reset alpha
            //var g1=make_color_hsv(93,39,32)
            var g1=make_color_hsv(86,240,13)
            var g2=make_color_hsv(91,151,32)
            draw_rectangle_colour(0,0,200,200,g1,g1,g2,g2,false)
            draw_surface_part(scarystartv,13,40,34,24,29,44)
            draw_surface_part(scarystartv,13,73,35,31,15,68)
            draw_surface_part(scarystartv,13,89,39,28,17,122)
            draw_surface_part(scarystartv,240,40,34,24,137,44)
            draw_surface_part(scarystartv,240,73,35,31,150,68)
            draw_surface_part(scarystartv,240,89,39,28,144,122)
            draw_sprite_ext(spr_backstars,0,100,100,1,1,0,c_white,1)
        surface_reset_target();
        draw_surface_ext(background,obj_camera.x-200,bfloat+obj_camera.y-200,2,2,0,c_white,1)
        surface_free(scarystartv);
        surface_free(background);
        //everything else
        draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,obj_camera.x,cdfloat+obj_camera.y+200,2,2,0,c_white,1)
        draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,obj_camera.x,cdfloat+obj_camera.y+200,2,2,0,make_color_hsv(57,219,108),0.25)
        draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,obj_camera.x,cdfloat+obj_camera.y+200,1.8,1.9,0,c_black,0.6)
        if scr_shadercheck(sh_highlight,c_white,c_white) {
            draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,obj_camera.x,cdfloat+obj_camera.y+200,2,2,0,c_white,1)
            shader_reset();
        }
        draw_sprite_ext(spr_blackpixel,0,0,(obj_camera.y)+200,800,-50,0,c_black,1)
        draw_sprite_ext(spr_blackpixel,0,0,(obj_camera.y)-200,800,50,0,c_black,1)
    } else {
        draw_sprite(spr_buddyback,2,(((obj_camera.x/image_xscale)/3)-120),scarysin2)
        draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,1,colorcool2,0.31)
        mmmmm+=0.0025
        if mmmmm=1 {
            mmmmm=0
        }
        if !surface_exists(screend) screend=surface_create(45,45)
        //drawing screens
        surface_set_target(screend)
            draw_clear_alpha(c_black,0) //reset alpha
            switch(screen) {
                case "fump": //fump
                    draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(255,174,201),1)
                    var l;
                    var ll;
                    for(l=0;l<5;l++) {
                        for(ll=0;ll<5;ll++) {
                            draw_sprite(spr_fump,0,(24*l)-(mmmmm*48),(24*ll)-(mmmmm*48))
                        }
                    }
                break;
                case "intro": draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,c_blue,1) break;                      break;
                case "dark":
                    draw_clear_alpha(c_black,0) //reset alpha
                    draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(3,7,5),1)
                break;
                case "white":
                    //draw_clear_alpha(c_black,0) //reset alpha
                    draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(3,7,5),1)
                    draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,c_white,0.75+((sin(current_time/200))/5))
                break;
                case "boom-boom":
                    surface_set_target(screend)
                        //draw_clear_alpha(c_black,0) //reset alpha
                        if m%2=1 && obj_midi_clock.div_4_trigger=true {
                            mmm=1
                            m++
                        }
                        mmm-=0.0025
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(15,17,51),1)
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(18,18,218),mmm)
                    surface_reset_target();
                break;
                case "bo-bo-bo-bo":
                    surface_set_target(screend)
                        //draw_clear_alpha(c_black,0) //reset alpha
                        if obj_midi_clock.div_4_trigger=true {
                            if m%2=1 {
                                mmm=1
                            } else {
                                mmmmmm=1
                            }
                            m++
                        }
                        //
                        // mmm-=0.0025
                        //mmmmmm-=0.0025
                        mmm-=0.0025
                        mmmmmm-=0.0125
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(15,17,51),1)
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(18,18,218),mmm)
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(107,107,231),mmmmmm)
                    surface_reset_target();
                break;
                case "static":
                    mmmmmmm+=0.0025
                    if mmmmmmm=1 {
                        mmmmmmm=0
                        screen=1+round(random(4))
                    }
                    //draw screen
                    draw_clear_alpha(c_black,0) //reset alpha
                    if round(current_time)%2=1{
                        var left=1
                    } else {
                        var left=-1
                    }
                    draw_sprite_ext(spr_3static,0,25,25,1,left,0,c_white,1)
                break;
                case "earth": //earth
                    draw_clear_alpha(c_black,0) //reset alpha
                    draw_sprite_ext(spr_blackpixel,0,0,0,45,45,0,c_white,1)
                    //earth
                    draw_sprite(spr_earth,current_time/200,22,22)
                break;
                case "colorlight":
                    draw_clear_alpha(c_black,0) //reset alpha
                    draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,colorcool1,1)
                break;
                default:
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(34,34,34),1)
                        draw_sprite(spr_tsunamiscreen,screend,25,25)
                break;
            }
        surface_reset_target();
        //actually draw them
        draw_surface_part(screend,0,0,42,40,41+paralax,132+scarysin) //far left green
        draw_surface_part(screend,5,5,37,33,103+paralax,121+scarysin) //top middle purple
        draw_surface_part(screend,11,14,27,22,160+paralax,150+scarysin) //blue
        draw_surface_part(screend,7,10,30,26,147+paralax,191+scarysin) //bottom purple
        draw_surface_part(screend,6,9,33,26,203+paralax,166+scarysin) //the only green screen on the left side
        draw_surface_part(screend,11,11,23,21,311+paralax,171+scarysin) //left far purple
        draw_surface_part(screend,3,6,37,28,360+paralax,138+scarysin) //right top blue
        draw_surface_part(screend,4,8,36,27,372+paralax,180+scarysin) //right top bottom green, y'know?
        draw_surface_part(screend,4,5,37,33,421+paralax,121+scarysin) //right purple top
        draw_surface_part(screend,7,9,29,25,430+paralax,175+scarysin) //right purple bottom
        draw_surface_part(screend,6,7,41,38,478+paralax,133+scarysin) //far far green
        draw_surface_part(screend,12,11,22,23,483+paralax,191+scarysin) //bottom right blue
        draw_sprite_ext(spr_buddyback,1,(((obj_camera.x/image_xscale)/4)-50),scarysin,1,1,0,c_white,1)
        draw_sprite_ext(spr_buddyback,1,(((obj_camera.x/image_xscale)/4)-50),scarysin,1,1,0,colorcool1,0.15)
        draw_surface_part(screend,7,8,30,28,25,271) //right front
        draw_surface_part(screend,3,10,38,26,117,207) //middle front
        draw_surface_part(screend,15,17,28,25,466,267) //middle left
        //mmmm+=(mmm-mmmm)/10 
        draw_sprite(spr_buddyback,0,0,0)
        scr_shadercheck(sh_silhouette,colorcool2)
        draw_sprite_ext(spr_buddyback,0,0,0,1,1,0,colorcool2,0.5)
        shader_reset();
        with(obj_lady) {
            drawgirl=false
            image_alpha=0
            draw_sprite(spr_speakeroff,image_index,x,y)
            scr_shadercheck(sh_silhouette,colorcool2)
            draw_sprite_ext(spr_speakeroff,image_index,x,y,1,1,0,colorcool2,0.41)
            shader_reset();
        }
        //buddy
        with(obj_nermal) {
            image_alpha=0
            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,c_white,1)
            if scr_shadercheck(sh_silhouette,colorcool1) {
                draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,c_white,0.14)
                shader_reset();
                scr_silhouette(colorcool2)
                    draw_sprite_ext(sprite_index,image_index,x+4,y+4,image_xscale,image_xscale,0,c_white,0.41)
                shader_reset();
            } else {
                draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,colorcool1,0.14)
            }
            draw_sprite_ext(sprite_index,image_index,x+4,y+4,image_xscale,image_xscale,0,c_black,0.34)
        }
        //player
        with(obj_player) {
            image_alpha=0
            if scr_shadercheck(shader_colorswap,c_white) {
                draw_sprite(sprite_index,image_index,x,y)
                shader_reset();
                scr_silhouette(colorcool1)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.14)
                shader_reset();
                scr_silhouette(colorcool2)
                    draw_sprite_ext(sprite_index,image_index,x+4,y+4,1,1,0,c_white,0.41)
                shader_reset();
                draw_sprite_ext(sprite_index,image_index,x+4,y+4,1,1,0,c_black,0.34)
                scr_highlight(make_color_rgb(32,30,40),c_white)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1)
                shader_reset();
            } else {
                draw_sprite(sprite_index,image_index,x,y)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorcool1,0.14)
                draw_sprite_ext(sprite_index,image_index,x+4,y+4,1,1,0,c_black,0.34)
            }
        }
        //funny story here,
        //cd boy's shirt glowing here wasn't actually intentional but
        //it looks cool so I kept it :P
        with(obj_badguy) {
            if idle[0]=spr_cdboyidle { //normal cd boy
                if !surface_exists(cdboy) {
                    cdboy=surface_create(200,200);
                }
                surface_set_target(cdboy)
                draw_clear_alpha(c_black,0) //reset alpha
                    scr_drawcd(100,195);
                surface_reset_target();
                //draw cd boy surfaces
                var cdx=55
                var cdy=120
                draw_surface(cdboy,cdx,cdy)
                if scr_shadercheck(sh_silhouette,colorcool1) {
                    draw_surface_ext(cdboy,cdx,cdy,1,1,0,c_white,0.14)
                    shader_reset();
                    scr_silhouette(colorcool2)
                        draw_surface_ext(cdboy,cdx-4,cdy+4,1,1,0,c_white,0.41)
                    shader_reset();
                    draw_surface_ext(cdboy,cdx-4,cdy+4,1,1,0,c_black,0.34)
                    scr_highlight(c_white,c_white)
                        draw_surface_ext(cdboy,cdx,cdy,1,1,0,c_white,1)
                    shader_reset();
                } else {
                    draw_surface_ext(cdboy,cdx,cdy,1,1,0,colorcool1,0.14)
                    draw_surface_ext(cdboy,cdx-4,cdy+4,1,1,0,c_black,0.34)
                }
            } else { //crazy cd boy
                image_alpha=0
                draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,c_white,1)
                if scr_shadercheck(sh_silhouette,colorcool1) {
                    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,c_white,0.14)
                    shader_reset();
                    scr_silhouette(colorcool2)
                        draw_sprite_ext(sprite_index,image_index,x-4,y+4,image_xscale,image_xscale,0,c_white,0.41)
                    shader_reset();
                    draw_sprite_ext(sprite_index,image_index,x-4,y+4,image_xscale,image_xscale,0,c_black,0.34)
                    //eyes and shirt
                    scr_highlight(c_white,c_white)
                        draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,c_white,1)
                    shader_reset();
                } else {
                    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,colorcool1,0.14)
                    draw_sprite_ext(sprite_index,image_index,x-4,y+4,image_xscale,image_xscale,0,c_black,0.34)
                }
            }
        }
    }
    //buddy notes
    with(obj_note) {
        if note>(obj_song.notes-1) && type=3 {
            obj_note.bombhit=false
            bombsprite=spr_notes3
        }
    }
}