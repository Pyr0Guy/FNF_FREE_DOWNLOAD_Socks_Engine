/// @description scr_nextframe(image_index)
/// @param image_index
function scr_nextframe(argument0) {
	with(obj_cutscene) {
	    image_draw=argument0
	}
}

/// @description scr_nextbox(advance the textbox)
/// @param advance the textbox
function scr_nextbox() {
	text+=1
	i=0
	update=true
}

function scr_textcheck() {
	return instance_exists(obj_cutscene) && pause=false && update=true;
}
