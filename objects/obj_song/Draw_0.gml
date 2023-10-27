/// @description stagehand
//WELCOME! to my secret land of switch statements!
//ever wonder why your game isn't running great? it's probably this!

//Get Song script
var _script = asset_get_index("scr_song" + string_replace(string(obj_stats.weekgoing), "-", "_"))
//Launch it
if(script_exists(_script))
	script_execute(_script)

/* */
/*  */
