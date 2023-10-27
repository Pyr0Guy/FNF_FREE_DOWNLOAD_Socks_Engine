/// @description setting stage
function scr_songint(argument0) {
	if obj_stats.joshmode=false {
	    switch(argument0){
	    case "rainbow": //rainbow
	    //THIS SONG IS CUT SHORT BECAUSE IM AN IDIOT AND DIDNT ADD COMPATIBILITY FOR 32ND NOTES IM SO SORRY
	        //background
	        obj_backgroundp1.sprite_index=spr_sky
	        //positioning
	        obj_player.x=896
	        obj_player.y=648
	        obj_player.image_xscale=2
	        obj_player.image_yscale=2
	        obj_badguy.x=367
	        obj_badguy.y=669
	        obj_lady.x=620
	        obj_lady.y=300
	        obj_lady.image_yscale=2
	        obj_lady.image_xscale=2
	        //sprites
	        scr_charset(0,-3)
	        //song
	        song=mus_rainbowtylenol
	        //camera
	        obj_camera.xgo[DUDE]=800
	        obj_camera.ygo[DUDE]=400
	        obj_camera.big[DUDE]=800
	        obj_camera.xgo[BAD]=400
	        obj_camera.ygo[BAD]=400
	        obj_camera.big[BAD]=800
	        obj_camera.xgo[ALL]=650
	        obj_camera.ygo[ALL]=400
	        obj_camera.big[ALL]=800
	        obj_camera.x=700
	        obj_camera.y=500
	    break;
	    case -3: //break it down
	        song=mus_breakitdown
	        weeknd3=true
	        obj_song.weeknd3m=0.65
	        ntsc=true
	        ntscdist=2
	        //background
	        obj_backgroundp1.sprite_index=spr_bidbg
	        //characters
	        scr_charset(0,-6)
	        obj_badguy.x=120
	        obj_badguy.y=320
	        obj_badguy.everybeat=2
	        obj_player.everybeat=2
	        obj_lady.x=200
	        obj_lady.sprite_index=spr_georgetv
	        obj_lady.drawgirl=false
	        //camera
	        obj_camera.xgo[DUDE]=300//320
	        obj_camera.ygo[DUDE]=250//200
	        obj_camera.big[DUDE]=200
	        obj_camera.xgo[BAD]=123
	        obj_camera.ygo[BAD]=200
	        obj_camera.big[BAD]=200
	        obj_camera.xgo[ALL]=200
	        obj_camera.ygo[ALL]=200
	        obj_camera.big[ALL]=400
	    break;
	    case -2: //channelsurf & nermal
	        ntsc=true
	        ntscdist=2
	        //background
	        obj_backgroundp1.sprite_index=spr_screensurfingbg
	        obj_badguy.x=120
	        obj_badguy.y=320
	        scr_charset(0,-4)
	        instance_create(obj_badguy.x-65,obj_badguy.y+5,obj_nermal)
	        obj_nermal.depth=obj_badguy.depth-1
	        song=mus_channelsurf
	        obj_lady.x=200
	        obj_lady.y+=10
	        obj_lady.sprite_index=spr_cstv
	        obj_lady.drawgirl=false
	    break;
	    case -1: //spacecataz
	        ntsc=true
	        //background
	        obj_backgroundp1.sprite_index=spr_georgeback
	        instance_create(-100,114,obj_georgetrain)
	        //positioning
	        obj_player.x=320
	        obj_player.y=320
	        obj_badguy.x=64
	        obj_badguy.y=320
	        //sprites
	        scr_charset(0,-2)
	        //song
	        song=mus_frostbytep1
	        //camera
	        obj_camera.xgo[DUDE]=290
	        obj_camera.ygo[DUDE]=272
	        obj_camera.big[DUDE]=200
	        obj_camera.xgo[BAD]=96
	        obj_camera.ygo[BAD]=200
	        obj_camera.big[BAD]=200
	        obj_camera.xgo[ALL]=200
	        obj_camera.ygo[ALL]=200
	        obj_camera.big[ALL]=400
	        //kill lady (canon)
	        obj_lady.x=200
	        obj_lady.y+=10
	        obj_lady.sprite_index=spr_georgetv
	        obj_lady.drawgirl=false
	    break;
	    case -1.1:
	        //song
	        song=mus_frostbytep2
	    break;
	    case -9999999: //?????????
	        //background
	        obj_backgroundp1.sprite_index=spr_tobybg
	        //positioning
	        obj_player.x=320
	        obj_player.y=320
	        obj_badguy.x=64
	        obj_badguy.y=320
	        obj_lady.x=128
	        obj_lady.y=160
	        //sprites
	        scr_charset(0,-1)
	        obj_lady.sprite_index=spr_tutorialbackguys
	    break;
	    case 0: //tutorial
	        //background
	        obj_backgroundp1.sprite_index=spr_tutorialback
	        instance_destroy(obj_lady)
	        instance_create(130,189,obj_tutorialguys)
	        //positioning
	        obj_player.x=300
	        obj_player.y=320
	        obj_badguy.x=64
	        obj_badguy.y=320
	        //sprites
	        scr_charset(1,0)
	        //song
	        song=mus_tutorial
	        //camera
	        obj_camera.xgo[DUDE]=290
	        obj_camera.ygo[DUDE]=272
	        obj_camera.big[DUDE]=200
	        obj_camera.xgo[BAD]=96
	        obj_camera.ygo[BAD]=272
	        obj_camera.big[BAD]=200
	        obj_camera.xgo[ALL]=200
	        obj_camera.ygo[ALL]=200
	        obj_camera.big[ALL]=400
	    break;
	    case 1: //summer
	        //background
	        obj_backgroundp1.sprite_index=spr_houseback1
	        obj_backgroundp1.y=87
	        //positioning
	        obj_player.x=578
	        obj_player.y=368
	        obj_badguy.x=244
	        obj_badguy.y=368
			//obj_lady.drawgirl=false
	        obj_lady.x=420
	        obj_lady.y=343
	        //sprites
	        scr_charset(0,1)
	        //song
	        song=mus_w1s1
	        //camera
	        obj_camera.xgo[DUDE]=559
	        obj_camera.ygo[DUDE]=260
	        obj_camera.big[DUDE]=400
	        obj_camera.xgo[BAD]=260
	        obj_camera.ygo[BAD]=260
	        obj_camera.big[BAD]=400
	        obj_camera.xgo[ALL]=420
	        obj_camera.ygo[ALL]=260
	        obj_camera.big[ALL]=400
	        obj_camera.x=obj_camera.xgo[ALL]
	        obj_camera.y=obj_camera.ygo[ALL]
	    break;
	    case 2: //stars
	        //background
	        obj_backgroundp1.sprite_index=spr_houseback1
	        obj_backgroundp1.y=87
	        //positioning
	        obj_player.x=578
	        obj_player.y=368
	        obj_badguy.x=244
	        obj_badguy.y=368
	        obj_lady.x=420
	        obj_lady.y=343
	        //sprites
	        scr_charset(0,1)
	        //song
	        song=mus_w1s2
	        //camera
	        obj_camera.xgo[DUDE]=559
	        obj_camera.ygo[DUDE]=260
	        obj_camera.big[DUDE]=400
	        obj_camera.xgo[BAD]=260
	        obj_camera.ygo[BAD]=260
	        obj_camera.big[BAD]=400
	        obj_camera.xgo[ALL]=420
	        obj_camera.ygo[ALL]=260
	        obj_camera.big[ALL]=400
	        obj_camera.x=obj_camera.xgo[ALL]
	        obj_camera.y=obj_camera.ygo[ALL]
	    break;
	    case 3: //girl next door
	        song=mus_w2s1
	        obj_backgroundp1.sprite_index=spr_busback
	        obj_lady.x=313
	        obj_lady.y=262
	        obj_player.x=448
	        obj_player.y=306
	        obj_badguy.x=190
	        obj_badguy.y=303
	        scr_charset(0,2)
	        //camera
	        obj_camera.xgo[DUDE]=397
	        obj_camera.ygo[DUDE]=219
	        obj_camera.big[DUDE]=400
	        obj_camera.xgo[BAD]=213
	        obj_camera.ygo[BAD]=201
	        obj_camera.big[BAD]=400
	        obj_camera.xgo[ALL]=308
	        obj_camera.ygo[ALL]=197
	        obj_camera.big[ALL]=400
	        obj_camera.x=obj_camera.xgo[ALL]
	        obj_camera.y=obj_camera.ygo[ALL]
	        //I never made a script for setting lady's sprites oops
			var k;
	        for (k=0;k<8;k++) {
	            if k%2=0 or k=0 {
	                obj_lady.sprite[k]=spr_ladyidleleftw2
	            } else {
	                obj_lady.sprite[k]=spr_ladyidlerightw2
	            }
	        }
			
			trace(obj_lady.sprite)
	    break;
	    case 4: //gamejack
	        song=mus_w2s2
	        obj_backgroundp1.sprite_index=spr_busback
	        obj_lady.x=313
	        obj_lady.y=262
	        obj_lady.drawgirl=false
	        obj_player.x=420
	        obj_player.y=306
	        obj_badguy.x=170
	        obj_badguy.y=303
	        scr_charset(1,0)
	        //camera
	        obj_camera.xgo[DUDE]=397
	        obj_camera.ygo[DUDE]=219
	        obj_camera.big[DUDE]=400
	        obj_camera.xgo[BAD]=213
	        obj_camera.ygo[BAD]=201
	        obj_camera.big[BAD]=400
	        obj_camera.xgo[ALL]=308
	        obj_camera.ygo[ALL]=200//197
	        obj_camera.big[ALL]=400
	    break;
	    case 5: //twinkle
	        weeknd3=true
	        weeknd3m=0.5
	        obj_song.mmm=0.6
	        obj_song.mmmm=0.6
	        //background
	        obj_backgroundp1.image_alpha=0
	        //weeknd3=true
	        song=mus_w3s1
	        obj_badguy.x=185
	        obj_player.x=400
	        obj_lady.x=276
	        obj_lady.y=310
	        obj_lady.image_index=spr_speakeroff
	        scr_charset(0,4)
	        //still didn't make that script
	        var k;
	        for (k=0;k<8;k++) {
	            obj_lady.sprite[k]=spr_cdboyidlestill
	        }
	        //camera
	        if obj_stats.downscroll=true {
	            var pluscamera=35;
	        } else {
	            var pluscamera=0;
	        }
	        obj_camera.xgo[DUDE]=358
	        obj_camera.ygo[DUDE]=200+pluscamera
	        obj_camera.big[DUDE]=400
	        obj_camera.xgo[BAD]=210//176
	        obj_camera.ygo[BAD]=200+pluscamera
	        obj_camera.big[BAD]=400
	        obj_camera.xgo[ALL]=280
	        obj_camera.ygo[ALL]=200+pluscamera
	        obj_camera.big[ALL]=400
	        //set camera pos
	        obj_camera.x=280
	        obj_camera.y=200
	        //tv screen "id"s
	        var tv;
	        for(tv=0;tv<=15;tv++) {
	            screen[tv,0]="dark"
	            screen[tv,1]=0
	        }
	    break;
	    case 6: //"tsunami"
	        song=mus_w3s2
	        weeknd3=true
	        weeknd3m=0
	        obj_song.mm="nothing"
	        scr_charset(0,3) //5
	        obj_badguy.x=185
	        obj_player.x=425
	        with(instance_create(obj_player.x-70,obj_player.y-6,obj_nermal)) {
	            image_xscale=1.125 //I drew buddy too small so this is my admititly lazy fix for that :P
	            idle[0]=spr_buddyidlet
	            anim[0]=spr_buddyleftt
	            anim[1]=spr_buddydownt
	            anim[2]=spr_buddyupt
	            anim[3]=spr_buddyrightt
	            pause=spr_buddypauset
	        }
	        obj_lady.x=276
	        obj_lady.y=310
	        obj_lady.image_index=spr_speakeroff        
	        //camera
	        if obj_stats.downscroll=true {
	            var pluscamera=35;
	        } else {
	            var pluscamera=0;
	        }
	        obj_camera.xgo[DUDE]=385
	        obj_camera.ygo[DUDE]=225//+pluscamera
	        obj_camera.big[DUDE]=200
	        obj_camera.xgo[BAD]=180
	        obj_camera.ygo[BAD]=235//+pluscamera
	        obj_camera.big[BAD]=200
	        obj_camera.xgo[ALL]=280
	        obj_camera.ygo[ALL]=200+pluscamera
	        obj_camera.big[ALL]=400
	        //set camera pos
	        obj_camera.x=280
	        obj_camera.y=200
	        //tv screen "id"s
	        var tv;
	        for(tv=0;tv<=15;tv++) {
	            screen[tv,0]="colorlight"
	            screen[tv,1]=0
	        }
	    break;
	    }
	} else {
	        //background
	        obj_backgroundp1.sprite_index=spr_tutorialbackjm
	        obj_backgroundp1.image_speed=0.05
	        //positioning
	        obj_player.x=320
	        obj_player.y=320
	        obj_badguy.x=64
	        obj_badguy.y=320
	        //song
	        song=mus_tutorial
	        //sprites
	        obj_player.player=1
	        obj_badguy.baddie=0
	}
	
	//song
	if(audio_get_name(song) != "<undefined>")
		filename=(string(working_directory)+string("songs\\")+string(audio_get_name(song))+string(".swows"))
	else
		filename=(string(working_directory)+string("songs\\")+global.custom_audio_filenames+string(".swows"))
		
	//jsonname=(string(working_directory)+string("songs\\")+string(audio_get_name(song))+string(".json"))
	
	//Check if this song exist in CHART 900 format
	if(file_exists(filename))
	{
		//filename=(string(working_directory)+string("/songs/mus_rainbowtylenol.swows"))
		file = file_text_open_read(filename)
		//obj_song.song=asset_get_index((file_text_read_string(file)))
		obj_song.song = song
		file_text_readln(file)
		obj_song.bpm=file_text_read_real(file)
		file_text_readln(file)
		obj_song.notespeed=file_text_read_real(file)
		file_text_readln(file)
		obj_song.notes=file_text_read_real(file)
		file_text_readln(file)
		//load notes
		var b;
		var bb;
		var songlong = round(((audio_sound_length(obj_song.song) / 60)*obj_song.bpm*4));
		var dingus;
		var spacex; //how far apart are the notes: left and right
		var spacey; //how far apart are the notes: up and down 
		var apartb; //how far on the screen the badguys notes are
		var apartg; //how far on the screen your notes are
		//note spacing
		if notes>4 {
		    spacex=29
		    spacey=29
		    spaceyd=352
		    apartg=234
		    apartb=32
		} else {
		    spacex=44
		    spacey=48
		    spaceyd=352
		    apartg=234
		    apartb=32
		}
	
		var funnySpace;
		if(obj_stats.funnyNotePos)
			funnySpace = 165
		else
			funnySpace = 0
		//create notes
		for (bb=0; bb<obj_song.notes*2; bb++) {
		    for (b=0; b<songlong; b++) {
		        //event set
		        if b=0 {
		            var event=0
		        }
		        note[bb,b] = file_text_read_real(file)
		        file_text_readln(file)
		        //create notes
		        if obj_stats.downscroll=false {
		            if note[bb,b]>0 {
		                if bb<obj_song.notes {
		                    dingus = instance_create(apartb+(bb*spacex) - funnySpace,48+(b*(spacey*obj_song.notespeed)),obj_note)
		                    moron = instance_create(apartb+(bb*spacex) - funnySpace,48,obj_uinotes)
		                } else {
		                    dingus = instance_create(apartg+((bb-obj_song.notes)*spacex) + funnySpace,48+(b*(spacey*obj_song.notespeed)),obj_note)
		                    moron = instance_create(apartg+((bb-obj_song.notes)*spacex)  + funnySpace,48,obj_uinotes)
		                }
		                dingus.note = bb
		                dingus.type = note[bb,b]
		                moron.note = bb
		                //event notes
		                if note[bb,b]=10 {
		                    dingus.event=event
		                    event++
		                }
		            }
		        } else {
		            if note[bb,b]>0 {
		                if bb<obj_song.notes {
		                    dingus = instance_create(apartb+(bb*spacex)- funnySpace,spaceyd+(b*(-spacey*obj_song.notespeed)),obj_note)
		                    moron = instance_create(apartb+(bb*spacex) - funnySpace,spaceyd,obj_uinotes)
		                } else {
		                    dingus = instance_create(apartg+((bb-obj_song.notes)*spacex) + funnySpace,352+(b*(-spacey*obj_song.notespeed)),obj_note)
		                    moron = instance_create(apartg+((bb-obj_song.notes)*spacex)  + funnySpace,352,obj_uinotes)
		                }
		                dingus.note = bb
		                dingus.type = note[bb,b]
		                moron.note = bb
		                //event notes
		                if note[bb,b]=10 {
		                    dingus.event=event
		                    event++
		                }
		            }
		        }
		    }
		}
		file_text_close(file)
	}
	/*
	else
	{
//		#############################################################################################
//		# The problem with the converter is that the FD chart consists of solid text with notes,	#
//		# even if there are no notes in the text file, this is marked as 0.							#
//		#																							#
//		# And the FNF chart does not write when not, only the coordinates of the note are			#
//		# recorded in the chart, I tried to make the notes be arranged according to the coordinates,# 
//		# but after a certain amount of time the notes shifted farther and farther.					#
//		#																							#
//		# Actually I don't know what to do															#
//		#############################################################################################
		
		
		trace("CHANGE TO JSON FORMAT")
		
		var file = scr_jsonImport(jsonname, json_parse)
	
		obj_song.song = song
		obj_song.bpm = file[$ "song"][$ "bpm"]
		obj_song.notespeed=file[$ "song"][$ "speed"]
		obj_song.notes = 4
	
	
		//load notes
		var b;
		var bb;
		var songlong = round(((audio_sound_length(obj_song.song) / 60)*obj_song.bpm*4));
		var dingus;
		var spacex; //how far apart are the notes: left and right
		var spacey; //how far apart are the notes: up and down 
		var apartb; //how far on the screen the badguys notes are
		var apartg; //how far on the screen your notes are
		var del
		//note spacing
		if notes>4 {
		    spacex=29
		    spacey=29
		    spaceyd=352
		    apartg=234
		    apartb=32
		} else {
		    spacex=44
		    spacey=0.6
		    spaceyd=352
		    apartg=404
		    apartb=32
		}
	
		var funnySpace;
		if(obj_stats.funnyNotePos)
			funnySpace = 165
		else
			funnySpace = 0
		
		var noteLen, _notes 
		var section, section_steps, section_notes, section_note, section_must_hit;
		var time, note, leght
	
		_notes = file[$ "song"][$ "notes"] 
		noteLen = array_length(file[$ "song"][$ "notes"])
	
		for(var i=0; i < noteLen; i++)
		{
			section = _notes[i]	
			section_steps = section[$ "lengthInSteps"]
			section_notes = section[$ "sectionNotes"]
			section_must_hit = section[$ "mustHitSection"]
		
			var sus = array_length(section_notes)
			
			if(section_must_hit == true)
			{
				for(section_note=0; section_note < sus; section_note++)
				{
					time = section_notes[section_note][0]
					note = section_notes[section_note][1]
					leght= section_notes[section_note][2]	

					
					if(note < 4)
					{
						dingus = instance_create(apartg+((note-obj_song.notes)*spacex) + funnySpace,48+((time)*(spacey*obj_song.notespeed)),obj_note)
						
						dingus.note = note + 4
						
						if(leght > 0)
						{
							//dingus = instance_create(apartb+(note*spacex) - funnySpace,48+(round(time / 82)*(spacey*obj_song.notespeed)),obj_note)
							dingus.type = 8
							//dingus.note = note
						}
						
						moron = instance_create(apartg+((note-obj_song.notes)*spacex)  + funnySpace,48,obj_uinotes)
						moron.note = note + 4
					}
				
				}	
			}
			else
			{
				for(section_note=0; section_note < sus; section_note++)
				{
					time = section_notes[section_note][0]
					note = section_notes[section_note][1]
					leght= section_notes[section_note][2]

					if(note < 4)
					{
						dingus = instance_create(apartb+(note*spacex) - funnySpace,48+((time)*(spacey*obj_song.notespeed)),obj_note)
						trace(dingus.y)
						dingus.note = note
						dingus.type = 1
						
						if(leght > 0)
						{
							//dingus = instance_create(apartb+(note*spacex) - funnySpace,48+(round(time / 82)*(spacey*obj_song.notespeed)),obj_note)
							dingus.type = 8
							//dingus.note = note
						}
						
						moron = instance_create(apartb+(note*spacex) - funnySpace,48,obj_uinotes)
						moron.note = note
					}
				}	
			}
		
		}
	}
	*/
}
