// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_minimapnotes(){
	var cc, c;
	with (obj_charting)
	{
	    for (cc = 0; cc < (notes * 2); cc++)
	    {
	        for (c = 0; c < songlong; c++)
	        {
	            if (note[cc, c] > 0)
	                draw_sprite_ext(spr_whitepixel, 0, ((342 - (notes * 2)) + cc), (64 + (c / 4)), 1, 1, 0, c_blue, 1)
	        }
	    }
	}

}