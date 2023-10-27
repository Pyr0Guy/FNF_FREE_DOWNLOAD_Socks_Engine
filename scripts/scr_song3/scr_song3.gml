//Girl Next Door

function scr_song3(){
	if obj_song.paused=false {
            obj_song.m+=1
            obj_song.mm+=0.25
            if obj_song.m>=344 {
                obj_song.m=0
            }
            if obj_song.mm>=238 {
                obj_song.mm=0
            }
            if obj_song.mmm>2392 {
                obj_song.mmm=1196
            }
            if obj_song.event>=4 {
                obj_song.mmm+=4
            }
        }
        draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,make_color_rgb(192,192,192),1)
        switch(obj_song.event) {
        case 4: //darkness intro
            //background
            with(obj_backgroundp1) {
            var i;
            var ii;
            var iii;
            for (ii=0;ii<13;ii++) {
                draw_sprite(spr_backbustrees,0,9+(239*ii)-obj_song.mm,137)
            }
            for (i=0;i<13;i++) {
                draw_sprite(spr_backbus,0,9+(5*i)-obj_song.m,137)
            }
            for (iii=0;iii<40;iii++) {
                draw_sprite(spr_tunnel,0,449+(92*iii)-obj_song.mmm,90)
            }
                image_index=0
                draw_sprite(sprite_index,image_index,0,0) //base
                draw_sprite_ext(sprite_index,image_index,0,0,1,1,0,c_black,(obj_song.mmm*0.05)-0.2) //dark 1
                draw_sprite_ext(sprite_index,image_index,0,2,1,1,0,c_black,obj_song.mmm*0.05) //full dark
                draw_sprite(sprite_index,2,0,0) //base
                draw_sprite_ext(sprite_index,2,0,0,1,1,0,c_black,(obj_song.mmm*0.05)-0.2) //dark 1
                draw_sprite_ext(sprite_index,2,0,2,1,1,0,c_black,obj_song.mmm*0.05) //full dark
            }
            //effects
            with(obj_player) {
                image_alpha=0
                scr_skinswapdude(c_white)
                    draw_sprite(sprite_index,image_index,x,y)
                shader_reset();
                scr_skinswapdude(c_black)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
                shader_reset();
                scr_highlight(make_color_rgb(32,30,40),c_white)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,obj_song.mmm*0.05)
                shader_reset();
            }
            with(obj_badguy) {
                image_alpha=0
                draw_sprite(sprite_index,image_index,x,y)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
            }
            with(obj_lady) {
                drawgirl=false
                image_alpha=0
                draw_sprite(sprite_index,image_index,x,y)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
                draw_sprite_ext(spr_speakersscreenlight,image_index,x,y,1,1,0,c_white,1-obj_song.mmm*0.05)
                draw_sprite(sprite[type],frame,x,y)
                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,c_black,obj_song.mmm*0.05)
            }
        break;
        case 5: //cyan turn
            //background
            obj_song.mmmm+=0.025
            if obj_badguy.sprite_index!=obj_badguy.idle[0] && obj_badguy.image_index<3 {
                obj_song.mmmm=0
            }
            with(obj_backgroundp1) {
            var i;
            var ii;
            var iii;
            var funcolor=make_color_rgb(24,252,240);
            for (ii=0;ii<13;ii++) {
                draw_sprite(spr_backbustrees,0,9+(239*ii)-obj_song.mm,137)
            }
            for (i=0;i<13;i++) {
                draw_sprite(spr_backbus,0,9+(345*i)-obj_song.m,137)
            }
            for (iii=0;iii<40;iii++) {
                draw_sprite(spr_tunnel,0,449+(92*iii)-obj_song.mmm,90)
            }
                image_index=0
                draw_sprite(sprite_index,image_index,0,0) //base
                draw_sprite_ext(sprite_index,image_index,0,0,1,1,0,c_black,(obj_song.mmm*0.05)-0.2) //dark 1
                draw_sprite_ext(sprite_index,image_index,0,2,1,1,0,c_black,obj_song.mmm*0.05) //full dark
                draw_sprite(sprite_index,2,0,0) //base
                draw_sprite_ext(sprite_index,2,0,0,1,1,0,c_black,0.7) //dark 1
                draw_sprite_ext(sprite_index,2,0,2,1,1,0,c_black,obj_song.mmm*0.05) //full dark
            }
            //effects
            with(obj_player) {
                image_alpha=0
                scr_skinswapdude(c_white)
                    draw_sprite(sprite_index,image_index,x,y)
                shader_reset();
                scr_skinswapdude(c_black)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,obj_song.mmm*0.05)
                shader_reset();
                scr_skinswapdude(funcolor)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.20)
                shader_reset();
                scr_skinswapdude(c_black)
                    draw_sprite_ext(sprite_index,image_index,x+4,y,1,1,0,c_white,0.40)
                shader_reset();
                scr_skinswapdude(c_black)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,obj_song.mmmm)
                shader_reset();
                scr_highlight(make_color_rgb(32,30,40),c_white)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,obj_song.mmm*0.05)
                shader_reset();
            }
            with(obj_badguy) {
                image_alpha=0
                draw_sprite(sprite_index,image_index,x,y)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,funcolor,0.24)
                draw_sprite_ext(sprite_index,image_index,x-4,y,1,1,0,c_black,0.4)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmmm)
            }
            with(obj_lady) {
                drawgirl=false
                image_alpha=0
                draw_sprite(sprite_index,image_index,x,y)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
                draw_sprite_ext(spr_speakersscreenlightw2,0,x,y,1,1,0,c_white,1-obj_song.mmmm)
                //draw_sprite_ext(spr_speakersscreenlightw2,0,x,y,1,1,0,c_black,obj_song.mmmm) 
                draw_sprite(sprite[type],frame,x,y)
                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,c_black,obj_song.mmm*0.05)
                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,funcolor,0.20)
                draw_sprite_ext(sprite[type],frame,x,y-4,1,1,0,c_black,0.40)
                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,c_black,obj_song.mmmm)
            }
        break;
        case 6: //dude turn
            //background
            obj_song.mmmm+=0.025
            if obj_player.sprite_index!=obj_badguy.idle[0] && obj_player.image_index<3 {
                obj_song.mmmm=0
            }
            with(obj_backgroundp1) {
                var i;
                var ii;
                var iii;
                var funcolor=make_color_rgb(255,241,164)
                for (ii=0;ii<13;ii++) {
                    draw_sprite(spr_backbustrees,0,9+(239*ii)-obj_song.mm,137)
                }
                for (i=0;i<13;i++) {
                    draw_sprite(spr_backbus,0,9+(345*i)-obj_song.m,137)
                }
                for (iii=0;iii<40;iii++) {
                    draw_sprite(spr_tunnel,0,449+(92*iii)-obj_song.mmm,90)
                }
                image_index=0
                draw_sprite(sprite_index,image_index,0,0) //base
                draw_sprite_ext(sprite_index,image_index,0,0,1,1,0,c_black,(obj_song.mmm*0.05)-0.2) //dark 1
                draw_sprite_ext(sprite_index,image_index,0,2,1,1,0,c_black,obj_song.mmm*0.05) //full dark
                draw_sprite(sprite_index,2,0,0) //base
                draw_sprite_ext(sprite_index,2,0,0,1,1,0,c_black,0.7) //dark 1
                draw_sprite_ext(sprite_index,2,0,2,1,1,0,c_black,obj_song.mmm*0.05) //full dark
            }
            //effects
            with(obj_player) {
                image_alpha=0
                scr_skinswapdude(c_white)
                    draw_sprite(sprite_index,image_index,x,y)
                shader_reset();
                scr_skinswapdude(c_black)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,obj_song.mmm*0.05)
                shader_reset();
                scr_skinswapdude(funcolor)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.24)
                shader_reset();
                scr_skinswapdude(c_black)
                    draw_sprite_ext(sprite_index,image_index,x+4,y,1,1,0,c_white,0.4)
                shader_reset();
                scr_skinswapdude(c_black)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,obj_song.mmmm)
                shader_reset();
                scr_highlight(make_color_rgb(32,30,40),c_white)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,obj_song.mmm*0.05)
                shader_reset();
            }
            with(obj_badguy) {
                image_alpha=0
                draw_sprite(sprite_index,image_index,x,y)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,funcolor,0.2)
                draw_sprite_ext(sprite_index,image_index,x-4,y,1,1,0,c_black,0.4)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmmm)
            }
            with(obj_lady) {
                drawgirl=false
                image_alpha=0
                draw_sprite(sprite_index,image_index,x,y)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
                draw_sprite_ext(spr_speakersscreenlightw2,1,x,y,1,1,0,c_white,1-obj_song.mmmm) 
                draw_sprite(sprite[type],frame,x,y)
                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,c_black,obj_song.mmm*0.05)
                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,funcolor,0.20)
                draw_sprite_ext(sprite[type],frame,x,y-4,1,1,0,c_black,0.40)
                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,c_black,obj_song.mmmm)
            }
        break;
        case 7: //dude turn
            //background
            obj_song.mmmm+=0.025
            with(obj_backgroundp1) {
                var i;
                var ii;
                var iii;
                var funcolor=make_color_rgb(255,241,164)
                for (ii=0;ii<13;ii++) {
                    draw_sprite(spr_backbustrees,0,9+(239*ii)-obj_song.mm,139)
                }
                for (i=0;i<13;i++) {
                    draw_sprite(spr_backbus,0,9+(345*i)-obj_song.m,139)
                }
                for (iii=0;iii<40;iii++) {
                    draw_sprite(spr_tunnel,0,449+(92*iii)-obj_song.mmm,90)
                }
                image_index=0
                draw_sprite(sprite_index,image_index,0,0) //base
                draw_sprite_ext(sprite_index,image_index,0,0,1,1,0,c_black,(obj_song.mmm*0.05)-0.2) //dark 1
                draw_sprite_ext(sprite_index,image_index,0,2,1,1,0,c_black,obj_song.mmm*0.05) //full dark
                draw_sprite(sprite_index,2,0,0) //base
                draw_sprite_ext(sprite_index,2,0,0,1,1,0,c_black,0.7) //dark 1
                draw_sprite_ext(sprite_index,2,0,2,1,1,0,c_black,obj_song.mmm*0.05) //full dark
            }
            //effects
            with(obj_player) {
                image_alpha=0
                scr_skinswapdude(c_white)
                    draw_sprite(sprite_index,image_index,x,y)
                shader_reset();
                scr_skinswapdude(c_black)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,obj_song.mmm*0.05)
                shader_reset();
                scr_skinswapdude(funcolor)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.24)
                shader_reset();
                scr_skinswapdude(c_black)
                    draw_sprite_ext(sprite_index,image_index,x+4,y,1,1,0,c_white,0.4)
                shader_reset();
                scr_skinswapdude(c_black)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,obj_song.mmmm)
                shader_reset();
                scr_highlight(make_color_rgb(32,30,40),c_white)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,obj_song.mmm*0.05)
                shader_reset();
            }
            with(obj_badguy) {
                image_alpha=0
                draw_sprite(sprite_index,image_index,x,y)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,funcolor,0.1)
                draw_sprite_ext(sprite_index,image_index,x-4,y,1,1,0,c_black,0.2)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmmm)
            }
            with(obj_lady) {
                drawgirl=false
                image_alpha=0
                draw_sprite(sprite_index,image_index,x,y)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
                draw_sprite_ext(spr_speakersscreenlightw2,0,x,y,1,1,0,c_white,1-obj_song.mmmm)
                draw_sprite(sprite[type],frame,x,y)
                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,c_black,obj_song.mmm*0.05)
                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,funcolor,0.10)
                draw_sprite_ext(sprite[type],frame,x,y-4,1,1,0,c_black,0.20)
                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,c_black,obj_song.mmmm)
            }
        break;
        default:
            //background
            with(obj_backgroundp1) {
                var i;
                var ii;
                for (ii=0;ii<13;ii++) {
                    draw_sprite(spr_backbustrees,0,9+(239*ii)-obj_song.mm,139)
                }
                for (i=0;i<13;i++) {
                    draw_sprite(spr_backbus,0,9+(345*i)-obj_song.m,139)
                }
                image_alpha=1
                draw_self();
                draw_sprite(spr_busback,2,0,0)
            }
            //characters
            with(obj_lady) {
                image_alpha=0
                draw_sprite(sprite_index,image_index,x,y)
                draw_sprite(spr_busow,0,224,296)
            }
            obj_player.image_alpha=1
            obj_badguy.image_alpha=1
        break;
        }
        //DANCE TIME!!
        if obj_song.event=2 {
            var poop = sin(current_time/200)*2
            draw_sprite_ext(spr_dancebreak,poop,obj_camera.x,obj_camera.y-100,1,1,0,c_black,1)
            draw_sprite(spr_dancebreak,0,obj_camera.x,(obj_camera.y-100)+poop)
        }
        //CYAN
        if obj_song.event=8 or obj_song.event=13 or obj_song.event>=14{
            //tint
            var cyan=make_colour_rgb(55,223,232)
            //background
            with(obj_backgroundp1) {
                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,cyan,0.25)
                var i;
                var ii;
                for (ii=0;ii<13;ii++) {
                    draw_sprite(spr_backbustrees,0,9+(239*ii)-obj_song.mm,139)
                    draw_sprite_ext(spr_backbustrees,0,9+(239*ii)-obj_song.mm,139,1,1,0,cyan,0.25)
                }
                for (i=0;i<13;i++) {
                    draw_sprite(spr_backbus,0,9+(345*i)-obj_song.m,139)
                    draw_sprite_ext(spr_backbus,0,9+(345*i)-obj_song.m,139,1,1,0,cyan,0.25)
                }
                image_alpha=0
                draw_sprite(spr_busback,0,0,0)
                draw_sprite_ext(spr_busback,0,0,0,1,1,0,cyan,0.25)
                draw_sprite(spr_busback,2,0,0)
                draw_sprite_ext(spr_busback,2,0,0,1,1,0,cyan,0.25)
            }
            with(obj_lady) {
                drawgirl=false
                image_alpha=0
                draw_sprite(sprite_index,image_index,x,y)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,cyan,0.25)
                draw_sprite(spr_speakersscreenlight,image_index,x,y)
                draw_sprite_ext(sprite[type],frame,x,y,image_xscale,image_yscale,0,image_blend,1)
                draw_sprite_ext(sprite[type],frame,x,y,image_xscale,image_yscale,0,cyan,0.25)
                draw_sprite(spr_busow,0,224,296)
                draw_sprite_ext(spr_busow,0,224,296,1,1,0,cyan,0.25)
            }
            with(obj_player) {
                image_alpha=0
                scr_skinswapdude(c_white)
                    draw_sprite(sprite_index,image_index,x,y)
                shader_reset();
                scr_skinswapdude(cyan)
                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.25)
                shader_reset();
            }
            with(obj_badguy) {
                image_alpha=0
                draw_sprite(sprite_index,image_index,x,y,)
                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,cyan,0.25)
            }
            //screen bounce
			if instance_exists(obj_midi_clock) {
	            if obj_midi_clock.div_4_trigger=true {
	                obj_camera.image_xscale=obj_camera.image_xscale-10
	                obj_song.mmmmmm++
	                if obj_song.mmmmmm%2=0 {
	                    obj_camera.image_angle=1
	                } else {
	                    obj_camera.image_angle=-1
	                }
	            }
			}
        }
		
}