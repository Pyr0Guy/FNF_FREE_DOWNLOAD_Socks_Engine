
function scr_charpos(argument0, argument1, argument2, argument3, argument4, argument5) {
	with(obj_badguy) {
	    x=argument0
	    y=argument1
	}
	with(obj_player) {
	    x=argument2
	    y=argument3
	}

	if argument4!=-1 {
	    with(obj_lady) {
	        x=argument4
	        y=argument5
	    }
	} else {
	    instance_destroy(obj_lady)
	    //kill lady (canon)
	}
}

