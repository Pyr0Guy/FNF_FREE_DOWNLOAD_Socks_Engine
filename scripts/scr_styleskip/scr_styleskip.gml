/// @description scr_styleskip(string,start position);
/// @param string
/// @param start position
function scr_styleskip() {
	var endloop;
	var lookstring=argument[0];
	var lookat=argument[1];
	for(endloop=lookat;endloop<string_length(lookstring);endloop++) {
	    if string_char_at(lookstring,endloop)=">" {
	        return string_length(string_copy(lookstring,lookat,endloop-lookat+1));
	    }
	}



}
