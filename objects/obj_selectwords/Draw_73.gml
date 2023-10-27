draw_sprite_ext(spr_holdALT, 0, 0, 190, 0.6, 0.6, 0, c_white, 1)

if(del > 0 && del < 50)
{
	draw_sprite_ext(spr_blackpixel, 0, x, y, 800, 800, 0, c_black, delAlpha - 0.2);
	draw_sprite_ext(spr_dontDelete, frame, 100, 100, 1, 1, 0, c_white, delAlpha)
}