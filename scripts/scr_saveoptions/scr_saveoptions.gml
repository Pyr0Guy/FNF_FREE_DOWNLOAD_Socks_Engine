function scr_saveoptions() {
	if file_exists("scoresandsets.txt") {
	    file_delete("scoresandsets.txt")
	}
	ini_open("scoresandsets.txt")
	    with(obj_stats) {
	        var cool;
	        ini_write_real("settings","downscroll",downscroll)
	        ini_write_real("settings","notetype",readable)
	        ini_write_real("settings","rightbind",bind[0])
	        ini_write_real("settings","upbind",bind[1])
	        ini_write_real("settings","downbind",bind[2])
	        ini_write_real("settings","leftbind",bind[3])
	        ini_write_real("settings","skin",skin)
			ini_write_real("settings","fps",in_game_fps)
	        ini_write_real("settings","volume",volume)
			ini_write_real("settings","fullscreen",fullscreen)
	        ini_write_real("extra","discord",discord)
	        ini_write_real("extra","playedw2",playedw2)
	        ini_write_real("extra","seenpopup",seenpopup)
	        ini_write_real("extra","bluedude",bluedude)
			
			ini_write_real("songs","how_many_song_do_i_save",array_length(what_i_need_to_save))
			for(var coolName = 0; coolName < array_length(what_i_need_to_save); coolName++)
			{
				ini_write_string("songs","what_i_need_to_save-" + string(coolName) ,what_i_need_to_save[coolName])
			}
			
			for(var coolName = 0; coolName < array_length(what_i_need_to_save); coolName++)
			{
				var _sName_ = what_i_need_to_save[coolName];
				var _StrSName_ = string(_sName_);
				trace(_StrSName_)
				ini_write_real("scores", _StrSName_ + "-score"   , songscore[? _sName_])
				ini_write_real("scores", _StrSName_ + "-misses"  , songmiss[? _sName_])
				ini_write_real("scores", _StrSName_ + "-accuracy", songaccuracy[? _sName_])
				ini_write_real("bonus",  _StrSName_ + "-locked"  , songlocked[? _sName_])
				ini_write_real("bonus",  _StrSName_ + "-new"     , songnew[? _sName_])
			}
			/*
	        for(var supercool=0; supercool<array_length(cat); supercool++)
			{
				for(var cool=0; cool<cat[supercool]; cool++)
				{
		            ini_write_real("scores",string(supercool)+ "-" + string(cool)+string("_score"),songscore[supercool][cool])
		            ini_write_real("scores",string(supercool)+ "-" + string(cool)+string("_misses"),songmiss[supercool][cool])
					ini_write_real("scores",string(supercool)+ "-" + string(cool)+string("_accuracy"),songaccuracy[supercool][cool])
		            ini_write_real("bonus",string(supercool)+ "-" + string(cool)+string("_locked"),songlocked[supercool][cool])
		            ini_write_real("bonus",string(supercool)+ "-" + string(cool)+string("_new"),songnew[supercool][cool])
				}
			}
			*/
	    }
	ini_close();



}
