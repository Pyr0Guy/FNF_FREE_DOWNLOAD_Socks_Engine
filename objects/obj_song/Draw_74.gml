/// @description ntsc gui
if ntsc = true {
    shader_set(sh_ntsc);
        var _bleeding_width = floor(shader_get_uniform(sh_ntsc, "f_screenWidth"))
        var _bleeding_height = floor(shader_get_uniform(sh_ntsc, "f_screenHeight"))
        var _bleeding_bleeding = floor(shader_get_uniform(sh_ntsc, "f_bleeding"))
        //shader_set_uniform_f(_bleeding_width, 1.0/(window_width*surface_aspect));
        //shader_set_uniform_f(_bleeding_height, 1.0/(window_height*surface_aspect));
        shader_set_uniform_f(_bleeding_width, 4/window_get_width());
        shader_set_uniform_f(_bleeding_height, 4/window_get_height());
        shader_set_uniform_f(_bleeding_bleeding, ntscdist);
        draw_surface(application_surface,0,0);
        //really shit   
    shader_reset();
}
    /*
    var time = floor(shader_get_uniform(sh_cool, "Time"))
    var texel = floor(shader_get_uniform(sh_cool, "Texel"))
    shader_set(sh_cool)
        draw_surface(application_surface, 0, 0);
        shader_set_uniform_f(time, current_time)
        shader_set_uniform_f(texel, 0.005, 0.005)
    //shader_reset();
}


/* */
/*  */
