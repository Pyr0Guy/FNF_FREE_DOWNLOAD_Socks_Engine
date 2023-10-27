scr_updateTextInput()

if(keyboard_check_pressed(vk_escape))
{
	scr_initTextInput()
	loading = false
}

if(proggres >= 101)
	room_goto_next()