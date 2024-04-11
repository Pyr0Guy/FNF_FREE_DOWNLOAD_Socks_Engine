function scr_songInfo(songname, what_i_need = noone)
{	
	var _icon = noone, _index= noone
	
	switch(songname)
	{
		case "misplaced":
			_icon = 0;
			_index = -99999;
		break;
		case "cinemassacre":
			_icon = 1;
			_index = -4;
		break;
		case "break it down triangle man":
			_icon = 2;
			_index = -3;
		break;
		case "channelsurfing & nermal":
			_icon = 3;
			_index = -2;
		break;
		case "infographic":
			_icon = 4;
			_index = -1;
		break;
		case "i, robot":
			_icon = 5;
			_index = 0;
		break;
		case "summer":
			_icon = 6;
			_index = 1;
		break;
		case "stars":
			_icon = 6;
			_index = 2;
		break;
		case "girl next door": //antidisestablishmentarianism
			_icon = 7;
			_index = 3;
		break;
		case "gamejack":
		//case "gameplay": //Funny that now 'gameplay' song actualy exists --PyroGuy 21.10.2023
		//Nevermind Tyler Delete this name --PyroGuy 25.12.2023
			_icon = 8;
			_index = 4;
		break;
		case "twinkle":
			_icon = 9;
			_index = 5;
		break;
		case "tsunami":
			_icon = 9;
			_index = 6;
		break;
		case "satellite":
			_icon = 10;
			_index = 7;
		break;
		case "starfire":
			_icon = 10;
			_index = 8;
		break;
	}
	
	switch(what_i_need)
	{
		case 0:
			return _icon;
		break;
		case 1:
			return _index;
		break;
		default:
			return [_icon, _index];
		break;
	}
}