draw_set_font(fnt_comic1)
draw_sprite_ext(spr_menubacksg,0,0,0,1,1,0,c_white,1)

x+=((-1*sel)*200-x)/8

for(var i=0; i < len; i++)
{
	if sel != i
		draw_sprite_ext(char[i][0], 0, x + (i * 200) + 200, room_height - 150, 2, 2, 0, c_black, 0.8)
	else
		draw_sprite_ext(char[sel][0], 0, x + (i * 200) + 200, room_height - 150, 2, 2, 0, make_color_rgb(c,c,c), 1)
}

draw_set_halign(fa_center)
draw_text_transformed(200, 300, char[sel][1], 2, 2, 0)
draw_text_transformed(200, 350, char[sel][2], 1, 1, 0)

draw_set_halign(fa_left)