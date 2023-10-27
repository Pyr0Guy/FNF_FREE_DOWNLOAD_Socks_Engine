function scr_loadoptions() {
	if file_exists("scoresandsets.txt") {
	    ini_open("scoresandsets.txt")
	    with(obj_stats) {
	        var cool;
	        downscroll=ini_read_real("settings","downscroll",false)
	        readable=ini_read_real("settings","notetype",false)
	        bind[0]=ini_read_real("settings","rightbind",37.000000)
	        bind[1]=ini_read_real("settings","upbind",40.000000)
	        bind[2]=ini_read_real("settings","downbind",38.000000)
	        bind[3]=ini_read_real("settings","leftbind",39.000000)
	        skin=ini_read_real("settings","skin",0)
			in_game_fps=ini_read_real("settings","fps", 60.000000)
	        volume=ini_read_real("settings","volume",1)
			fullscreen=ini_read_real("settings","fullscreen",0)
	        audio_master_gain(volume)
	        discord=ini_read_real("extra","discord",true)
	        playedw2=ini_read_real("extra","playedw2",false)
	        seenpopup=ini_read_real("extra","seenpopup",false)
	        bluedude=ini_read_real("extra","bluedude",false)
	        for(var supercool=0; supercool<array_length(cat); supercool++)
			{
				for(var cool=0; cool<cat[supercool]; cool++)
				{
		            songscore[supercool][cool]=ini_read_real("scores",string(supercool)+ "-" + string(cool)+string("_score"),0)
		            songmiss[supercool][cool]=ini_read_real("scores",string(supercool)+ "-" + string(cool)+string("_misses"),0)
					songaccuracy[supercool][cool]=ini_read_real("scores",string(supercool)+ "-" + string(cool)+string("_accuracy"), 0)
		            songlocked[supercool][cool]=ini_read_real("bonus",string(supercool)+ "-" + string(cool)+string("_locked"),false)
		            songnew[supercool][cool]=ini_read_real("bonus",string(supercool)+ "-" + string(cool)+string("_new"),false)
				}
	        }
	        //LOCKING BONUS SONGS BY DEFAULT
	        songlocked[0][1]=ini_read_real("bonus",("0-1_locked"),true)
	        songlocked[0][2]=ini_read_real("bonus",("0-2_locked"),true)
	        songlocked[0][3]=ini_read_real("bonus",("0-3_locked"),true)
			songlocked[0][4]=ini_read_real("bonus",("0-4_locked"),true)
	    }
	    ini_close();
	}



}
