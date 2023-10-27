//I, robot

function scr_song0(){
	//note stuff
        if instance_exists(obj_note) {
            obj_note.sprite=spr_uinotegaw
            obj_note.spritehold=spr_notesholdgaw
            obj_note.spriteholdcap=spr_notecapgaw
        }
        obj_uinotes.sprite=spr_uinotegaw
		//obj_noteFlash.sprite = spr_uinotesFlashGaw
        //ui
        //health bar
        obj_song.houtline=c_white
        obj_song.hplayer=c_black
        obj_song.hbaddie=c_black
        //flow
        obj_song.foutline=c_white
        obj_song.fback=c_black
        obj_song.ffull=c_white
        //icons
        obj_song.baddieicon=spr_stradicongaw
        obj_song.playericon=spr_dudeicongaw
        //text color
        obj_song.tcolor=c_black
        obj_song.toutline=c_white
        //guys
        with(obj_tutorialguys) {
            image_alpha=0
            scr_skinswapdude(c_white)
                draw_sprite(sprite_index,image_index,x,y)
                draw_set_blend_mode(bm_max)
                draw_sprite(sprite_index,image_index,x,y)
                draw_set_blend_mode(bm_normal)
            shader_reset();
            draw_sprite(spr_tutorialbglight,0,x,y)
        }
        with(obj_player) {
            image_alpha=0
            draw_sprite(sprite_index,image_index,x,y)
        }
        with(obj_badguy) {
            image_alpha=0
            draw_sprite(sprite_index,image_index,x,y)
        }
        //event stuff
        switch(obj_song.event) {
            case 0:
            break;
            case 1:
                obj_song.m+=0.05 * global.delta_multiplier 
                //set text values
                draw_set_font(fnt_tutorial)
                draw_set_valign(fa_middle)
                draw_set_halign(fa_center)
                //draw text
                draw_set_alpha(obj_song.m)
                var i;
                var ii;
                for (i=0;i<3;i++) {
                    for (ii=0;ii<3;ii++) {
                        draw_set_color(c_white)
                        draw_text_ext_transformed(299+i,149+ii,string_hash_to_newline("YOU"),10,999,3,3,0)
                    }
                }
                draw_set_color(c_black)
                draw_text_ext_transformed(300,150,string_hash_to_newline("YOU"),10,999,3,3,0)
                //set text values back to normal
                draw_set_valign(fa_top)
                draw_set_halign(fa_left)
                draw_set_alpha(1)
                draw_set_font(fnt_comic1)
            break;
            case 2:
                obj_song.m+=0.05 * global.delta_multiplier 
                obj_song.mm+=0.05 * global.delta_multiplier 
                //set text values
                draw_set_font(fnt_tutorial)
                draw_set_valign(fa_middle)
                draw_set_halign(fa_center)
                //draw text
                draw_set_alpha(obj_song.mm)
                var h;
                var hh;
                for (h=0;h<3;h++) {
                    for (hh=0;hh<3;hh++) {
                        draw_set_color(c_white)
                        draw_text_ext_transformed(99+h,149+hh,string_hash_to_newline("BADGUY"),10,999,2,2,0)
                    }
                }
                draw_set_color(c_black)
                draw_text_ext_transformed(100,150,string_hash_to_newline("BADGUY"),10,999,2,2,0)
                draw_set_alpha(obj_song.m)
                var i;
                var ii;
                for (i=0;i<3;i++) {
                    for (ii=0;ii<3;ii++) {
                        draw_set_color(c_white)
                        draw_text_ext_transformed(299+i,149+ii,string_hash_to_newline("YOU"),10,999,3,3,0)
                    }
                }
                draw_set_color(c_black)
                draw_text_ext_transformed(300,150,string_hash_to_newline("YOU"),10,999,3,3,0)
                //reset text values
                draw_set_valign(fa_top)
                draw_set_halign(fa_left)
                draw_set_alpha(1)
                draw_set_font(fnt_comic1)
            break;
            case 3:
                obj_song.m-=0.05 * global.delta_multiplier 
                obj_song.mm-=0.05 * global.delta_multiplier 
                obj_song.m=clamp(obj_song.m,0,1)
                obj_song.mm=clamp(obj_song.mm,0,1)
                //set text values
                draw_set_font(fnt_tutorial)
                draw_set_valign(fa_middle)
                draw_set_halign(fa_center)
                //draw text
                draw_set_alpha(obj_song.mm)
                var h;
                var hh;
                for (h=0;h<3;h++) {
                    for (hh=0;hh<3;hh++) {
                        draw_set_color(c_white)
                        draw_text_ext_transformed(99+h,149+hh,string_hash_to_newline("BADGUY"),10,999,2,2,0)
                    }
                }
                draw_set_color(c_black)
                draw_text_ext_transformed(100,150,string_hash_to_newline("BADGUY"),10,999,2,2,0)
                draw_set_alpha(obj_song.m)
                var i;
                var ii;
                for (i=0;i<3;i++) {
                    for (ii=0;ii<3;ii++) {
                        draw_set_color(c_white)
                        draw_text_ext_transformed(299+i,149+ii,string_hash_to_newline("YOU"),10,999,3,3,0)
                    }
                }
                draw_set_color(c_black)
                draw_text_ext_transformed(300,150,string_hash_to_newline("YOU"),10,999,3,3,0)
                //reset text values
                draw_set_valign(fa_top)
                draw_set_halign(fa_left)
                draw_set_alpha(1)
                draw_set_font(fnt_comic1)
            break;
            case 5:
            break;
            case 6:
            break;
            default:
                var textbad;
                var textgood;
                var goodcolor;
                //sprites
                    //badguy
                    var badleft=obj_badguy.anim[0]
                    var baddown=obj_badguy.anim[1]
                    var badup=obj_badguy.anim[2]
                    var badright=obj_badguy.anim[3]
                    //goodguy
                        //correct
                        var goodleft=obj_player.anim[0]
                        var gooddown=obj_player.anim[1]
                        var goodup=obj_player.anim[2]
                        var goodright=obj_player.anim[3]
                        //miss
                        var goodleftm=obj_player.anim[8]
                        var gooddownm=obj_player.anim[9]
                        var goodupm=obj_player.anim[10]
                        var goodrightm=obj_player.anim[11]
                //determine text
                switch(obj_badguy.sprite_index) { //badguy
                    case badleft:
                        textbad="LEFT"
                    break;
                    case baddown:
                        textbad="DOWN"
                    break;
                    case badup:
                        textbad="UP"
                    break;
                    case badright:
                        textbad="RIGHT"
                    break;
                    default:
                        textbad=""
                    break;
                }
                switch(obj_player.sprite_index) { //goodguy
                    case goodleft:
                        textgood="LEFT"
                        goodcolor=c_white
                    break;
                    case gooddown:
                        textgood="DOWN"
                        goodcolor=c_white
                    break;
                    case goodup:
                        textgood="UP"
                        goodcolor=c_white
                    break;
                    case goodright:
                        textgood="RIGHT"
                        goodcolor=c_white
                    break;
                    case goodleftm:
                        textgood="LEFT"
                        goodcolor=c_red
                    break;
                    case gooddownm:
                        textgood="DOWN"
                        goodcolor=c_red
                    break;
                    case goodupm:
                        textgood="UP"
                        goodcolor=c_red
                    break;
                    case goodrightm:
                        textgood="RIGHT"
                        goodcolor=c_red
                    break;
                    default:
                        textgood=""
                        goodcolor=c_white
                    break;
                }
                //light up
                if obj_badguy.image_index=1 {
                    obj_song.mmm=1
                } else {
                    obj_song.mmm-=0.05 * global.delta_multiplier 
                }
                if (obj_player.image_index>=0 && obj_player.image_index<=2 && obj_player.sprite_index != obj_player.idle[0]) {
                    obj_song.mmmm=1
                } else {
                    obj_song.mmmm-=0.05 * global.delta_multiplier 
                }
                //draw text
                //set text values
                draw_set_font(fnt_tutorial)
                draw_set_valign(fa_middle)
                draw_set_halign(fa_center)
                //draw text
                draw_set_alpha(obj_song.mmm)
                var h;
                var hh;
                for (h=0;h<3;h++) {
                    for (hh=0;hh<3;hh++) {
                        draw_set_color(c_white)
                        draw_text_ext_transformed(99+h,149+hh,string_hash_to_newline(textbad),10,999,3,3,0)
                    }
                }
                draw_set_color(c_black)
                draw_text_ext_transformed(100,150,string_hash_to_newline(textbad),10,999,3,3,0)
                draw_set_alpha(obj_song.mmmm)
                var i;
                var ii;
                for (i=0;i<3;i++) {
                    for (ii=0;ii<3;ii++) {
                        draw_set_color(goodcolor)
                        draw_text_ext_transformed(299+i,149+ii,string_hash_to_newline(textgood),10,999,3,3,0)
                    }
                }
                draw_set_color(c_black)
                draw_text_ext_transformed(300,150,string_hash_to_newline(textgood),10,999,3,3,0)
                //reset text values
                draw_set_valign(fa_top)
                draw_set_halign(fa_left)
                draw_set_alpha(1)
                draw_set_font(fnt_comic1)
            break;
        }
}