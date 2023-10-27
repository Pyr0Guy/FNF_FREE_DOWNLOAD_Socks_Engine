if(len > 4)
	yy+=(-10*sel-y)/10
	
y+=(-10*sel-y)/10 

draw_sprite_ext(spr_menubacksg,1,0,y,1,1,0,c_white,1)

for(var i = 0; i < len; i++)
{
	
	if (i == sel)
		draw_sprite(selectArr[i], 1, 10, yy + 10 + (i * 42))	
	else
		draw_sprite(selectArr[i], 0, 10, yy + 10 + (i * 42))
}
