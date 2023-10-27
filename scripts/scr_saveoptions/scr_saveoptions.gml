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
	    }
	ini_close();



}
