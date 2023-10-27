//Twinkle

function scr_song5(){
	//tv screen surface handling
        var paralax=(((obj_camera.x/image_xscale)/4)-50) //tv screen paralaxing
        //drawing sprites
        draw_sprite(spr_buddyback,2,(((obj_camera.x/image_xscale)/3)-120),0)
        draw_sprite_ext(spr_buddyback,2,(((obj_camera.x/image_xscale)/3)-120),0,1,1,0,c_black,mmmm)
        mmmmm+=0.0025
        if mmmmm=1 {
            mmmmm=0
        }
        if instance_exists(obj_midi_clock) {
            if obj_midi_clock.div_4_trigger=true {
                mmmmmm++
                //screen bounce
                if event=11 && mmmmmm%2=1 { //intense bounce
                    obj_camera.image_xscale=obj_camera.image_xscale-20
                }
                if (event=12 or event=13 or event=27 or event=28) { //whatever bounce
                    if mmmmmm%2=1 {
                        obj_camera.image_xscale=obj_camera.image_xscale-5
                    } else {
                        obj_camera.image_xscale=obj_camera.image_xscale-10
                    }
                }
            }
        }
        //drawing screens
        var t;
        for(t=0;t<=15;t++) {
            switch(screen[t,0]) {
                default: //fump
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(255,174,201),1)
                        /*
                        m-=0.005
                        if m<=-48 {
                            m=0
                        }
                        */
                        var l;
                        var ll;
                        for(l=0;l<5;l++) {
                            for(ll=0;ll<5;ll++) {
                                draw_sprite(spr_fump,0,(24*l)-(mmmmm*48),(24*ll)-(mmmmm*48))
                            }
                        }
                    surface_reset_target();
                break;
                case "dark":
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(3,7,5),1)
                    surface_reset_target();
                break;
                case "lightup":
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(3,7,5),1)
                        m+=0.08
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,c_white,m)
                        //switch to full on screen
                        if  m>=1 screen[t,0]="light";
                    surface_reset_target();
                break;
                case "light":
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,c_white,1)
                    surface_reset_target();
                break;
                case "gogo":
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        if mmmmmm%2=0 {
                            var colorback=make_color_rgb(233,164,242)
                            var colortext=make_color_rgb(249,249,157)
                        } else {
                            var colorback=make_color_rgb(249,249,157)
                            var colortext=make_color_rgb(233,164,242)
                        }
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,colorback,1)
                        draw_set_halign(fa_center)
                        draw_set_valign(fa_middle)
                        //outline
                        var txx
                        var tyy
                        for(txx=-1;txx<=1;txx++) {
                            for(tyy=-1;tyy<=1;tyy++) {
                                draw_text_colour(22+txx,22+tyy,string_hash_to_newline("GO!"),c_black,c_black,c_black,c_black,1)
                                draw_text_colour(23+txx,23+tyy,string_hash_to_newline("GO!"),c_black,c_black,c_black,c_black,1)
                            }
                        }
                        //text
                        draw_text_colour(22,22,string_hash_to_newline("GO!"),colortext,colortext,colortext,colortext,1)
                        draw_set_halign(fa_left)
                        draw_set_valign(fa_top)
                    surface_reset_target();
                break;
                case 0: //sun
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(122,200,222),1)
                        var ear;
                        for(ear=0;ear<=6;ear++) {
                            draw_sprite(spr_w3sun,0,(ear*24)+(mmmmm*24),(ear*24)+(mmmmm*24))
                        }
                    surface_reset_target();
                break;
                case 1: //earth
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_blackpixel,0,0,0,45,45,0,c_white,1)
                        //stars
                        
                        //earth
                        draw_sprite_ext(spr_earth,current_time/200,22,22,1.5,1.5,0,c_white,1)
                    surface_reset_target();
                break;
                case 2: //4:04
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_blackpixel,0,0,0,45,45,0,c_white,1)
                        if round(songpos)%2=0 {
                            draw_set_color(c_red)
                        } else {
                            draw_set_color(c_black)
                        }
                        draw_set_valign(fa_middle)
                        draw_set_halign(fa_center)
                        draw_text(25,25,string_hash_to_newline("4:04"))
                        draw_set_valign(fa_top)
                        draw_set_halign(fa_left)
                    surface_reset_target();
                break;
                case 3: //
                   screen[t,1]=surface_create(45,45)
                   surface_set_target(screen[t,1])
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(233,118,158),1)
                        draw_sprite_ext(spr_whitepixel,0,13,22+(sin((current_time/200)+4)),4,4,0,make_color_rgb(249,249,157),1)
                        draw_sprite_ext(spr_whitepixel,0,17,22+(sin((current_time/200))),4,4,0,make_color_rgb(157,249,169),1)
                        draw_sprite_ext(spr_whitepixel,0,22,22+(sin((current_time/200)-4)),4,4,0,make_color_rgb(233,164,242),1)
                        draw_sprite_ext(spr_whitepixel,0,27,22+(sin((current_time/200)-8)),4,4,0,make_color_rgb(159,207,247),1)
                    surface_reset_target(); 
                break;
                case 4: //zzz
                    var dingle=surface_create(45,45)
                    surface_set_target(dingle)
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(3,7,5),1)
                        /*
                        mmmmmm+=0.025
                        if mmmmmm>=14 {
                            mmmmmm=0
                        }
                        */
                        draw_set_valign(fa_middle)
                        draw_set_color(c_white)
                        draw_text((mmmmm*14)-28,22,string_hash_to_newline("zzzzzzzzzzzzzzzzzz"))
                        draw_set_valign(fa_top)
                    surface_reset_target();
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_surface_ext(dingle,0,5,1,1,15,c_white,1)
                    surface_reset_target();
                    surface_free(dingle)
                break;
                case 5: //funne's grimace
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(59,59,59),1)
                        draw_sprite(spr_grimace,0,22,22)
                    surface_reset_target(); 
                break;
                case 6: //cool screen
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(3,7,5),1)
                        draw_sprite_ext(spr_w3coolscreen,0,25,22,1+((sin(current_time/200))/4),1+((sin(current_time/400))/4),0,c_white,1)
                    surface_reset_target();
                break;
                case 7: //rainbow eggs
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        var xx;
                        var yy;
                        for(xx=0;xx<=25;xx++) {
                            for(yy=0;yy<=25;yy++) {
                                draw_sprite_ext(spr_whitepixel,0,xx*2,yy*2,2,2,0,make_color_hsv(((current_time/6400)+xx+yy)*255,127,255),1)
                            } //make_color_hsv(sin(((current_time/800))+(xx/2))*255
                        }
                        //egg
                        var e;
                        /*
                        mmmmmmm+=0.025
                        if mmmmmmm>=78 {
                            mmmmmmm=0
                        }
                        */
                        for(e=0;e<=12;e++) {
                             if e=4 {
                                beginstocrack=1
                             } else {
                                beginstocrack=0
                             }
                            draw_sprite_ext(spr_w3egg,beginstocrack,(e*13)-(mmmmm*78),22,1,1,0,make_color_hsv((e/6)*255,127,255),1)
                        }
                    surface_reset_target();
                break;
                case 8: //crazy johnny
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(153,217,234),1)
                        draw_sprite(spr_crazyjohnny,0,22,22+(round(sin(current_time/200))))
                    surface_reset_target();
                break;
                case 9: //cool line graph
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,c_white,1)
                        //grid
                        /*
                        mmmmm+=0.025
                        if mmmmm>=8 {mmmmm=0}
                        */
                        var g;
                        for(g=0;g<=6;g++) {
                            draw_sprite_ext(spr_whitepixel,0,0,g*8,45,1,0,c_black,0.05)
                            draw_sprite_ext(spr_whitepixel,0,(g*8)-(mmmmm*8),0,1,45,0,c_black,0.25)
                        }
                        //line
                        var l;
                        for(l=0;l<=45;l++) {
                            draw_sprite_ext(spr_whitepixel,0,l,22+(sin((current_time/210)+(l/2))*4),2,2,0,c_gray,1)
                        }
                    surface_reset_target();
                break;
                case 10: //moon
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(29,34,54),1)
                        var ear;
                        for(ear=0;ear<=6;ear++) {
                            draw_sprite(spr_w3moon,0,(ear*24)+(mmmmm*24),(ear*24)+(mmmmm*24))
                        }
                    surface_reset_target();
                break;
                case 11: //varmint
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(255,217,174),1)
                        draw_sprite(spr_varmint,0,22,22+(sin(current_time/200)))
                    surface_reset_target();
                break;
                case 12: //scary face
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_hsv(103+(mmmmm*255),73,155),1)
                        draw_sprite(spr_wegiel,0,22,22)
                    surface_reset_target();
                break;
                case 13: //yownloader
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                    draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,c_black,1)
                    //draw_rectangle
                    var jeff=make_color_rgb(27,114,24)
                    draw_set_color(jeff)
                    draw_rectangle(8,29,36,33,true)
                    //draw bar
                    draw_sprite_ext(spr_whitepixel,0,9,30,(songpos/audio_sound_length(songplaying))*20,4,0,jeff,1)
                    draw_sprite_ext(spr_logdisc,0,22,19,sin(current_time/400),1,0,jeff,1)
                    draw_set_color(c_white)
                    surface_reset_target();
                break;
                case 14: //
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                    draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,c_blue,1)
                    draw_sprite_ext(spr_w3,0,22,22,1,1,0,c_black,1)
                    surface_reset_target();
                break;
                case "ray":
                    screen[t,1]=surface_create(45,45)
                    surface_set_target(screen[t,1])
                        draw_clear_alpha(c_black,0) //reset alpha
                        draw_sprite(spr_rayplaceholder,0,0,0)
                    surface_reset_target();
                break;
            }
        }
        //actually draw them
        draw_surface_part(screen[0,1],0,0,42,40,41+paralax,132) //far left green
        draw_surface_part(screen[1,1],5,5,37,33,103+paralax,121) //top middle purple
        draw_surface_part(screen[2,1],11,14,27,22,160+paralax,150) //blue
        draw_surface_part(screen[3,1],7,10,30,26,147+paralax,191) //bottom purple
        draw_surface_part(screen[4,1],6,9,33,26,203+paralax,166) //the only green screen on the left side
        draw_surface_part(screen[5,1],11,11,23,21,311+paralax,171) //left far purple
        draw_surface_part(screen[6,1],3,6,37,28,360+paralax,138) //right top blue
        draw_surface_part(screen[7,1],4,8,36,27,372+paralax,180) //right top bottom green, y'know?
        draw_surface_part(screen[8,1],4,5,37,33,421+paralax,121) //right purple top
        draw_surface_part(screen[9,1],7,9,29,25,430+paralax,175) //right purple bottom
        draw_surface_part(screen[10,1],6,7,41,38,478+paralax,133) //far far green
        draw_surface_part(screen[11,1],12,11,22,23,483+paralax,191) //bottom right blue
        draw_sprite(spr_buddyback,1,(((obj_camera.x/image_xscale)/4)-50),0)
        draw_surface_part(screen[12,1],7,8,30,28,25,271) //right front
        draw_surface_part(screen[13,1],3,10,38,26,117,207) //middle front
        draw_surface_part(screen[14,1],15,17,28,25,466,267) //middle left
        //free surfaces
        var v;
        for(v=0;v<=15;v++) {
            surface_free(screen[v,1])
        }
        //drawing MORE sprites :3
        mmmm+=(mmm-mmmm)/10
        draw_sprite(spr_buddyback,0,0,0)
        draw_sprite_ext(spr_buddyback,1,(((obj_camera.x/image_xscale)/4)-50),0,1,1,0,c_black,mmmm)
        draw_sprite_ext(spr_buddyback,0,0,0,1,1,0,c_black,mmmm)
        with(obj_lady) {
            drawgirl=false
            image_alpha=0
            draw_sprite(spr_speakeroff,image_index,x,y)
            draw_sprite_ext(spr_speakeroff,image_index,x,y,1,1,0,c_black,obj_song.mmmm)
            draw_sprite_ext(spr_speakeroff,image_index,x,y+5,1,1,0,c_black,obj_song.mmmm)
            //draw cd boy
            draw_sprite_ext(sprite[type],frame,x,y,image_xscale,image_yscale,0,c_white,1)
            draw_sprite_ext(sprite[type],frame,x,y,image_xscale,image_yscale,0,c_black,obj_song.mmmm)
            draw_sprite_ext(sprite[type],frame,x,y+5,image_xscale,image_yscale,0,c_black,obj_song.mmmm)
        }
        with(obj_player) {
            image_alpha=0
            scr_skinswapdude(c_white)
                draw_sprite(sprite_index,image_index,x,y)
            shader_reset();
            scr_skinswapdude(c_black)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,obj_song.mmmm)
                draw_sprite_ext(sprite_index,image_index,x,y+5,1,1,0,c_white,obj_song.mmmm)
            shader_reset();
            scr_highlight(make_color_rgb(32,30,40),c_white)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,obj_song.mmmm)
            shader_reset();
        }
        with(obj_badguy) {
            image_alpha=0
            draw_sprite(sprite_index,image_index,x,y)
            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmmm)
            draw_sprite_ext(sprite_index,image_index,x,y+5,1,1,0,c_black,obj_song.mmmm)
        }
        //anime
        switch(event) {
            case 30: //fade in
                mm+=0.02
                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_white,mm)
                draw_sprite_ext(spr_blackpixel,0,0,(obj_camera.y)+200,800,-50,0,c_black,mm)
                draw_sprite_ext(spr_blackpixel,0,0,(obj_camera.y)-200,800,50,0,c_black,mm)
            break;
            case 31: //buddy anime
                mm+=0.02
                if paused=false {
                    mmmmmmm+=0.005
                }
                mmmmmmm=clamp(mmmmmmm,0,1)
                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_white,mm)
                draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,(obj_camera.x+62)+(mmmmmmm*4),(obj_camera.y)+200,1,1,0,c_white,mmmmmmm*2)
                var l;
                for(l=2;l<=7;l++) {
                    if obj_badguy.sprite_index=obj_badguy.anim[l] {
                        draw_sprite_ext(spr_earth,current_time/200,(obj_camera.x-75)+(mmmmmmm*4),obj_camera.y-82,6,6,0,c_white,mmmmmmm*2)
                    }
                }
                draw_sprite_ext(spr_blackpixel,0,0,(obj_camera.y)+200,800,-50,0,c_black,mm)
                draw_sprite_ext(spr_blackpixel,0,0,(obj_camera.y)-200,800,50,0,c_black,mm)
            break;
            case 32: //dude anime
                mm+=0.02
                if paused=false {
                    mmmmmmm+=0.005
                    mmm+=0.005
                }
                mmmmmmm=clamp(mmmmmmm,0,1)
                mmm=clamp(mmm,0,1)
                mm=clamp(mm,0,1)
                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_white,mm)
                draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,(obj_camera.x+62)+(mmmmmmm*4),(obj_camera.y)+200,1,1,0,c_white,(mmmmmmm*4)-(mmm*16))
                draw_sprite_ext(spr_animelady,current_time/200,(obj_camera.x+62)-(mmm*4),(obj_camera.y),1,1,0,c_white,mmm*4)
                scr_skinswapdude(c_white)
                    draw_sprite_ext(obj_player.sprite_index,obj_player.image_index,(obj_camera.x-100)-(mmm*4),obj_camera.y+160,1,1,0,c_white,mmm*4)
                shader_reset();
                draw_sprite_ext(spr_blackpixel,0,0,(obj_camera.y)+200,800,-50,0,c_black,mm)
                draw_sprite_ext(spr_blackpixel,0,0,(obj_camera.y)-200,800,50,0,c_black,mm)
            break;
            case 33: //now go away
                mm-=0.02
                mmm=0
                if paused=false {
                    mmmmmmm+=0.005
                }
                mmmmmmm=clamp(mmmmmmm,0,1)
                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_white,mm)
                draw_sprite_ext(spr_animelady,current_time/200,(obj_camera.x+62)-(mmmmmmm*4),(obj_camera.y),1,1,0,c_white,mm)
                scr_skinswapdude(c_white)
                    draw_sprite_ext(spr_dude3idle,obj_player.image_index,(obj_camera.x-100)-(mmmmmmm*4),obj_camera.y+160,1,1,0,c_white,mm)
                shader_reset();
                draw_sprite_ext(spr_blackpixel,0,0,(obj_camera.y)+200,800,-50,0,c_black,mm)
                draw_sprite_ext(spr_blackpixel,0,0,(obj_camera.y)-200,800,50,0,c_black,mm)
            break;
        }
        //m   mm    mmmmmmmmmmmmmmmmmmmmm
        //THE COOL PART STARTS AT 30 AND 31
        
        
        
        /*
        //health bar
        hplayer=make_color_rgb(236,94,94)
        hbaddie=make_color_rgb(102,227,146)
        //icons
        baddieicon=spr_buddyiconw3
        playericon=spr_dudeiconw3
        //skill tilt
        if obj_song.skill>35 && paused=false {
            obj_song.skill+=0.1
        }
        if obj_song.skill<65 && paused=false {
            obj_song.skill-=0.1
        }
        //gameover
        if skill<=0 && instance_exists(obj_badguy) {
            instance_create(obj_badguy.x,obj_badguy.y,obj_gameover)
            instance_destroy(obj_badguy);
            instance_destroy(obj_uinotes)
            instance_destroy(obj_note)
            audio_sound_pitch(songplaying,-1)
            obj_camera.place=1
            paused="lol"
            songpos=0
        }
        */
}