/// @description images
draw_sprite_ext(spr_chartingbacks,bg,0,0 + yy,1,1,0,make_colour_hsv((sin(current_time/9000)*256),120,173),1)


/// @description text
draw_set_font(fnt_comic1)
draw_set_halign(fa_center)
draw_set_color(c_black)
draw_text_ext_transformed(132,22 + yy,string_hash_to_newline("WELCOME TO THE"),10,900,2,2,0)
draw_set_color(c_white)
draw_text_ext_transformed(130,20 + yy,string_hash_to_newline("WELCOME TO THE"),10,900,2,2,0)
draw_set_color(c_black)
draw_text_ext_transformed(132,47 + yy,string_hash_to_newline("CHARTER 900"),10,900,2,2,sin(current_time/200))
draw_set_color(make_color_hsv(sin(current_time/-9000)*256,50,213))
draw_text_ext_transformed(130,45 + yy,string_hash_to_newline("CHARTER 900"),10,900,2,2,sin(current_time/200))
//controls
draw_set_halign(fa_left)
var controls = @"CONTROLS:
left click to place a note
right click to remove a note
middle click for a hold note
press 1 to do normal notes
press 2 to do alt animation notes
press 3 to do bombs (scary) dont use these in w1 btw
camera stuff (4 you, 5 meany, 6 full)
press 7 for taunt
enter to pause and play
left to jump back
right to jump foward
exit button to exit charter 900
refresh button to load song
"
draw_set_colour(c_black)

draw_text(16,99 + yy,string_hash_to_newline(controls))
draw_text(17,99 + yy,string_hash_to_newline(controls))
draw_text(15,100 + yy,string_hash_to_newline(controls))
draw_text(17,100 + yy,string_hash_to_newline(controls))
draw_text(15,101 + yy,string_hash_to_newline(controls))
draw_text(16,101 + yy,string_hash_to_newline(controls))
draw_text(17,101 + yy,string_hash_to_newline(controls))

draw_text(18,100 + yy,string_hash_to_newline(controls))
draw_text(18,101 + yy,string_hash_to_newline(controls))
draw_text(15,102 + yy,string_hash_to_newline(controls))
draw_text(16,102 + yy,string_hash_to_newline(controls))
draw_text(18,102 + yy,string_hash_to_newline(controls))
draw_text(17,102 + yy,string_hash_to_newline(controls))

draw_set_colour(c_white)
draw_text(16,100 + yy,string_hash_to_newline(controls))

//Пипец выглядит МОНСТРУОЗНО но курто
draw_text(530, 70+ yy, "Song Name")
draw_sprite_ext(spr_whitepixel,0, 509, 89+ yy, 112, 22, 0, c_black, 1)
draw_sprite_ext(spr_whitepixel,0, 510, 90+ yy, 110, 20, 0, c_white, 1)

var _mL = mouse_check_button_pressed(mb_left)

var mY = mouse_y, mX = mouse_x
if(_mL && !songFileWrite && !bpmWrite)
{
	if(mX > 510 && mX < 620 && mY > 90+ yy && mY < 110+ yy)
	{
		keyboard_string = ""
		songWrite = !songWrite
	}
	else
		songWrite = false
}

if(songWrite)
	var stick = "|"
else
	var stick = ""
	
draw_text_color(510, 90+ yy, songWriter + stick, c_black, c_black, c_black, c_black, 1)

draw_text(515, 130+ yy, "Song File Name")
draw_sprite_ext(spr_whitepixel,0, 509, 149+ yy, 112, 22, 0, c_black, 1)
draw_sprite_ext(spr_whitepixel,0, 510, 150+ yy, 110, 20, 0, c_white, 1)

if(_mL && !songWrite && !bpmWrite)
{
	if(mX > 510 && mX < 620 && mY > 150+ yy && mY < 170+ yy)
	{
		keyboard_string = ""
		songFileWrite = !songFileWrite
	}
	else
		songFileWrite = false
}

if(songFileWrite)
	var stick2 = "|"
else
	var stick2 = ""
	
draw_text_color(510, 150+ yy, songFileWriter + stick2, c_black, c_black, c_black, c_black, 1)


draw_text(546, 180+ yy, "BPM")
draw_sprite_ext(spr_whitepixel,0, 539, 199+ yy, 42, 22, 0, c_black, 1)
draw_sprite_ext(spr_whitepixel,0, 540, 200+ yy, 40, 20, 0, c_white, 1)

if(_mL && !songWrite && !songFileWrite)
{
	if(mX > 540 && mX < 580 && mY > 200+ yy && mY < 220+ yy)
	{
		keyboard_string = ""
		bpmWrite = !bpmWrite
	}
	else
		bpmWrite = false
}

//Окей это уже уходит из под контроля
if(bpmWrite)
	var stick3 = "|"
else
	var stick3 = ""
	
draw_text_color(540, 200+ yy, bpmWriter + stick3, c_black, c_black, c_black, c_black, 1)

//HitSound Check mark
draw_sprite_ext(spr_cheker, hitsoundCheck, 520, 240+ yy, 1, 1, 0, c_white, 1)
draw_set_halign(fa_center)
draw_text(528, 260+ yy, string_hash_to_newline("HitSound"))

if(_mL && (mX > 520 && mX < 536 && mY > 240+ yy && mY < 256+ yy))
	hitsoundCheck = !hitsoundCheck
	
draw_set_halign(fa_left)