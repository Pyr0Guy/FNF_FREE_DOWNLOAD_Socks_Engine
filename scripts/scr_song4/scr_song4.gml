//Gamejack

function scr_song4(){
	if instance_exists(obj_note) {
                    obj_note.bombhit=false
                }
                var greencolor=make_color_rgb(27,114,24)
                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,make_color_rgb(192,192,192),1)
                if event<8 { //intro
                    m+=0.25
                    if m=25 { m=0 }
                    draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,make_color_rgb(6,27,5),1)
                    for(i=0;i<50;i++) {
                        draw_sprite_ext(spr_whitepixel,0,0,m+(i*25),room_width,3,0,make_color_rgb(12,51,11),1)
                    }
                    with(obj_backgroundp1) {
                        draw_sprite(sprite_index,3,x,y)
                    }
                }
                switch(event) {
                    case 0:
                        obj_lady.image_alpha=0
                        obj_lady.drawgirl=false
                        obj_player.image_alpha=0
                        obj_badguy.image_alpha=0
                        draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
                    break;
                    case 1:
                        with(obj_badguy) {
                            draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
                        }
                    break;
                    case 2:
                        with(obj_badguy) {
                            draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
                        }
                    break;
                    case 3:
                        with(obj_badguy) {
                            draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
                        }
                        with(obj_lady) {
                            draw_sprite_ext(sprite_index,image_index,x-45,y,1,1,0,greencolor,1)
                        }
                    break;
                    case 4:
                        with(obj_badguy) {
                            draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
                        }
                        with(obj_lady) {
                            draw_sprite_ext(sprite_index,image_index,x-45,y,1,1,0,greencolor,1)
                        }
                    break;
                    case 5:
                        with(obj_badguy) {
                            draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
                        }
                        with(obj_lady) {
                            draw_sprite_ext(sprite_index,image_index,x-45,y,1,1,0,greencolor,1)
                        }
                        with(obj_player) {
                            draw_sprite_ext(sprite_index,image_index,x,y-95,1,1,0,greencolor,1)
                            draw_sprite_ext(spr_msladyandwatch,image_index,x,y,1,1,0,greencolor,1)
                        }
                    break;
                    case 6:
                        with(obj_badguy) {
                            draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
                        }
                        with(obj_lady) {
                            draw_sprite_ext(sprite_index,image_index,x-45,y,1,1,0,greencolor,1)
                        }
                        with(obj_player) {
                            draw_sprite_ext(sprite_index,image_index,x,y-95,1,1,0,greencolor,1)
                            draw_sprite_ext(spr_msladyandwatch,image_index,x,y,1,1,0,greencolor,1)
                        }
                    break;
                    case 7:
                        with(obj_badguy) {
                            draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
                        }
                        with(obj_lady) {
                            draw_sprite_ext(sprite_index,image_index,x-45,y,1,1,0,greencolor,1)
                        }
                        with(obj_player) {
                            draw_sprite_ext(sprite_index,image_index,x,y-95,1,1,0,greencolor,1)
                            draw_sprite_ext(spr_msladyandwatch,image_index,x,y,1,1,0,greencolor,1)
                        }
                    break;
                    default:
                        //background
                        m+=1
                        mm+=0.25
                        if m>=344 {
                            m=0
                        }
                        if mm>=238 {
                            mm=0
                        }
                        with(obj_backgroundp1) {
                            var i;
                            var ii;
                            for (ii=0;ii<13;ii++) {
                                draw_sprite(spr_backbustrees,0,9+(239*ii)-obj_song.mm,139)
                            }
                            for (i=0;i<13;i++) {
                                draw_sprite(spr_backbus,0,9+(345*i)-obj_song.m,139)
                            }
                            draw_self();
                            draw_sprite(spr_busback,2,0,0)
                        }
                        //character stuff
                        with(obj_lady) {
                            image_alpha=0
                            draw_sprite(sprite_index,image_index,x,y)
                            if obj_song.mmmmm>0 { //bomb note screen glitch
                                randomize();
                                var randomscreen=round(random(7))
                                if randomscreen=1 {
                                    var screened=1
                                } else {
                                    var screened=0
                                }
                                draw_sprite(spr_speakersscreenlightw2,2+screened,x,y)
                                draw_sprite(spr_speakersscreenlightw2,4,x,y+(sin(current_time/200)))
                                obj_song.mmmmm-=0.5
                            }
                            draw_sprite(spr_busow,0,224,296)
                        }
                        with(obj_badguy) {
                            scr_drawcd(170,303);
                            //scr_drawcd(64,235);
                        }
                    break;
                }
}