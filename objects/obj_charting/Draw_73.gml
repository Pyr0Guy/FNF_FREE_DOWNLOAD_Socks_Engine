/// @description line + minimap
//line
var ploopy, cc, c, color1, color2, color3, ntypes, o, bb, b, xx, fugly, chungy, bomf, soff;
draw_sprite_ext(spr_whitepixel, 0, 352, 64+ yy, ((notes * 16) * 2), 2, 0, c_red, 1)
ploopy = ((window_get_height() / 4) - (((((songpos / 60) * bpm) * 4) * 16) / 16))+ yy
draw_sprite_ext(spr_whitepixel, 0, ((342 - (notes * 2)) - 1), (ploopy - 1), ((notes * 2) + 2), (((songlong / 4) * 4) + 2), 0, c_black, 1)
draw_sprite_ext(spr_whitepixel, 0, (342 - (notes * 2)), ploopy, ((notes * 2) + 2), (((songlong / 4) * 4) + 2), 0, c_black, 1)
draw_sprite_ext(spr_whitepixel, 0, 342, ploopy, (-notes), ((songlong / 4) * 4), 0, c_white, 1)
draw_sprite_ext(spr_whitepixel, 0, (342 - notes), ploopy, (-notes), ((songlong / 4) * 4), 0, c_gray, 1)
draw_sprite_ext(spr_whitepixel, 0, 342, (ploopy + (((songpos / 60) * bpm) * 4)), ((-notes) * 2), 1, 0, c_red, 1)
for (cc = 0; cc < (notes * 2); cc++)
{
    for (c = 0; c < songlong; c++)
    {
        if (grid[# cc, c] > 0)
            draw_sprite_ext(spr_whitepixel, 0, ((342 - (notes * 2)) + cc), (ploopy + ((c / 4) * 4)), 1, 1, 0, c_blue, 1)
    }
}
color1 = make_color_hsv(138, 28, 100)
color2 = make_color_hsv(135, 31, 200)
color3 = make_color_hsv(151, 47, 82)
ntypes = 8

draw_sprite_ext(spr_whitepixel, 0, 0, 0+ yy, room_width, 22, 0, c_black, 1)
draw_sprite_ext(spr_whitepixel, 0, 0, 0+ yy, room_width, 20, 0, color1, 1)

draw_set_font(fnt_comic1)

for (o = 0; o <= 5; o++)
{
    if (mouse_x > (5 + (60 * o)) && mouse_x < ((5 + (60 * o)) + 60) && mouse_y < 20+ yy)
        draw_sprite_ext(spr_whitepixel, 0, (60 * o), 0+ yy, 60, 20, 0, c_white, 0.25)
    draw_sprite(spr_uiicons, o, (5 + (60 * o)), 0+ yy)
    draw_text_colour((26 + (60 * o)), 1+ yy, option[o], color3, color3, color3, color3, 1)
    draw_text_colour((25 + (60 * o)), 0+ yy, option[o], color2, color2, color2, color2, 1)
    if (mouse_check_button_pressed(mb_left) && mouse_x > (5 + (60 * o)) && mouse_x < ((5 + (60 * o)) + 60) && mouse_y < 20+ yy)
    {
        switch o
        {
            case 0:
                for (bb = 0; bb < (notes * 2); bb++)
                {
                    for (b = 0; b < songlong; b++)
                        grid[# bb, b] = 0
                }
                break
            case 1:
                scr_loadchart(songWriter)
                break
            case 2:
                scr_savechart(songWriter)
                break
            case 3:
                submenop[1] = (!submenop[1])
                submenop[2] = 0
                break
            case 4:
                window_set_size(800, 800)
                surface_resize(application_surface, 800, 800)
				ds_grid_destroy(grid);
				window_center()
                game_restart()
                break
			case 5:
				var filename = asset_get_index(songFileWriter);
				trace(audio_exists(filename))
				if(!audio_exists(filename))
				{
					var audioname = (string(working_directory)+ "audio\\" + string(songFileWriter) + ".ogg")
					
					if(file_exists(audioname)){
						var loadedAudio = audio_create_stream(audioname)
						obj_stats.songName = songFileWriter;
						obj_stats.songFile = loadedAudio;
					}
				}
				else{
					obj_stats.songName = songFileWriter;
					obj_stats.songFile = filename;
				}
				
				if (bpmWriter != "")
                {
                    obj_midi_clock.bpm = real(bpmWriter)
                    obj_stats.bpm = real(bpmWriter)
                }
                else
                    obj_stats.bpm = 140
				
				audio_pause_sound(songplaying)
				ds_list_clear(global.deactivated_instances);
				ds_grid_destroy(grid);
                room_goto(rm_chater)
			break;
        }

    }
}

if (submenop[1] == 1)
{
    draw_sprite_ext(spr_whitepixel, 0, 166, 28, 84, ((((ntypes div 4) * 16) + 20) + 4), 0, c_black, 1)
    draw_sprite_ext(spr_whitepixel, 0, 168, 30, 80, (((ntypes div 4) * 16) + 20), 0, color1, 1)
    for (xx = 1; xx <= ntypes; xx++)
    {
        fugly = 150
        if (xx == 1)
        {
            chungy = 0
            bomf = 0
            soff = 0
        }
        if ((xx % 4) == 1)
        {
            chungy++
            bomf += (xx - 1)
        }
        if (xx == 8)
            soff = 2
        if (mouse_x > (fugly + ((xx - bomf) * 20)) && mouse_x < ((fugly + ((xx - bomf) * 20)) + 16) && mouse_y > (24 + (chungy * 20)) && mouse_y < ((24 + (chungy * 20)) + 16))
        {
            draw_sprite_ext(spr_whitepixel, 0, ((fugly + ((xx - bomf) * 20)) - 1), ((24 + (chungy * 20)) - 1), 18, 18, 0, c_white, 0.5)
            if mouse_check_button_pressed(mb_left)
                obj_notespace.type = (xx + soff)
        }
        draw_sprite(spr_dud, (xx + soff), (fugly + ((xx - bomf) * 20)), (24 + (chungy * 20)))
    }
}


//draw_rectangle(10, 10, room_width-10, room_height-10, true)