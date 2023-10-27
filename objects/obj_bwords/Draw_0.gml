draw_set_font(fnt_comic1)
draw_set_halign(fa_center);
draw_set_color(c_white)
switch(part){
case 1:
    draw_text(x,y,string_hash_to_newline(@"TYLER AND 
FUNNE"))
break;
case 2:
    draw_text(x,y,string_hash_to_newline("PRESENT"))
break;
case 3:
    draw_text(x,y,string_hash_to_newline("IN ASSOCIATION WITH"))
break;
case 4:
    draw_text(x,y,string_hash_to_newline("IN ASSOCIATION WITH"))
    draw_sprite(spr_youtube,0,x+10,y+40)
    if !audio_is_playing(snd_whehehe) {
            audio_play_sound(snd_whehehe,9999,false)
    }
    break;
case 5:
    audio_stop_sound(snd_whehehe)
    /*I know its dumb that this is
    a switch statement and not like
    a text file or something but
    this is on screen for like 
    2 seconds who caaaaaaaaaaares
	
	hi it's me PyroGuy
    */
draw_text(x,y,string_hash_to_newline(text[1]))
break;
case 6:
    draw_text(x,y,string_hash_to_newline(text[1]))
    draw_text(x,y+20,string_hash_to_newline(text[2]))
break;
case 7:
    draw_text(x,y,string_hash_to_newline("FNF"))
break;
case 8:
    draw_text(x,y,string_hash_to_newline("FNF"))
    draw_text(x,y+20,string_hash_to_newline("FREE"))
break;
case 9:
    draw_text(x,y,string_hash_to_newline("FNF"))
    draw_text(x,y+20,string_hash_to_newline("FREE"))
    draw_text(x,y+40,string_hash_to_newline("DOWNLOAD"))
break;
}
draw_set_halign(fa_left);

/* */
/*  */
