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
		case -4: //cinemassacre
	    song=mus_cinemassacre
	    ntsc=true
	    //background
	    obj_backgroundp1.sprite_index=spr_danbg
	    //characters
	    scr_charset(0,-7)
	    scr_charpos(200,297,460,297,-1,-1)
	    //camera
	    with(obj_camera) {
	        xgo[playerc]=obj_player.x-50
	        xgo[badguyc]=obj_badguy.x+50
	        xgo[mainc]=324
	        x=xgo[mainc]
	    }
	    //pause music variables
	    pausesong=-1
	    pausevol=0
	    pausetime=0
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
	        song=mus_w3s1
	        weeknd3=true
	        weeknd3m=0.5
	        obj_song.mmm=0.6
	        obj_song.mmmm=0.6
	        //background
	        obj_backgroundp1.image_alpha=0
	        //characters
	        scr_charset(0,4)
	        scr_charpos(185,bby,400,pby,276,310)
	        obj_lady.image_index=spr_speakeroff
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
	        //camera
	        with(obj_camera) {
	            xgo[playerc]=358
	            ygo[playerc]=200+pluscamera
	            big[playerc]=400
	            xgo[badguyc]=210//176
	            ygo[badguyc]=200+pluscamera
	            big[badguyc]=400
	            xgo[mainc]=280
	            ygo[mainc]=200+pluscamera
	            big[mainc]=400
	            //set camera pos
	            x=280
	            y=200
	        }
	        //dude and buddy anime segment
	        dudeasurf=-1
	        buddyasurf=-1
	        //tv screen "id"s
	        var tv;
	        for(tv=0;tv<=15;tv++) {
	            screen[tv,0]="dark"
	            screen[tv,1]=surface_create(45,45)
	        }
	        //dingle
	        dingle=surface_create(45,45)
	    break;
	    case 6: //"tsunami"
	        song=mus_w3s2
			weeknd3=true
			weeknd3m=0
			obj_song.mm="nothing"
			//characters
			scr_charset(0,3) //5
			scr_charpos(185,bby,425,pby,276,310)
			with(obj_badguy) { cdboy=surface_create(200,200); }
			instance_create(obj_player.x-70,obj_player.y-6,obj_nermal)
			with(obj_nermal) {
			    image_xscale=1.125 //I drew buddy too small so this is my admititly lazy fix for that :P
			    idle[playerc]=spr_buddyidlet
			    anim[playerc]=spr_buddyleftt
			    anim[badguyc]=spr_buddydownt
			    anim[mainc]=spr_buddyupt
			    anim[3]=spr_buddyrightt
			    pause=spr_buddypauset
			}
			obj_lady.image_index=spr_speakeroff        
			//camera
			if obj_stats.downscroll=true {
			    var pluscamera=35;
			} else {
			    var pluscamera=0;
			}
			//camera
			with(obj_camera) {
			    xgo[playerc]=385
			    ygo[playerc]=225//+pluscamera
			    big[playerc]=200
			    xgo[badguyc]=180
			    ygo[badguyc]=235//+pluscamera
			    big[badguyc]=200
			    xgo[mainc]=280
			    ygo[mainc]=200+pluscamera
			    big[mainc]=400
			    //set camera pos
			    x=280
			    y=200
			}
			screen="colorlight"
			screend=surface_create(45,45)
			
	    break;
		case 7: //satellite
			song=mus_w4s1
			obj_song.event=3
			//background
			obj_backgroundp1.sprite_index=spr_gunkstage1
			//characters
			scr_charset(0,6)
			scr_charpos(340,306,570,301,451,292)
			obj_player.image_alpha=0
			obj_badguy.image_alpha=0
			obj_lady.image_alpha=0
			/*
			for (k=0;k<8;k++) {
			    if k%2=0 or k=0 {
			        obj_lady.sprite[k]=spr_ladycidleleft
			    } else {
			        obj_lady.sprite[k]=spr_ladycidleright
			    }
			}
			*/
			//camera
			with(obj_camera) {
			    xgo[playerc]=605 //placeholder
			    ygo[playerc]=240
			    big[playerc]=400
			    xgo[badguyc]=298 //placeholder
			    ygo[badguyc]=200
			    big[badguyc]=400
			    xgo[mainc]=451
			    ygo[mainc]=200
			    big[mainc]=400
			    x=xgo[place]
			    y=ygo[place]
			    image_xscale=big[place]
			}
			//scr_screenborder(40,0.5);
	    break;
	    case 8: //starfire
	        song=mus_w4s2
	        hideui=true
			offHud = true;
	        mmmmmmm=9999
	        //background
	        obj_backgroundp1.sprite_index=spr_gunkstage1
	        //surface variables
	        gunkscreen=-1
	        dudescreen=-1
	        gunkfreeze=-1
	        dudefreeze=-1
	        //characters
	        scr_charset(0,7)
	        scr_charpos(308,306,615,311,451,292)
			/*
	        //STILL HAVEN'T MADE THAT "SET LADY SPRITES" SCRIPT
	        var k;
	        for (k=0;k<8;k++) {
	            obj_lady.sprite[k]=spr_ladysad
	        }
			*/
	        //camera
	        with(obj_camera) {
	            xgo[playerc]=605
	            ygo[playerc]=240
	            big[playerc]=400
	            xgo[badguyc]=obj_badguy.x
	            ygo[badguyc]=200
	            big[badguyc]=400
	            xgo[mainc]=451
	            ygo[mainc]=200
	            big[mainc]=400
	            x=xgo[place]
	            y=ygo[place]
	            image_xscale=big[place]
	        }
	        //scr_screenborder(60,0.85);
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
		var b; //down
	var bb; //across
	var songlong=round(((audio_sound_length(obj_song.song)/60)*obj_song.bpm*4));
	var dosc=((obj_stats.downscroll)*-2)+1 //vertical multiplier
	var nosp=obj_song.notespeed //notespeed with no identifier
	//note starting position
	if dosc!=-1 {
	    starty=48
	} else {
	    starty=352
	}
	obj_song.y=starty
	//load notes
	for (bb=0;bb<8;bb++) {
	    //x position
	    if bb<4 {
	        var myx=32+(44*bb)
	    } else {
	        var myx=234+(44*(bb-4))
	    }
	    //ui notes
	    var sucker=instance_create(myx,starty,obj_uinotes);
	    sucker.note=bb;
	    //note... notes
	    for (b=0; b<songlong; b++) {
	        if b=0 {
	            var event=0
	        }
	        note[bb,b]=file_text_read_real(file)
	        file_text_readln(file)
	        if note[bb,b]!=0 {
	            //create note
	            var dingus=instance_create(myx,starty+(b*48*nosp*dosc),obj_note); 
	            dingus.note=bb
	            dingus.type=note[bb,b]
	            //position holding
	            dingus.xx=dingus.x
	            dingus.yy=dingus.y
	            //solid checking
	            if note[bb,b]=4 or note[bb,b]=5 or note[bb,b]=6 or note[bb,b]=7 or note[bb,b]=10 or note[bb,b]=11 {
	                dingus.solid=false
	            } else {
	                dingus.solid=true
	            }
	            //event note
	            if note[bb,b]=10 {
	                dingus.event=event
	                event++
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
