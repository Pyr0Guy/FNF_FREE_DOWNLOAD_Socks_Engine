//Break it down, triangle man
function scr_song_3(){
	 //camera
	if instance_exists(obj_midi_clock) {
	    if obj_midi_clock.div_4_trigger = true {
	        mmmmmm++
	    }
	}
	//drawing sprites
	//sky
	var stary;
	for(stary=0;stary<sprite_get_height(spr_bidbg);stary++) {
	    var starsin=sin((current_time/800)+(stary/25))*15;
	    draw_sprite_part_ext(spr_bidbg,1,0,stary,sprite_get_width(spr_nightskyfromgoogle),1,starsin-30,obj_backgroundp1.y+stary,1,1,c_white,1)
	    draw_sprite_part_ext(spr_bidbg,1,0,stary,sprite_get_width(spr_nightskyfromgoogle),1,(-1*starsin)-30,obj_backgroundp1.y+stary,1,1,c_white,0.5)
	}
	//buildings
	draw_sprite_ext(spr_bidbg,0,obj_backgroundp1.x,obj_backgroundp1.y,1,1,0,c_white,obj_backgroundp1.image_alpha)
	draw_sprite_ext(spr_bidbg2,0,obj_backgroundp1.x,obj_backgroundp1.y,1,1,0,c_white,obj_backgroundp1.image_alpha)
	switch(event) {
	    case 0: //intro
	        draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_white,1)
	        if m>0 {
	            draw_sprite_ext(spr_introcromp,m-1,obj_camera.x,obj_camera.y,4,4,0,c_white,1)
	        }
	        obj_badguy.image_alpha=0
	        obj_player.image_alpha=0
	        obj_lady.image_alpha=0
	    break;
	    case 1: //tunnel
	        if paused=false {
	            m+=0.005
	            mm+=(mmm-mm)/500
	            mmmm+=(mmmmm-mmmm)/500
	        }
	        draw_sprite(spr_crompt,0,obj_camera.x,obj_camera.y)
	        draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,obj_camera.x+mm,(obj_camera.y+mmmm)+80,2,2,0,c_white,1)
	        draw_sprite(spr_crompt,1,obj_camera.x,obj_camera.y)
	        draw_sprite_ext(spr_bintro,0,obj_camera.x,obj_camera.y,2,2,0,c_white,m)
	    break;
	    case 2:
	        if paused=false {
	            mm+=(mmm-mm)/50
	        }
	        with(obj_player) {
	            scr_shadercheck(shader_colorswap,c_white);
	                draw_sprite(sprite_index,image_index,x,y)
	            shader_reset();
	        }
	        with(obj_badguy) {
	            draw_sprite_ext(sprite_index,image_index,x-obj_song.mm,y,image_xscale,image_yscale,0,c_white,1)
	        }
	    break;
	    case 3: //sad
	        if paused=false {
	            mm+=(mmm-mm)/100
	            mmmm+=(mmmmm-mmmm)/120
	        }
	        draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
	        draw_set_alpha(mmmm);
	            draw_rectangle_colour(obj_camera.x-200,obj_camera.y-200+((sin(current_time/800))*64),obj_camera.x+200,obj_camera.y+200,c_black,c_black,c_green,c_green,false)
	        draw_set_alpha(1);
	        if !scr_shadercheck(sh_silhouette,c_white) {
	            draw_set_blend_mode(bm_add)
	        }
	        with(obj_player) {
	            draw_sprite_ext(sprite_index,image_index,x+25,obj_camera.y+200,1.5,1.5,0,c_white,obj_song.mm)
	        }
	        with(obj_badguy) {
	            draw_sprite_ext(sprite_index,image_index,x-25,obj_camera.y+200,6,6,0,c_white,obj_song.mm)
	        }
	        draw_set_blend_mode(bm_normal)
	        shader_reset();
	    break;
	    case 4:
	        with(obj_player) {
	            scr_shadercheck(shader_colorswap,c_white)
	                draw_sprite(sprite_index,image_index,x,y)
	            shader_reset();
	        }
	        with(obj_badguy) {
	            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,1)
	        }
	        if mm=true && paused=false {
	            mmm+=0.35
	            var animspeed=current_time/200
	        } else {
	            var animspeed=0
	        }
	        draw_sprite(mmmm,animspeed,obj_player.x+330-mmm,obj_player.y)
	    break;
	    case 5: //do-do-doodoo
	        //background
	        var stary;
	        for(stary=0;stary<sprite_get_height(spr_nightskyfromgoogle)/4;stary++) {
	            var starsin=sin((current_time/800)+((stary+4)/25))*15;
	            draw_sprite_part_ext(spr_bidbg,1,0,stary*4,sprite_get_width(spr_nightskyfromgoogle),4,obj_backgroundp1.x+starsin,obj_backgroundp1.y+stary*4,1,1,c_white,1)
	            draw_sprite_part_ext(spr_bidbg,1,0,stary*4,sprite_get_width(spr_nightskyfromgoogle),4,obj_backgroundp1.x+(-1*starsin),obj_backgroundp1.y+stary*4,1,1,c_white,0.5)
	        }
	        mmm+=0.0025
	        if mmm>=1 {
	            mmm=0
	        }
	        var soup
	        for(soup=0;soup<7;soup++) {
	            draw_sprite(spr_skylinecromp,0,(soup*200)+(mmm*-200),obj_camera.y+10)
	        }
	        if paused=false {
	            var dingus=spr_bintrohead
	        } else {
	            var dingus=spr_bintroheadp
	        }
	        //heads
	        draw_sprite(dingus,0,obj_camera.x-110,obj_camera.y-70+sin(current_time/200))
	        draw_sprite(dingus,1,obj_camera.x-90,obj_camera.y-20+cos(current_time/200))
	        draw_sprite(dingus,2,obj_camera.x+110,obj_camera.y-70+sin(current_time/200))
	        scr_shadercheck(shader_colorswap,c_white);
	            draw_sprite(dingus,3,obj_camera.x+90,obj_camera.y-20+cos(current_time/200))
	        shader_reset();
	        //logo
	        draw_sprite(spr_bintro,0,obj_camera.x,obj_camera.y-40+sin(current_time/400))
	    break;
	}

}