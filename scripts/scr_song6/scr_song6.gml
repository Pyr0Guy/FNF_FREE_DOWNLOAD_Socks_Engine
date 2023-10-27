//Tsunami

function scr_song6(){

	//tv screen surface handling
        var paralax=(((obj_camera.x/image_xscale)/4)-50) //tv screen paralaxing
        var scarysin=round(2*(sin(current_time/350)))
        var scarysin2=round(2*(sin((current_time-300)/350)))
        //var colorcool1=make_color_rgb(85,0,36)
        //var colorcool2=make_color_rgb(100,0,26)
        //var colorcool1=make_color_hsv(153,240,182)//make_color_rgb(132,153,255)
        //var colorcool2=make_color_hsv(151,240,30)//make_color_rgb(0,15,64)
        //cool coloring
        switch(obj_song.mmmmmmm) {
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
        obj_song.mmmm+=((1-obj_song.mmmm)/30) * global.delta_multiplier 
        var colorcool1=merge_color(colorbase1,colorgo1,obj_song.mmmm)
        var colorcool2=merge_color(colorbase2,colorgo2,obj_song.mmmm)
        //screen bop
        if instance_exists(obj_midi_clock) {
            if obj_midi_clock.div_4_trigger=true {
                obj_song.m += 1 * global.delta_multiplier
                switch(obj_song.mm) {
                    case "hes doing something":
                        if obj_song.m%2=1 {
                            obj_camera.image_xscale=obj_camera.image_xscale-40
                        }
                    break;
                    case "intense":
                        if obj_song.m%2=1 {
                            obj_camera.image_xscale=obj_camera.image_xscale-20//40
                        } else {
                            obj_camera.image_xscale=obj_camera.image_xscale-10
                        }
                    break;
                    case "hey!":
                        obj_camera.image_xscale=obj_camera.image_xscale-10
                    break;
                    case "idk":
                        if obj_song.m%4=1 {
                            obj_camera.image_xscale=obj_camera.image_xscale-20
                        }
                    break;
                }
            }
        }
        //drawing sprites
        if obj_song.event=1 {
            //floating
            var cdfloat=sin(current_time/-200)
            var bfloat=cos(current_time/200)
            //tv screens
            var background=surface_create(200,200)
            var scarystartv=surface_create(296,124)
            surface_set_target(scarystartv) //stars
                draw_clear_alpha(c_black,0) //reset alpha
                var time = floor(shader_get_uniform(sh_cool, "Time"))
                var texel = floor(shader_get_uniform(sh_cool, "Texel"))
                shader_set(sh_cool)
                    shader_set_uniform_f(time, current_time)
                    shader_set_uniform_f(texel, 0.005, 0.005)
                    draw_sprite(spr_hell,0,0,0)
                shader_reset();
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
            scr_highlight(c_white,c_white)
                draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,obj_camera.x,cdfloat+obj_camera.y+200,2,2,0,c_white,1)
            shader_reset();
            draw_sprite_ext(spr_blackpixel,0,0,(obj_camera.y)+200,800,-50,0,c_black,1)
            draw_sprite_ext(spr_blackpixel,0,0,(obj_camera.y)-200,800,50,0,c_black,1)
        } else {    //this stuff isn't indented because I added this if statement later and I didn't feel like indenting all of this manually
        draw_sprite(spr_buddyback,2,(((obj_camera.x/image_xscale)/3)-120),scarysin2)
        draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,1,colorcool2,0.31)
        obj_song.mmmmm+=0.0025 * global.delta_multiplier
        if obj_song.mmmmm=1 {
            obj_song.mmmmm=0
        }
        //drawing screens
        var t;
        for(t=0;t<=15;t++) {
            switch(screen[t,0]) {
                case "fump": //fump
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(255,174,201),1)
                        
                        //m-=0.005
                        //if m<=-48 {
                        //    m=0
                        //}
                        
                        var l;
                        var ll;
                        for(l=0;l<5;l++) {
                            for(ll=0;ll<5;ll++) {
                                draw_sprite(spr_fump,0,(24*l)-(obj_song.mmmmm*48),(24*ll)-(obj_song.mmmmm*48))
                            }
                        }
                    surface_reset_target();
                break;
                case "intro":
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,c_blue,1)
                    surface_reset_target();
                break;
                case "dark":
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(3,7,5),1)
                    surface_reset_target();
                break;
                case "white":
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        //draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(3,7,5),1)
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,c_white,0.75+((sin(current_time/200))/5))
                    surface_reset_target();
                break;
                case "boom-boom":
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        //draw_clear_alpha(c_black,0) //reset alpha
						if(instance_exists(obj_midi_clock))
						{
	                        if obj_song.m%2=1 && obj_midi_clock.div_4_trigger=true {
	                            obj_song.mmm=1
	                        }
						}
                        obj_song.mmm-=0.0025 * global.delta_multiplier
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(15,17,51),1)
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(18,18,218),obj_song.mmm)
                    surface_reset_target();
                break;
                case "bo-bo-bo-bo":
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        //draw_clear_alpha(c_black,0) //reset alpha
						if instance_exists(obj_midi_clock) {
	                        if obj_midi_clock.div_4_trigger=true {
	                            if obj_song.m%2=1 {
	                                obj_song.mmm=1
	                            } else {
	                                obj_song.mmmmmm=1
	                            }
	                        }
						}
                        obj_song.mmm-=0.0025 * global.delta_multiplier
                        obj_song.mmmmmm-=0.0025 * global.delta_multiplier
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(15,17,51),1)
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(18,18,218),obj_song.mmm)
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(107,107,231),obj_song.mmmmmm)
                    surface_reset_target();
                break;
                case "static":
                    obj_song.mmmmmmm+=0.0025 * global.delta_multiplier
                    if obj_song.mmmmmmm=1 {
                        obj_song.mmmmmmm=0
                        for(tv=0;tv<=15;tv++) {
                            screen[tv,0]=1+round(random(4))
                        }
                    }
                    //draw screen
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        if round(current_time)%2=1{
                            var left=1
                        } else {
                            var left=-1
                        }
                        draw_sprite_ext(spr_3static,0,25,25,1,left,0,c_white,1)
                    surface_reset_target();
                break;
                case "earth": //earth
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_blackpixel,0,0,0,45,45,0,c_white,1)
                        //earth
                        draw_sprite(spr_earth,current_time/200,22,22)
                    surface_reset_target();
                break;
                case "colorlight":
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,colorcool1,1)
                    surface_reset_target();
                break;
                default:
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(34,34,34),1)
                        draw_sprite(spr_tsunamiscreen,screen[t,0],25,25)
                    surface_reset_target();
                break;
            }
        }
        //actually draw them
        draw_surface_part(screen[0,1],0,0,42,40,41+paralax,132+scarysin) //far left green
        draw_surface_part(screen[1,1],5,5,37,33,103+paralax,121+scarysin) //top middle purple
        draw_surface_part(screen[2,1],11,14,27,22,160+paralax,150+scarysin) //blue
        draw_surface_part(screen[3,1],7,10,30,26,147+paralax,191+scarysin) //bottom purple
        draw_surface_part(screen[4,1],6,9,33,26,203+paralax,166+scarysin) //the only green screen on the left side
        draw_surface_part(screen[5,1],11,11,23,21,311+paralax,171+scarysin) //left far purple
        draw_surface_part(screen[6,1],3,6,37,28,360+paralax,138+scarysin) //right top blue
        draw_surface_part(screen[7,1],4,8,36,27,372+paralax,180+scarysin) //right top bottom green, y'know?
        draw_surface_part(screen[8,1],4,5,37,33,421+paralax,121+scarysin) //right purple top
        draw_surface_part(screen[9,1],7,9,29,25,430+paralax,175+scarysin) //right purple bottom
        draw_surface_part(screen[10,1],6,7,41,38,478+paralax,133+scarysin) //far far green
        draw_surface_part(screen[11,1],12,11,22,23,483+paralax,191+scarysin) //bottom right blue
        draw_sprite_ext(spr_buddyback,1,(((obj_camera.x/image_xscale)/4)-50),scarysin,1,1,0,c_white,1)
        scr_silhouette(colorcool2);
            draw_sprite_ext(spr_buddyback,1,(((obj_camera.x/image_xscale)/4)-50),scarysin,1,1,0,c_white,0.5)
        shader_reset();
        draw_surface_part(screen[12,1],7,8,30,28,25,271) //right front
        draw_surface_part(screen[13,1],3,10,38,26,117,207) //middle front
        draw_surface_part(screen[14,1],15,17,28,25,466,267) //middle left
        //free surfaces
        var v;
        for(v=0;v<=15;v++) {
            surface_free(screen[v,1])
        }
        //drawing MORE sprites :3
        //mmmm+=(mmm-mmmm)/10 
        draw_sprite(spr_buddyback,0,0,0)
        scr_silhouette(colorcool2);
            draw_sprite_ext(spr_buddyback,0,0,0,1,1,0,c_white,0.5)
        shader_reset();
        with(obj_lady) {
            drawgirl=false
            image_alpha=0
            draw_sprite(spr_speakeroff,image_index,x,y)
            scr_silhouette(colorcool2)
                draw_sprite_ext(spr_speakeroff,image_index,x,y,1,1,0,c_white,0.41)
            shader_reset();
        }
        //buddy
        with(obj_nermal) {
            image_alpha=0
            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,c_white,1)
            scr_silhouette(colorcool1)
                draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,c_white,0.14)
            shader_reset();
            scr_silhouette(colorcool2)
                draw_sprite_ext(sprite_index,image_index,x+4,y+4,image_xscale,image_xscale,0,c_white,0.41)
            shader_reset();
            draw_sprite_ext(sprite_index,image_index,x+4,y+4,image_xscale,image_xscale,0,c_black,0.34)
        }
        //player
        with(obj_player) {
            image_alpha=0
            scr_skinswapdude(c_white)
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
        }
        //funny story here,
        //cd boy's shirt glowing here wasn't actually intentional but
        //it looks cool so I kept it :P
        with(obj_badguy) {
            if idle[0]=spr_cdboyidle { //normal cd boy
                cdboy=surface_create(200,200);
                surface_set_target(cdboy)
                    draw_clear_alpha(c_black,0) //reset alpha
                        scr_drawcd(100,195);
                    surface_reset_target();
                    //draw cd boy surfaces
                    var cdx=55
                    var cdy=120
                    draw_surface(cdboy,cdx,cdy)
                    scr_silhouette(colorcool1)
                        draw_surface_ext(cdboy,cdx,cdy,1,1,0,c_white,0.14)
                    shader_reset();
                    scr_silhouette(colorcool2)
                        draw_surface_ext(cdboy,cdx-4,cdy+4,1,1,0,c_white,0.41)
                    shader_reset();
                    draw_surface_ext(cdboy,cdx-4,cdy+4,1,1,0,c_black,0.34)
                    scr_highlight(c_white,c_white)
                        draw_surface_ext(cdboy,cdx,cdy,1,1,0,c_white,1)
                    shader_reset();
                    surface_free(cdboy);
            } else { //crazy cd boy
                image_alpha=0
                draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,c_white,1)
                scr_silhouette(colorcool1)
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
            }
        }
        
        
        /*
        //draw cd boy
        //170 320
        cdboy=surface_create(200,200);
            surface_set_target(cdboy)
            draw_clear_alpha(c_black,0) //reset alpha
            with(obj_badguy) {
                scr_drawcd(100,195);
            }
            surface_reset_target();
            //draw cd boy surfaces
            var cdx=55
            var cdy=120
            draw_surface(cdboy,cdx,cdy)
            scr_silhouette(colorcool1)
                draw_surface_ext(cdboy,cdx,cdy,1,1,0,c_white,0.14)
            shader_reset();
            scr_silhouette(colorcool2)
                draw_surface_ext(cdboy,cdx-4,cdy+4,1,1,0,c_white,0.41)
            shader_reset();
            draw_surface_ext(cdboy,cdx-4,cdy+4,1,1,0,c_black,0.34)
            scr_highlight(c_white,c_white)
                draw_surface_ext(cdboy,cdx,cdy,1,1,0,c_white,1)
            shader_reset();
        surface_free(cdboy);
        */
        }
        //buddy notes
        with(obj_note) {
            if note>(obj_song.notes-1) && type=3 {
                obj_note.bombhit=false
                bombsprite=spr_notes3
            }
        }
}