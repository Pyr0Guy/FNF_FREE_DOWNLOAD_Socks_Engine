function trace() //trace
{
    var _string = ""
    for (i = 0; i < argument_count; i++)
        _string += "[" + string(argument[i]) + "]"
    show_debug_message(_string )
    return;
}

function flip(argument0)
{
	return 1 - argument0;	
}

function scr_CoolTextTween(text)
{
	var random_char = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM123456789!@#$%^&*-+"
	var full_text = text;
	var len = string_length(full_text);
	if(cout < len)
	{
		for(var i = cout; i < len+1; i++)
			text = string_replace(text, string_char_at(text, i), string_char_at(random_char, irandom_range(0, string_length(random_char))));
			
	cout += len / 30;
	
	}
	return text;
}

function tween(time, duraction, from, to)
{
	return(lerp(from, to, flip(sqr(flip(time/duraction)))))
}