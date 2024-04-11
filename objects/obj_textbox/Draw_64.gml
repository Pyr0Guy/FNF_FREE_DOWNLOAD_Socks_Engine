if pause=false or stayvisable=true {
    draw_sprite_ext(spr_textbox,0,0,0,1,1,0,c_white,0.5)
    if !surface_exists(textboxsurf) textboxsurf=surface_create(400,400);
    surface_set_target(textboxsurf)
        draw_clear_alpha(c_black,0) //reset alpha
        draw_set_font(fnt_comic1)
        //text
        var s;
        for (s=1;s<=i-inerf-waiting;s++) {
            if s=1 { //reset values
                //general values
                var ns=0
                var tm=0
                var addy=0
                var colonspace=0;
                //effects values
                var wave=false
                var shake=false
                var crazyx=0
                var crazyy=0
                //color values
                scr_textboxcoloring();
            }
            if string_char_at(txt[text],s+addy)="<" {
                var cooly=s+addy
                if string_char_at(txt[text],cooly+1)="/" {
                    var styleendloop;
                    var stylerid;
                    for(styleendloop=cooly;styleendloop<=string_length(txt[text]);styleendloop++) {
                        if string_char_at(txt[text],styleendloop)=">" {
                            stylerid=string_lower(string_copy(txt[text],cooly+2,styleendloop-2-cooly));
                            break;
                        }
                    }
                    //turning off specific styles
                    switch(stylerid) {
                        case "color": scr_textboxcoloring(); break;
                        case "effect":
                            var wave=false;
                            var shake=false;
                            var crazyx=0
                            var crazyy=0
                        break;
                    }
                } else {
                    //get style
                    var styleloop;
                    var style;
                    for(styleloop=cooly;styleloop<string_length(txt[text]);styleloop++) {
                        if string_char_at(txt[text],styleloop)=":" {
                            colonspace=styleloop;
                            style=string_lower(string_copy(txt[text],cooly+1,styleloop-1-cooly));
                            break;
                        }
                    }
                    var whateverloop;
                    var WHATEVER;
                    for(whateverloop=colonspace;whateverloop<string_length(txt[text]);whateverloop++) {
                        if string_char_at(txt[text],whateverloop)=">" {
                            WHATEVER=string_lower(string_copy(txt[text],colonspace+1,whateverloop-colonspace-1));
                            break;
                        }
                    }
                    //var style=scr_stylegetc("colon",s+addy);
                    //var WHATEVER=scr_stylegetc("parameter",colonspace);
                    switch(style) {
                        case "color":
                            switch(WHATEVER) {
                                case "red":
                                    color1 = make_colour_rgb(237,28,36)
                                    color2 = make_colour_rgb(136,0,21)
                                break;
                                case "green":
                                    color1 = make_colour_rgb(56,150,80)
                                    color2 = make_colour_rgb(40,119,73)
                                break;
                                case "blue":
                                    color1 = make_colour_rgb(54,92,226)
                                    color2 = make_colour_rgb(62,37,199)
                                break;
                                case "yellow":
                                    color1 = make_colour_rgb(255,255,128)
                                    color2 = make_colour_rgb(220,210,88)
                                break;
                                case "purple":
                                    color1 = make_colour_rgb(190,146,239)
                                    color2 = make_colour_rgb(101,27,184)
                                break;
                                case "cyan":
                                    color1 = make_colour_rgb(28,218,234)
                                    color2 = make_colour_rgb(20,116,173)
                                break;
                                case "seafoam":
                                    color1 = make_colour_rgb(141,245,217)
                                    color2 = make_colour_rgb(91,234,220)
                                break;
                                case "cdgreen":
                                    color1 = make_colour_rgb(143,239,143)
                                    color2 = make_colour_rgb(92,208,143)
                                break;
                                case "cdorange":
                                    color1 = make_colour_rgb(255,184,113)
                                    color2 = make_colour_rgb(189,90,34)
                                break;
                                case "cdred":
                                    color1 = make_colour_rgb(255, 128, 217)
                                    color2 = make_colour_rgb(231, 78, 104)
                                break;
                                case "cdgrey":
                                    color1 = make_colour_rgb(192,192,192)
                                    color2 = make_colour_rgb(157,159,179)
                                break;
                                case "cdblue":
                                    color1 = make_colour_hsv(160,97,136)
                                    color2 = make_colour_hsv(164,91,103)
                                break;
                                case "1":
                                    color1 = make_color_hsv(210,16,78)
                                    color2 = make_color_hsv(0,12,100)
                                break;
                            }
                        break;
                        case "effect": 
                            //variable_instance_set(obj_textbox,WHATEVER,true)
                            switch(WHATEVER) {
                                case "shake": shake=true break;
                                case "wave": wave=true break;
                                case "wavey": wave=true break;
                            }
                        break;
                    }
                }
                addy+=scr_styleskip(txt[text],cooly);
            }
            //effect math
            if wave=true crazyy=(-1+(sin(current_time/100+s)))
            if shake=true {
                crazyx=-0.5+random(1)
                crazyy=-0.5+random(1)
            }
            //next line
            if string_char_at(txt[text],s+addy) = "#" {
                ns+=10//5
                tm=s
            }
            //draw words
            draw_set_font(font)
            draw_text_color((textx+((s-tm)*5)+crazyx)*2,(138+ns+crazyy)*2,string_hash_to_newline(string_char_at(txt[text],s+addy)),color1,color1,color2,color2,1)
            //draw_text_transformed_colour((textx+((s-tm)*5))*4+crazyx,(138+ns)*4+crazyy,string_char_at(txt[text],s+addy),2,2,0,color1,color1,color2,color2,1)
            //draw name
            draw_set_font(namefont)
            //draw_text_transformed_colour(textx*4,113*4,name,2,2,0,namecolor1,namecolor1,namecolor2,namecolor2,1)
            draw_text_colour(textx*2,113*2,string_hash_to_newline(name),namecolor1,namecolor1,namecolor2,namecolor2,1)
        }
    surface_reset_target();
    var shadowx;
    var shadowy;
    for(shadowx=-2;shadowx<3;shadowx++) {
        for(shadowy=-2;shadowy<3;shadowy++) {
            var shadowx2=shadowx*2;
            var shadowy2=shadowy*2;
            draw_surface_ext(textboxsurf,shadowx2,shadowy2,2,2,0,c_black,1)
            draw_surface_ext(textboxsurf,shadowx2+2,shadowy2+2,2,2,0,c_black,1)
        }
    }
    draw_surface_ext(textboxsurf,0,0,2,2,0,c_white,1)
}

