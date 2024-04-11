if gamerestart == true
{
	audio_stop_all();
	game_restart();

	action_message("boo!");
}
else
{
	instance_destroy();
}
