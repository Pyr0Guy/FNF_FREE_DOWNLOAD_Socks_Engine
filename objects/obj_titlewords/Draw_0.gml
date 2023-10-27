draw_self();
/*
subtitle=surface_create(250,100)
surface_set_target(subtitle)
    draw_clear_alpha(c_black,0) //reset alpha
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_comic1b)
    //text colors
    var text = "WEEKND 3 UPDATE!"
    var color1 = make_colour_rgb(163,54,95)
    var color2 = make_colour_rgb(143,50,75)
    var color1b = make_colour_rgb(83,38,54)
    var color2b = make_colour_rgb(51,26,38)
    //draw text
    var i;
    var ii;
    for(i=-1;i<=1;i++) {
        for(ii=-1;ii<=1;ii++) {
            draw_text_colour(126+i,51+ii,string_hash_to_newline(text),c_black,c_black,c_black,c_black,1)
            draw_text_colour(125+i,50+ii,string_hash_to_newline(text),c_black,c_black,c_black,c_black,1)
        }
    }
    draw_text_colour(126,51,string_hash_to_newline(text),color1b,color1b,color2b,color2b,1)
    draw_text_colour(125,50,string_hash_to_newline(text),color1,color1,color2,color2,1)
surface_reset_target();
draw_surface_general(subtitle,0,0,250,100,(x-35),(y+20),image_xscale-0.4+(((sin(current_time/200))/32)),image_xscale-0.4+(((sin(current_time/200))/32)),10+(((sin(current_time/470)))),c_white,c_white,c_white,c_white,1)
surface_free(subtitle)

draw_set_halign(fa_left);
draw_set_valign(fa_top);

