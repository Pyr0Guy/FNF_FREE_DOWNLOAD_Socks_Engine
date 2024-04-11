//I DONT HAVE GAMEPAD SO IDK IF THIS WORK
function scr_multiCheckButtonPressed(){
	
	for (var i = 0; i < argument_count; i++)
	{
        if(keyboard_check_pressed(argument[i])) || gamepad_button_check_pressed(0,argument[argument_count-1]) 
			return true
		continue
	}
	
}