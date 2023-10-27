switch(song) {
    case 1.2: //infographic
        //fadein
        if audio_sound_get_track_position(songplaying)<4.785 {
            fade=audio_sound_get_track_position(songplaying)/2
        } else {
            fade=0
        }
        //text
        draw_set_valign(fa_middle)
        draw_set_halign(fa_center)
        draw_set_font(fnt_infographic)
        var color1 = make_colour_rgb(164,140,96)
        var color2 = make_colour_rgb(153,115,78)
        draw_text_colour(room_width/2,room_height/2,string_hash_to_newline("You unlocked something#in freeplay"),color1,color1,color2,color2,fade)
        draw_set_valign(fa_top)
        draw_set_halign(fa_left)
        draw_set_alpha(1)
        draw_set_font(fnt_comic1)
        //over
        if audio_sound_get_track_position(songplaying)>7.5 && !instance_exists(obj_fadeout){
            instance_create(0,0,obj_fadeout)
            obj_fadeout.roomgo=rm_stageselect
            audio_play_sound(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong)),9999,true)
            obj_stats.songlocked[0][3]=false
            obj_stats.songnew[0][3]=true
        }
    break;
    case 2.2: //channelsurfing & nermal
        var color1=make_color_rgb(183,224,251);
        var color2=make_color_rgb(120,164,228);
        draw_set_valign(fa_middle)
        draw_set_halign(fa_center)
        draw_set_font(fnt_comic2)
        if audio_sound_get_track_position(songplaying)>0.01 {
            draw_text_colour(room_width/2,(room_height/2)-34,string_hash_to_newline("You unlocked something#in freeplay"),color1,color1,color2,color2,1)
            draw_sprite_ext(spr_csunlock,0,room_width/2,(room_height/2)+34,1,1,0,color1,1)
        }
        if audio_sound_get_track_position(songplaying)>=2.24 && !instance_exists(obj_fadeout){
            instance_create(0,0,obj_fadeout)
            obj_fadeout.roomgo=rm_stageselect
            audio_play_sound(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong)),9999,true)
            obj_stats.songlocked[0][2]=false
            obj_stats.songnew[0][2]=true
        }
        draw_set_valign(fa_top)
        draw_set_halign(fa_left)
        draw_set_font(fnt_comic1)
    break;
    case 3.2: //break it down, triangle man!
        var color=make_color_rgb(255,180,111)
        draw_set_valign(fa_middle)
        draw_set_halign(fa_center)
        draw_set_font(fnt_tutorial)
        //background
        if audio_sound_get_track_position(songplaying)>0.667 && audio_sound_get_track_position(songplaying)<1.333 {
            draw_set_alpha((audio_sound_get_track_position(songplaying)/1.3)-(0.667));
            draw_rectangle_colour(0,0,room_width,room_height,c_black,c_black,c_green,c_green,false)
            draw_set_alpha(1);
        }
        //sprites
        if audio_sound_get_track_position(songplaying)>0 && audio_sound_get_track_position(songplaying)<0.334 {
            scr_silhouette(color);
                draw_sprite_ext(spr_introcromp,0,room_width/2,room_height/2,4,4,0,c_white,1)
            shader_reset();
        }
        if audio_sound_get_track_position(songplaying)>=0.334 && audio_sound_get_track_position(songplaying)<0.667 {
            scr_silhouette(color);
                draw_sprite_ext(spr_introcromp,1,room_width/2,room_height/2,4,4,0,c_white,1)
            shader_reset();
        }
        if audio_sound_get_track_position(songplaying)>=0.667 && audio_sound_get_track_position(songplaying)<0.868 {
            scr_silhouette(color);
                draw_sprite_ext(spr_introcromp,2,room_width/2,room_height/2,4,4,0,c_white,1)
            shader_reset();
        }
        if audio_sound_get_track_position(songplaying)>=0.868 && audio_sound_get_track_position(songplaying)<1.001 {
            scr_silhouette(color);
                draw_sprite_ext(spr_introcromp,3,room_width/2,room_height/2,4,4,0,c_white,1)
            shader_reset();
        }
        if audio_sound_get_track_position(songplaying)>=1.001 && audio_sound_get_track_position(songplaying)<1.333 {
            scr_silhouette(color);
                draw_sprite_ext(spr_introcromp,4,room_width/2,room_height/2,4,4,0,c_white,1)
            shader_reset();
        }
        //flash
        if (audio_sound_get_track_position(songplaying)>=1.333 && audio_sound_get_track_position(songplaying)<=1.433 && !instance_exists(obj_fadein)) {
            instance_create(0,0,obj_fadein)
            obj_fadein.color=c_white
        }
        //text
        if audio_sound_get_track_position(songplaying)>=1.333 {
            draw_text_colour(room_width/2,(room_height/2)-34,string_hash_to_newline("THERES SOMETHING IN FREEPLAY#WITH YOUR NAME ON IT"),color,color,color,color,1)
        }
        //leave
        if audio_sound_get_track_position(songplaying)>=4.6 && !instance_exists(obj_fadeout){
            instance_create(0,0,obj_fadeout)
            obj_fadeout.roomgo=rm_stageselect
            audio_play_sound(asset_get_index("mus_menu" + string(obj_stats.randomMenuSong)),9999,true)
            obj_stats.songlocked[0][1]=false
            obj_stats.songnew[0][1]=true
        }
        //reset
        draw_set_valign(fa_top)
        draw_set_halign(fa_left)
        draw_set_font(fnt_comic1)
    break;
}

