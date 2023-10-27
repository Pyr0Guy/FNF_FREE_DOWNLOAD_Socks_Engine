//Rainbow
function scr_songrainbow(){
		var blooby = obj_badguy.x
        var bloby = obj_badguy.y
        obj_badguy.x=blooby+(sin(current_time/200))
        obj_badguy.y=bloby+(sin(current_time/100)*-1)
        var sop = obj_camera.x
        var slop = obj_camera.y
        obj_camera.x=sop+(sin(current_time/200))*2
        obj_camera.y=slop+(sin(current_time/100)*-1)*2
}