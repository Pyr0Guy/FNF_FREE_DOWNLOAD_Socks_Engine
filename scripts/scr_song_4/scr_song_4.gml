function scr_song_4()
{
	switch(event) {
		case "techdiff":
		    //hide characters
		    obj_player.image_alpha=0
		    obj_badguy.image_alpha=0
		    if instance_exists(obj_danbg) {
		        obj_danbg.image_alpha=0
		    }
		    if instance_exists(obj_tutorialtable) {
		        obj_tutorialtable.image_alpha=0
		    }
		    //screen
		    draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,$BDFFAF,1)
		    draw_sprite(spr_techdiff,0,obj_camera.x,obj_camera.y)
		break;
		case 0:
		    obj_player.image_alpha=0
		    obj_badguy.image_alpha=0
		    obj_backgroundp1.image_alpha=0
		    draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
		break;
		case 1:
			//background shenanigans
			with(obj_backgroundp1) {
			    image_alpha=0
			    draw_sprite(spr_danbgdoor,0,0,0)
			    //slick and nermal
			    if obj_song.mmmm>=112 && obj_song.mmmm<400 {
			        obj_song.mmmm+=0.4
			        draw_sprite(spr_snback,current_time/200,round(obj_song.mmmm),222)
			    }
			    draw_sprite(sprite_index,image_index,x,y)
			}
			//backgrounds
			with(obj_danbg) {
			    image_alpha=0
			    switch(phase) {
			        case "walkin":
			            var xx=round(x);
			            var xhuh=abs(startx)+212
			            //draw previous picture
			            if behind!=-1 draw_sprite(sprite_index,behind,212,y);
			            //draw picture
			            draw_sprite_ext(sprite_index,picture,xx,y,1,1,0,c_white,1)
			            //the guys
			            if obj_song.paused=false {
			                //walking math
			                if x<212 {
			                    x+=xhuh/(room_speed*(12*(60/obj_song.bpm)))
			                } else {
			                    phase="idle"
			                }
			                //draw sprites
			                draw_sprite_ext(spr_nnwalk1,current_time/200,xx,y,1,1,0,c_white,1)
			                draw_sprite_ext(spr_dukewalk1,current_time/200,xx+sprite_width,y,1,1,0,c_white,1)
			            } else {
			                draw_sprite_ext(spr_nnidk,0,xx,y,1,1,0,c_white,1)
			                draw_sprite_ext(spr_dukeidk,0,xx+sprite_width,y,1,1,0,c_white,1)
			            }
			        break;
			        case "idle":
			            draw_sprite_ext(sprite_index,picture,x,y,1,1,0,c_white,1)
			            draw_sprite_ext(spr_nnidk,0,x,y,1,1,0,c_white,1)
			            draw_sprite_ext(spr_dukeidk,0,x+sprite_width,y,1,1,0,c_white,1)
			            waittime+=12/1000000*delta_time //why is this accurate to the animation frame rate? idk
			            if waittime>=36 {
			                phase="seeya"
			            }
			        break;
			        case "seeya":
			            draw_sprite_ext(sprite_index,picture,x,y,1,1,0,c_white,1)
			            //the guys
			            if walkout<300 {
			                walkout+=0.5
			            }
			            round(walkout)
			            draw_sprite_ext(spr_nnwalk2,current_time/200,x-walkout,y,1,1,0,c_white,1)
			            draw_sprite_ext(spr_dukewalk2,current_time/200,x+sprite_width+walkout,y,1,1,0,c_white,1)
			        break;
			    }
			}
			//dork spaceship
			if mm>0 {
			    mm-=0.75
			    var sine=160+(sin(current_time/200))*9
			    draw_sprite(spr_rope,0,round(mm),round(sine))
			    draw_sprite(spr_dorkspace,0,round(mm),round(sine))
			}
			//crompasuar
			if mmm>0 {
			    mmm-=0.75
			    var sine=140+(sin(current_time/200))*9
			    draw_sprite(spr_rope,0,650-round(mmm),round(sine))
			    draw_sprite(spr_cromposaurb,0,650-round(mmm),round(sine))
			}
			//props
			with(obj_tutorialtable) {
			    image_alpha=0
			    draw_sprite(sprite_index,image_index,x,y)
			}
			//characters
			with(obj_player) {
			    image_alpha=0
			    scr_shadercheck(shader_colorswap,c_white) 
			        draw_sprite(sprite_index,image_index,x,y)
			    shader_reset();
			}
			with(obj_badguy) {
			    image_alpha=0
			    draw_sprite(sprite_index,image_index,x,y)
			}
			//karoake
			var ext;
			mmmmmm+=(mmmmm-mmmmmm)/20 //fade in math
			//cropping
			switch(mmmmmmm) {
			    case 1: var ext=90 break;
			    case 2: var ext=116 break;
			    case 3: var ext=207 break;
			    case 4: var ext=262 break;
			    case 5: var ext=339 break;
			    default: var ext=0 break;
			}
			//background
			draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,mmmmmm)
			//logo
			draw_sprite_part_ext(spr_danintro,0,0,0,ext,48,obj_camera.x-sprite_get_xoffset(spr_danintro),obj_camera.y,1,1,c_white,mmmmmm*2)
			break;
            }
            if paused=true && !instance_exists(obj_fadeout) {
                hideui=true
                //music
                var pausemusic;
                if audio_is_paused(mus_fumpsbreakfast) {
                    audio_resume_sound(pausesong)
                }
                if !audio_is_playing(mus_fumpsbreakfast) {
                    pausesong=audio_play_sound(mus_fumpsbreakfast,9999,true)
                } else {
                    if pausetime<=180 {
                        pausetime++
                        audio_sound_gain(pausesong,0,0)
                    } else {
                        audio_sound_gain(pausesong,1,9800)
                    }
                }
                //draw screen
                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,$BDFFAF,1)
                draw_sprite_ext(spr_techdiff,0,obj_camera.x,obj_camera.y,obj_camera.image_xscale/400,obj_camera.image_xscale/400,0,c_white,1)
            } else {
                hideui=false
                audio_sound_gain(pausesong,0,0)
                audio_pause_sound(pausesong)
                pausetime=0
            }
}