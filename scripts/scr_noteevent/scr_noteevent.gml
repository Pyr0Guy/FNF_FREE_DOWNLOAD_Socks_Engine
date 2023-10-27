function scr_noteevent(argument0, argument1) {
	var song = argument0
	var event = argument1
	switch(song) {
	    case mus_rainbowtylenol:
	        instance_create(0,0,obj_goldenfreddy)
	        obj_goldenfreddy.gamerestart=true
	    break;
	    case mus_breakitdown:
	        switch(event) {
	            case 0:
	                with(obj_camera) {
	                    x=xgo[2]
	                    y=ygo[2]
	                }
	                obj_song.m++
	            break;
	            case 1:
	                obj_song.m++
	            break;
	            case 2:
	                obj_song.m++
	            break;
	            case 3:
	                obj_song.m++
	            break;
	            case 4:
	                obj_song.m++
	            break;
	            case 5:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_song.m=0
	                obj_song.mm=-146
	                obj_song.mmm=150*2
	                obj_song.mmmm=-61
	                obj_song.mmmmm=80*2
	                obj_song.event++
	                //camera
	                /*
	                with(obj_camera) {
	                    big[1]=90
	                    place=1
	                    x=xgo[1]
	                    y=ygo[1]
	                    image_xscale=big[1]
	                }
	                */
	            break;
	            case 6: //start
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_fadein.time=0.025
	                obj_song.m=0
	                obj_song.mm=20
	                obj_song.mmm=0
	                obj_song.mmmm=0
	                obj_song.mmmmm=0
	                obj_song.event++
	                //obj_badguy.image_alpha=1
	                //obj_player.image_alpha=1
	                //obj_lady.image_alpha=1
	                //obj_camera.big[1]=200
	            break;
	            case 7: //camera jump
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_fadein.time=0.0125
	                obj_fadein.alpha=0.25
	                with(obj_camera) {
	                    place=2
	                    x=xgo[2]
	                    y=ygo[2]
	                    image_xscale=big[2]
	                }
	                obj_song.mmmmmmm="everybeat" //ok I really should make a object for camera bouncing but whatever
	            break;
	            case 8: //boodooboopto
	                obj_song.event++
	                obj_song.mmmmmmm="nothing"
					obj_player.sprite_index = obj_player.idle[0]
					obj_player.press = false
	            break;
	            case 9: //sad
	                obj_song.mmm=1
	            break;
	            case 10: //more sad
	                obj_song.mmmmm=1
	            break;
	            case 11: //cool sprites
	                scr_charset(5,-6);
	                obj_song.event++
	                obj_song.mm=0
	                obj_song.mmm=0
	                obj_song.mmmm=0
	                obj_song.mmmmm=0
	                obj_song.mmmmmmm="SWAG!"
	                obj_player.idleon=obj_badguy.idleon
					obj_player.sprite_index = obj_player.idle[0]
					obj_player.press = false
	                obj_player.x=obj_camera.x+60
	                obj_badguy.x=obj_camera.x-60
	                //flash
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                //camera stuff
	                with(obj_camera) {
	                    xgo[0]=320
	                    ygo[0]=200
	                    big[0]=400
	                    big[1]=400
	                    big[2]=350
	                    ygo[2]+=30
	                }
	            break;
	            case 12: //"yo whats up!"
	                with(obj_camera) {
	                    place=0
	                    ease=5
	                    xgo[0]+=160
	                    big[2]=400
	                    ygo[2]-=30
	                }
	                obj_song.mmmmmmm="nothing"
	            break;
	            case 13:
	                obj_song.event++
	                with(obj_camera) {
	                    place=2
	                    ease=40
	                    xgo[0]-=180
	                    obj_camera.x=xgo[2]
	                }
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	            case 14: //back to business
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_song.event++
	                obj_song.mmmmmmm="everybeat"
	                obj_lady.x=obj_camera.xgo[2]
	                obj_lady.image_alpha=1
	                obj_lady.sprite_index=spr_dorktv
	                obj_player.x=obj_lady.x+130
	                obj_player.y=obj_lady.y+30
	                obj_badguy.x=obj_lady.x-130
	                obj_badguy.y=obj_lady.y+30
	                obj_badguy.image_alpha=1
	                obj_player.image_alpha=1
	            break;
	        }
	    break;
	    case mus_channelsurf:
	        switch(event) {
	            case 0:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.time=0.035
	            break;
	            case 2:
	                obj_nermal.sprite_index=obj_nermal.idle[0]
	                obj_nermal.image_index=0
	                obj_player.sprite_index=obj_player.idle[0]
	                obj_player.image_index=0
	            break;
	            case 3:
	                //values
	                /*
	                with(obj_song) {
	                    r=251
	                    g=111
	                    b=177
	                    alph=1
	                    m=0
	                    mm=240
	                    mmm=41
	                    mmmm=89
	                    mmmmm=0.55
	                }
	                */
	                with(obj_song) {
	                    m=0
	                    mm=0
	                    mmm=0
	                    mmmm=0.51
	                }
	            break;
	            case 4: //nermal walking left && dude bomb notes
	                obj_nermal.mode="walkl"
	            break;
	            //5 nermal bomb nots
	            case 6: //nermal ugh
	                obj_nermal.hit[0]=true
	                obj_nermal.sprite_index=spr_nermalugh
	            break;
	            case 7: //nermal walk away
	                obj_nermal.mode="walkr"
	            break;
	            case 8: //nermal jumpscare
	                instance_create(200,200,obj_nermaljump)
	            break;
	            //10 dude bomb notes
	            //11 nermal bomb notes
	            case 12:
	                obj_song.mmmmmm=-1
	                obj_song.mmmmm=-140
	                obj_song.mmmmmmm=-140
	                obj_badguy.idle[0]=spr_slickayy
	            break;
	            case 13:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                scr_charset(3,-4.1)
	                obj_player.y=350
	                obj_badguy.y=350
	                obj_badguy.x=88
	                obj_camera.image_xscale-=20
					obj_player.sprite_index = obj_player.idle[0]
					obj_player.press = false
	                with(obj_nermal) {
	                        idle[0]=spr_nermalbidle
	                        anim[0]=spr_nermalbleft
	                        anim[1]=spr_nermalbdown
	                        anim[2]=spr_nermalbup
	                        anim[3]=spr_nermalbright
	                        anim[8]=spr_nermalbleft
	                        anim[9]=spr_nermalbdown
	                        anim[10]=spr_nermalbup
	                        anim[11]=spr_nermalbright
	                }
	            break;
	            case 14:
	                obj_song.mmmmm=0
	            break;
	            case 15:
	                obj_nermal.idle[0]=spr_nermalbsmug
	                obj_nermal.sprite_index=obj_nermal.idle[0]
	                obj_song.mmmmm=-140
	            break;
	            case 17:
	                obj_badguy.x=120
	                obj_badguy.y=320
	                obj_player.x=320
	                obj_player.y=320
	                scr_charset(0,-4)
					obj_player.sprite_index = obj_player.idle[0]
					obj_player.press = false
	                instance_destroy(obj_nermal);
	                instance_create(obj_badguy.x-65,obj_badguy.y+5,obj_nermal)
	                obj_song.mmmmm=0
	                obj_song.mmmmmmm=0
	            break;
	            case 24:
	                instance_create(0,0,obj_fadeout)
	                obj_fadeout.roomable=false
	                obj_fadeout.time=0.025
	                obj_fadeout.color=c_white
	            break;
	            case 25:
	                instance_destroy(obj_fadeout)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_song.mmmmmm=-2
	            break;
	        }
	        obj_song.event=event+1
	    break;
	    case mus_frostbytep1:
	        switch(event) {
	            case 2:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.time=0.02
	            break;
	            case 3:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.time=0.02
	            break;
	            case 5:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                mmmmmm=1
	            break;
	            case 9:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_song.m=0
	                mmmmmm=0
	            break;
	            case 13:
	                //instance_destroy(obj_midi_clock);
	                with(obj_song) {
						lol = window_get_x();
						lol2 = window_get_y();
	                    instance_destroy(obj_uinotes) //so theres no duplicates
	                    instance_destroy(obj_note)
	                    audio_stop_sound(songplaying)
	                    songpos=0
	                    if obj_stats.downscroll=false { //reset position
	                        //y=16
	                        y=48
	                    } else {
	                        y=352
	                    }
	                    scr_songint(-1.1); //load part 2
	                    obj_badguy.everybeat=1
	                    songplaying=audio_play_sound(mus_frostbytep2,9999,false) //lpay new song
	                }
	                //camera reset
	                with(obj_camera) {
	                    place=2
	                    x=xgo[place]
	                    y=ygo[place]
	                    ygo[1]=240
	                    image_xscale=big[place]
	                }
	                obj_song.event=0
	            break;
	        }
	        if event!=13 {
	            obj_song.event=event+1
	        }
	    break;
	    case mus_frostbytep2:
	        switch event {
	            case 1:
	                //bpm
	                instance_destroy(obj_midi_clock)
	                instance_create(0,0,obj_midi_clock) //reset beat clock
	                obj_midi_clock.bpm=obj_song.bpm
	                //set fump's notes to fump notes
	                obj_song.baddieicon=spr_fump
	                with(obj_uinotes) {
	                    if note<4 {
	                        sprite=spr_uinotefump
	                    }
	                }
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	            case 2:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	            case 3:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	            case 4:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	        }
	        obj_song.event=event+1 //dont ask why this is different then all the other ones lol
	    break;
	    case mus_w1s1:
	        switch(event) {
	            case 0:
	                instance_create(0,0,obj_fadeout)
	                obj_fadeout.color=c_white
	                obj_fadeout.roomable=false
	                obj_fadeout.time=0.02
	            break;
	            case 1:
	                instance_destroy(obj_fadeout)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	            case 2:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	        }
	        obj_song.event=event+1
	    break;
	    case mus_w1s2:
	        switch(event) {
	            case 2:
	                instance_destroy(obj_lady)
	                instance_destroy(obj_backgroundp1)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	            case 4:
	                obj_camera.x=obj_camera.xgo[2]
	                obj_camera.y=obj_camera.ygo[2]
	                instance_create(0,87,obj_backgroundp1)
	                obj_backgroundp1.sprite_index=spr_houseback1
	                instance_create(420,343,obj_lady)
	                obj_badguy.x+=60
	                obj_player.x-=60
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	            case 5:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	            case 8:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_badguy.x+=20
	                obj_player.x-=40
	                obj_lady.drawgirl=false
	                instance_create(obj_player.x+45,obj_player.y+5,obj_playermimic)
	            break;
	            case 9:
	                obj_badguy.x-=80
	                obj_player.x+=120
	                obj_lady.drawgirl=true
	                instance_destroy(obj_playermimic)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	        }
	        obj_song.event=event+1
	    break;
	    case mus_w2s1: //girl next door
	        switch(event) {
	            case 1: //dance
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                with(obj_badguy) {
	                    idle[0]=spr_cyandanceleftup
	                    idle[1]=spr_cyandanceleftdown
	                    idle[2]=spr_cyandancerightup
	                    idle[3]=spr_cyandancerightdown
	                    numidle=3
	                }
	                with(obj_player) {
	                    idle[0]=spr_dudedanceup
	                    idle[1]=spr_dudedancedown
	                    press=false
	                    numidle=1
	                }
	                instance_create(obj_player.x-50,obj_player.y-10,obj_playermimic)
	                with(obj_playermimic) {
	                    idle[0]=spr_ladydanceup
	                    idle[1]=spr_ladydancedown
	                    pause=spr_ladydancepause
	                }
	                obj_lady.drawgirl=false
	            break;
	            case 2: //dance end
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                instance_destroy(obj_playermimic)
	                obj_lady.drawgirl=true
	                with(obj_player) {
	                    idle[0]=spr_dudeidle
	                    numidle=0
	                    idleon=0
	                }
	                with(obj_badguy) {
	                    idle[0]=spr_cyanidle
	                    numidle=0
	                    idleon=0
	                }
	            break;
	            case 3: //goin' dark
	                obj_badguy.everybeat=2
	            break;
	            case 6: 
	                instance_create(0,0,obj_fadeout)
	                obj_fadeout.roomable=false
	                obj_fadeout.time=0.022
	                obj_fadeout.color=c_white
	                //resetting idle
	                obj_badguy.idleon=0
	                obj_badguy.numidle=0
	                obj_badguy.everybeat=1
					obj_stats.PlayAyySound = false;
	            break;
	            case 7: //snoring
	                instance_destroy(obj_fadeout)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_lady.drawgirl=true
	                obj_lady.image_alpha=1
	                obj_badguy.ayy=spr_cyansnoreup
	            break;
	            case 8:
	                obj_badguy.ayy=spr_cyansnoredown
	                obj_lady.drawgirl=true
	                obj_lady.image_alpha=1
	                with(obj_camera) {
	                    x=xgo[1]
	                    y=ygo[1]
	                    big[1]=200
	                    image_xscale=big[1]
	                }
	            break;
	            case 9:
	                obj_badguy.ayy=spr_cyansnoreup
	            break;
	            case 10:
	                obj_badguy.ayy=spr_cyansnoredown
	            break;
	            case 12:
					obj_stats.PlayAyySound = true
	                obj_badguy.ayy=spr_cyanayy
	                with(obj_camera) {
	                    xgo[1]=213
	                    ygo[1]=201
	                    big[1]=400
	                }
	            break;
	            case 14:
	                obj_stats.gndscore=obj_song.coolscore
	            break;
	        }
	        obj_song.event=event+1
	    break;
	    case mus_w2s2: //gamejack
	        switch(event) {
	            case 0:
	                obj_lady.sprite_index=spr_TVidle
	                obj_badguy.idle[0]=spr_cdpun
	                obj_badguy.pause=spr_cdpunpause
	            break;
	            case 6:
	                instance_create(0,0,obj_fadeout)
	                obj_fadeout.color=c_white
	                obj_fadeout.time=0.02
	                obj_fadeout.roomable=false
	            break;
	            case 7:
	                scr_charset(2,3)
	                obj_song.m=0
	                obj_lady.sprite_index=spr_speaker
	                instance_destroy(obj_fadeout)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_player.image_alpha=1
	                obj_lady.image_alpha=1
	            break;
	            case 10:
	                //audio_play_sound(snd_cdboynice,9999,false)
	            break;
	            case 11:
	                //audio_play_sound(snd_cdboygood,9999,false)
	            break;
	            case 12:
	                //audio_play_sound(snd_cdboyvgood,9999,false)
	            break;
	            case 14:
	                obj_badguy.pause=spr_cdboypausealt
	                obj_lady.sprite_index=spr_speakeroff
	            break;
	            case 15:
	                //audio_play_sound(snd_cdow,9999,false)
	                var ow1 = instance_create(obj_badguy.x-30,obj_badguy.y-130,obj_cdboyow);
	            break;
	            case 16:
	                //audio_play_sound(snd_cdpain,9999,false)
	                var ow2 = instance_create(obj_badguy.x+60,obj_badguy.y-80,obj_cdboyow);
	                ow2.image_index=1
	            break;
	            case 17:
	                //audio_play_sound(snd_cdowch,9999,false)
	                var ow3 = instance_create(obj_badguy.x-30,obj_badguy.y-80,obj_cdboyow);
	                ow3.image_index=2
	            break;
	            case 18:
	                //audio_play_sound(snd_cdbad,9999,false)
	                var ow4 = instance_create(obj_badguy.x+65,obj_badguy.y-130,obj_cdboyow);
	                ow4.image_index=3
	            break;
	            case 21:
	                obj_badguy.ayy=spr_cdboyexplode
	            break;
	            case 22:
	                audio_play_sound(snd_explode,9999,false)
	            break;
	            default:
	            break;
	        }
	        obj_song.event=event+1
	    break;
	    case mus_w3s1: //twinkle
	        switch(event) {
	            case 0:
	                obj_song.screen[5,0]="lightup"
	                obj_song.screen[6,0]="lightup"
	            break;
	            case 1:
	                obj_song.screen[7,0]="lightup"
	                obj_song.screen[8,0]="lightup"
	            break;
	            case 2:
	                obj_song.screen[9,0]="lightup"
	                obj_song.screen[10,0]="lightup"
	            break;
	            case 3:
	                obj_song.screen[11,0]="lightup"
	                obj_song.screen[14,0]="lightup"
	            break;
	            case 4:
	                obj_song.screen[4,0]="lightup"
	            break;
	            case 5:
	                obj_song.screen[3,0]="lightup"
	            break;
	            case 6:
	                obj_song.screen[2,0]="lightup"
	            break;
	            case 7:
	                obj_song.screen[1,0]="lightup"
	            break;
	            case 8:
	                obj_song.screen[0,0]="lightup"
	            break;
	            case 9:
	                obj_song.screen[13,0]="lightup"
	                obj_song.screen[12,0]="lightup"
	            break;
	            case 11:
	                var woah;
	                var k;
	                //change tvs
	                for(woah=0;woah<=15;woah++) {
	                    obj_song.screen[woah,0]=woah
	                }
	                //make cd boy dance!!!
	                for (k=0;k<8;k++) {
	                    if k%2=0 or k=0 {
	                        obj_lady.sprite[k]=spr_cdboyidleleft
	                    } else {
	                        obj_lady.sprite[k]=spr_cdboyidleright
	                    }
	                }
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	            case 12:
	                var g;
	                var g;
	                //change tvs
	                for(g=0;g<=15;g++) {
	                    obj_song.screen[g,0]="gogo"
	                }
	            break;
	            case 13:
	                var woah;
	                var k;
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_song.mmm=0.6
	                obj_song.mmmm=0.6
	                //change tvs
	                for(woah=0;woah<=15;woah++) {
	                    obj_song.screen[woah,0]="dark"
	                }
	            break;
	            case 24:
	                var r;
	                //change tvs
	                for(r=0;r<=15;r++) {
	                    obj_song.screen[r,0]="ray"
	                }
	            break;
	            case 25:
	                var woah;
	                var k;
	                //change tvs
	                for(woah=0;woah<=15;woah++) {
	                    obj_song.screen[woah,0]=woah
	                }
	            break;
	            case 26:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	            case 30: //up and down
	                scr_charset(4,4)
	                //obj_badguy.framerate=0.25
	                //obj_player.framerate=0.25
	                obj_badguy.anim[1]=spr_buddyholdanime
	                obj_badguy.anim[2]=spr_buddygrabanime
	                obj_badguy.pause=spr_buddypauseanime
	            break;
	            case 32:
	                //obj_badguy.framerate=0.5
	                //obj_player.framerate=0.5
	                scr_charset(0,4)
					obj_player.sprite_index = obj_player.idle[0]
					obj_player.press = false
	            break;
	            case 34:
	                if obj_song.skill>65 {
	                    obj_stats.suckass=true
	                } else {
	                    obj_stats.suckass=false
	                }
	            break;
	        }
	        obj_song.event=event+1
	        obj_song.m=0
	        obj_song.mmm-=0.06
	    break;
	    case mus_w3s2: //tsunami
	        /*
	        obj_camera.xgo[0]=385
	        obj_camera.ygo[0]=215+pluscamera
	        obj_camera.big[0]=200
        
	        obj_camera.xgo[0]=375
	        obj_camera.ygo[0]=200+pluscamera
	        obj_camera.big[0]=200
        
	        obj_camera.xgo[1]=170//176
	        obj_camera.ygo[1]=200+pluscamera
	        obj_camera.big[1]=200
        
	        obj_camera.xgo[2]=280
	        obj_camera.ygo[2]=200+pluscamera
	        obj_camera.big[2]=400
	        */
	        var dudecx=390//385
	        var dudecy=225//215
	        var buddycx=375
	        var buddycy=200
	        switch(event) {
	            case 0: //turn purple
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	            break;
	            case 1: //fade out from purple
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	            break;
	            case 2: //go to uh.... cd-boy's color? green???
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	            break;
	            case 3: //dude and buddy's voices are so angelic the tvs start glowing
	                //screens
	                var tv;
	                for(tv=0;tv<=15;tv++) {
	                    obj_song.screen[tv,0]="white"
	                }
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	            break;
	            case 4: //cd boy goes flubbin crazy
	                //screens
	                var tv;
	                for(tv=0;tv<=15;tv++) {
	                    obj_song.screen[tv,0]="boom-boom"
	                }
	                obj_song.mm="hes doing something"
	                obj_song.mmm=1
	                obj_song.weeknd3m=0.75
	                scr_charset(0,5)
					obj_badguy.sprite_index = obj_badguy.idle[0]
					obj_badguy.press = false
	                //camera snap
	                with(obj_camera) {
	                    place=1
	                    x=xgo[1]
	                    y=ygo[1]
	                    image_xscale=big[1]-20
	                }
	                instance_destroy(obj_fadeout)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	            break;
	            case 5:
	                obj_song.mm="intense"
	                //screens
	                var tv;
	                for(tv=0;tv<=15;tv++) {
	                    obj_song.screen[tv,0]="bo-bo-bo-bo"
	                }
	            break;
	            case 6:
	                with(obj_camera) {
	                    place=1
	                    x=xgo[1]
	                    y=ygo[1]
	                }
	            break;
	            case 7:
	                with(obj_camera) {
	                    place=1
	                    x=xgo[1]
	                    y=ygo[1]
	                    image_xscale=big[1]
	                }
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	                //color tv
	                var tv;
	                for(tv=0;tv<=15;tv++) {
	                    obj_song.screen[tv,0]="colorlight"
	                    obj_song.screen[tv,1]=0
	                }
	            break;
	            case 8: //fade out
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	                //screen fade
	                instance_create(0,0,obj_fadeout)
	                obj_fadeout.time=0.025
	                obj_fadeout.roomable=false
	                obj_fadeout.depth=999999
	            break;
	            case 9:
	                scr_charset(0,5.1)
					obj_badguy.sprite_index = obj_badguy.idle[0]
					obj_badguy.press = false
	                obj_song.event++
	                obj_song.mm="nothing"
	                with(obj_camera) {
	                    place=2
	                    x=xgo[2]
	                    y=ygo[2]
	                    image_xscale=big[2]
	                }
	                //screen is back!
	                instance_destroy(obj_fadeout)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.time=0.09
	                obj_fadein.depth=999999
	            break;
	            case 10: //fade in
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	                //screen fade
	                instance_create(0,0,obj_fadeout)
	                obj_fadeout.roomable=false
	                obj_fadeout.time=0.01
	                obj_fadeout.depth=999999
	            break;
	            case 11:
	                scr_charset(0,5)
	                obj_song.event++
	                obj_song.mm="intense"
	                with(obj_camera) {
	                    place=1
	                    x=xgo[1]
	                    y=ygo[1]
	                    image_xscale=big[1]
	                }
	                //screen is back!
	                instance_destroy(obj_fadeout)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.time=0.08
	                obj_fadein.depth=-999999
	            break;
	            case 12:
	                obj_song.mm="nothing"
	                obj_song.weeknd3m=obj_song.weeknd3m/2
	            break;
	            case 13:
	                obj_song.weeknd3m=obj_song.weeknd3m/2
	            break;
	            case 14:
	                obj_song.weeknd3m=obj_song.weeknd3m/2
	            break;
	            case 15: //shutting down
	                obj_song.weeknd3m=obj_song.weeknd3m/2
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	            break;
	            case 17: //hide cd boy notes
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	            break;
	            case 19:
	                instance_create(0,0,obj_fadeout)
	                obj_fadeout.color=c_white
	                obj_fadeout.time=0.025
	                obj_fadeout.roomable=false
	            break;
	            case 20: //HOLY CRAP!!!!!!!
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	                obj_song.weeknd3m=1.75
	                obj_song.mm="intense"
	                instance_destroy(obj_fadeout)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                //screens
	                var tv;
	                for(tv=0;tv<=15;tv++) {
	                    obj_song.screen[tv,0]="white"
	                }
	                //cdboy notes
	                with(obj_note) {
	                    if note<=obj_song.notes {
	                        image_alpha=1
	                    }
	                }
	            break;
	            case 21: //crash
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	                //color tv
	                var tv;
	                for(tv=0;tv<=15;tv++) {
	                    obj_song.screen[tv,0]="colorlight"
	                    obj_song.screen[tv,1]=0
	                }
	            break;
	            case 22:
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	            break;
	        }
	    break;
	    default:
	        obj_song.event=event+1
	    break;
	}



}
