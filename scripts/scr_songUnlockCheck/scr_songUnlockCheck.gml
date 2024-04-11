
function scr_songUnlockCheck()
{
	var output = false
	switch(obj_stats.weekndgoing)
	{
		case 1:
			output = obj_stats.songlocked[? "infographic"];
		break;
		case 2:
			output = obj_stats.songlocked[? "channelsurfing & nermal"];
		break;
		case 3:
			output = obj_stats.songlocked[? "break it down triangle man"];
		break;
		
	}
	
	return output;
}