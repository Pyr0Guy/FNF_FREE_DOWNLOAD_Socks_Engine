function scr_charset(argument0, argument1) {
	var player=argument0
	var baddie=argument1
	//seting character
	with(obj_player) {
	    if obj_stats.joshmode=false {
	        switch(player){
	        case "earth":
	            idle[0]			=spr_earth
	            ayy				=spr_earth
	            anim[LEFT]		=spr_earth
	            anim[DOWN]		=spr_earth
	            anim[UP]		=spr_earth
	            anim[RIGHT]		=spr_earth
	            anim[LEFTALT]	=spr_earth
	            anim[DOWNALT]	=spr_earth
	            anim[UPALT]		=spr_earth
	            anim[RIGHTALT]	=spr_earth
	            pause			=spr_earth
	        break;
	        case "lady":
	            idle[0]=spr_ladymidle
	            ayy=spr_ladymayy
	            anim[LEFT]=spr_ladymleft
	            anim[DOWN]=spr_ladymdown
	            anim[UP]=spr_ladymup
	            anim[RIGHT]=spr_ladymright
	            anim[LEFTALT]=spr_ladymleft
	            anim[DOWNALT]=spr_ladymdown
	            anim[UPALT]=spr_ladymup
	            anim[RIGHTALT]=spr_ladymrightmiss
	            anim[8]=spr_ladymupmiss
	            anim[9]=spr_ladymdownmiss
	            anim[10]=spr_ladymleftmiss
	            anim[11]=spr_ladymrightmiss
	            pause=spr_ladympause
	        break;
	        case 0: //normal
	            idle[0]			=spr_dudeidle
	            ayy				=spr_dudeayy
	            yousuck			=spr_dudeayysuck
	            anim[LEFT]		=spr_dudeleft
	            anim[DOWN]		=spr_dudedown
	            anim[UP]		=spr_dudeup
	            anim[RIGHT]		=spr_duderight
	            anim[LEFTALT]	=spr_dudeleftalt
	            anim[DOWNALT]	=spr_dudedownalt
	            anim[UPALT]		=spr_dudeupalt
	            anim[RIGHTALT]	=spr_duderightalt
	            anim[LEFTMISS]	=spr_dudeleftmiss
	            anim[DOWNMISS]	=spr_dudedownmiss
	            anim[UPMISS]	=spr_dudeupmiss
	            anim[RIGHTMISS]	=spr_duderightmiss
	            pause			=spr_dudeloss
	        break;
	        case 1: //mr dude and watch
	            idle[0]=spr_dwidle
	            ayy=spr_dudeayy
	            anim[0]=spr_dwleft
	            anim[1]=spr_dwdown
	            anim[2]=spr_dwup
	            anim[3]=spr_dwright
	            anim[8]=spr_dwmissleft
	            anim[9]=spr_dwmissdown
	            anim[10]=spr_dwmissup
	            anim[11]=spr_dwmissright
	            pause=spr_dwpause
	            framerate=0.2
	        break;
	        case 2: // dude n' lady weeknd 2
	            idle[0]=spr_dudenladyw2idle
	            ayy=spr_dudenladyw2ayy
	            yousuck=spr_dudenladyw2ayysuck
	            anim[0]=spr_dudenladyw2left
	            anim[1]=spr_dudenladyw2down
	            anim[2]=spr_dudenladyw2up
	            anim[3]=spr_dudenladyw2right
	            anim[8]=spr_dudenladyw2leftmiss
	            anim[9]=spr_dudenladyw2downmiss
	            anim[10]=spr_dudenladyw2upmiss
	            anim[11]=spr_dudenladyw2rightmiss
	            pause=spr_dudenladyw2pause
	        break;
	        case 3: //dude channelsurf
	            idle[0]=spr_dudecidle
	            anim[0]=spr_dudecleft
	            anim[1]=spr_dudecdown
	            anim[2]=spr_dudecup
	            anim[3]=spr_dudecright
	            anim[8]=spr_dudecleftmiss
	            anim[9]=spr_dudecdownmiss
	            anim[10]=spr_dudecupmiss
	            anim[11]=spr_dudecrightmiss
	            pause=spr_dudecpause
	        break;
	        case 4: //dude anime
	            idle[0]=spr_dude3idle
				anim[0]=spr_dude3left
	            anim[1]=spr_dude3down
	            anim[2]=spr_dude3up
	            anim[3]=spr_dude3right
	            anim[4]=spr_dude3left
	            anim[5]=spr_dude3down
	            anim[6]=spr_dude3up
	            anim[7]=spr_dude3right
	            anim[8]=spr_dude3leftmiss
	            anim[9]=spr_dude3downmiss
	            anim[10]=spr_dude3upmiss
	            anim[11]=spr_dude3rightmiss
	            pause=spr_dude3pause
	        break;
	        case 5: //dude triangle dance
	            idle[0]=spr_dudetidle1
	            idle[1]=spr_dudetidle2
	            numidle=1
	            ayy=spr_dudeayy
	            yousuck=spr_dudeayysuck
	            anim[0]=spr_dudetleft
	            anim[1]=spr_dudetdown
	            anim[2]=spr_dudetup
	            anim[3]=spr_dudetright
	            anim[4]=spr_dudeleftalt
	            anim[5]=spr_dudedownalt
	            anim[6]=spr_dudeupalt
	            anim[7]=spr_duderightalt
	            anim[8]=spr_dudeleftmiss
	            anim[9]=spr_dudedownmiss
	            anim[10]=spr_dudeupmiss
	            anim[11]=spr_duderightmiss
	            pause=spr_dudeloss
	        break;
	        }
	    } else {
	        switch(player){
	        case 0 or 1:
	            idle[0]=spr_dudeidlejm
	            ayy=spr_dudeayy
	            anim[0]=spr_dudeleftjm
	            anim[1]=spr_dudedownjm
	            anim[2]=spr_dudeupjm
	            anim[3]=spr_duderightjm
	            anim[8]=spr_dudeupmiss
	            anim[9]=spr_dudedownmiss
	            anim[10]=spr_dudeleftmiss
	            anim[11]=spr_duderightmiss
	        break;
	        }
	    }
	        //sprite_index=idle
	}
	with(obj_badguy) {
	if obj_stats.joshmode=false {
	switch(baddie){
	    case -6: //cromp
	        idle[0]		=spr_crompidle1
	        idle[1]		=spr_crompidle2
	        numidle=1
	        ayy				=spr_crompayy
	        anim[LEFT]		=spr_crompleft
	        anim[DOWN]		=spr_crompdown
	        anim[UP]		=spr_crompup
	        anim[RIGHT]		=spr_crompright
	        anim[LEFTALT]	=spr_crompleft
	        anim[DOWNALT]	=spr_crompdown
	        anim[UPALT]		=spr_crompup
	        anim[RIGHTALT]	=spr_crompright
	        pause=spr_cromppause
	        image_xscale=4
	        image_yscale=4
	        framerate=0.2
	    break;
	    case -5: //nermal
	        idle[0]		=spr_nermalidle
	        ayy			=spr_nermalfloat
	        anim[LEFT]	=spr_nermalleft
	        anim[DOWN]	=spr_nermaldown
	        anim[UP]	=spr_nermalup
	        anim[RIGHT]	=spr_nermalright
	        pause		=spr_nermalpause
	    break;
	    case -4: //slick
	        idle[0]		=spr_slickidle
	        ayy			=spr_slickayy
	        anim[LEFT]	=spr_slickleft
	        anim[DOWN]	=spr_slickdown
	        anim[UP]	=spr_slickup
	        anim[RIGHT]	=spr_slickright
	        pause		=spr_slickpause
	    break;
	    case -4.1: //slick anime
	        idle[0]		=spr_slickidle2
	        ayy			=spr_slickayy2
	        anim[LEFT]	=spr_slickleft2
	        anim[DOWN]	=spr_slickdown2
	        anim[UP]	=spr_slickup2
	        anim[RIGHT]	=spr_slickright2
	        pause		=spr_harrispause
	    break;
	    case -3: //boubee
	        idle[0]			=spr_boubeeidle
	        ayy				=spr_boubeeayy
	        anim[LEFT]		=spr_boubeeleft
	        anim[DOWN]		=spr_boubeedown
	        anim[UP]		=spr_boubeeup
	        anim[RIGHT]		=spr_boubeeright
	        pause			=spr_boubeeayy
	    break;
	    case -2: //george
	        idle[0]			=spr_georgeidle
	        everybeat		=2
	        ayy				=spr_georgeidle
	        anim[LEFT]		=spr_georgeleft
	        anim[DOWN]		=spr_georgedown
	        anim[UP]		=spr_georgeup
	        anim[RIGHT]		=spr_georgeright
	        anim[LEFTALT]	=spr_georgeleftalt
	        anim[DOWNALT]	=spr_georgedownalt
	        anim[UPALT]		=spr_georgeupalt
	        anim[RIGHTALT]	=spr_georgerightalt
	        pause			=spr_georgepause
	    break;
	    case -1:
	        //the eyes. what was wrong
	        //with his eyes?
	    break;
	    case 0: //teachvee
	        idle[0]			=spr_TVidle
	        ayy				=spr_TVayy
	        anim[LEFT]		=spr_TVleft
	        anim[DOWN]		=spr_TVdown
	        anim[UP]		=spr_TVup
	        anim[RIGHT]		=spr_TVright
	        anim[LEFTALT]	=spr_TVleftalt
	        anim[DOWNALT]	=spr_TVdownalt
	        anim[UPALT]		=spr_TVupalt
	        anim[RIGHTALT]	=spr_TVrightalt
	        pause			=spr_TVpause
	        framerate		=0.2
	    break;
	    case 1: //strad
	        idle[0]			=spr_stradidle
	        ayy				=spr_stradayy
	        anim[LEFT]		=spr_stradleft
	        anim[DOWN]		=spr_straddown
	        anim[UP]		=spr_stradup
	        anim[RIGHT]		=spr_stradright
	        anim[LEFTALT]	=spr_stradleftalt
	        anim[DOWNALT]	=spr_straddownalt
	        anim[UPALT]		=spr_stradupalt
	        anim[RIGHTALT]	=spr_stradrightalt
	        pause			=spr_stradpause
	    break;
	    case 2: //cyan
	        idle[0]			=spr_cyanidle
	        ayy				=spr_cyanayy
			bad_ayy_snd		=snd_cyanayy
	        anim[LEFT]		=spr_cyanleft
	        anim[DOWN]		=spr_cyandown
	        anim[UP]		=spr_cyanup
	        anim[RIGHT]		=spr_cyanright
	        anim[LEFTALT]	=spr_cyanleftalt
	        anim[DOWNALT]	=spr_cyandownalt
	        anim[UPALT]		=spr_cyanupalt
	        anim[RIGHTALT]	=spr_cyanrightalt
	        pause			=spr_cyanpause
	    break;
	    case 3: //cd-boy
	        idle[0]			=spr_cdboyidle
	        //idle[1]=spr_boubeeidle
	        //numidle=1
	        ayy				=spr_cdboyhack
	        anim[LEFT]		=spr_cdboyleft
	        anim[DOWN]		=spr_cdboydown
	        anim[UP]		=spr_cdboyup
	        anim[RIGHT]		=spr_cdboyright
	        anim[LEFTMISS]	=spr_cdboyleftb
	        anim[DOWNMISS]	=spr_cdboydownb
	        anim[UPMISS]	=spr_cdboyupb
	        anim[RIGHTMISS]	=spr_cdboyrightb
	        pause			=spr_cdboypause
	    break;
	    case 4: //buddy
	        idle[0]			=spr_buddyidle
	        ayy				=spr_buddyayy
			bad_ayy_snd		=snd_buddyayy
	        anim[LEFT]		=spr_buddyleft
	        anim[DOWN]		=spr_buddydown
	        anim[UP]		=spr_buddyup
	        anim[RIGHT]		=spr_buddyright
	        anim[LEFTALT]	=spr_buddyleftanime
	        anim[DOWNALT]	=spr_buddydownanime
	        anim[UPALT]		=spr_buddyupanime
	        anim[RIGHTALT]	=spr_buddyrightanime
	        pause			=spr_buddypause
	    break;
	    case 5: //scary cd-boy
	        idle[0]			=spr_cdboyidle3
	        ayy				=spr_cdboyultracrash
	        anim[LEFT]		=spr_cdboyleft3
	        anim[DOWN]		=spr_cdboydown3
	        anim[UP]		=spr_cdboyup3
	        anim[RIGHT]		=spr_cdboyright3
	        anim[LEFTMISS]	=spr_cdboyleft3
	        anim[DOWNMISS]	=spr_cdboydown3
	        anim[UPMISS]	=spr_cdboyup3
	        anim[RIGHTMISS]	=spr_cdboyright3
	        pause			=spr_cdboypause3
	        framerate		=0.2
	    break;
	    case 5.1: //scary cd-boy
	        idle[0]			=spr_cdboyidle3s
	        anim[LEFTMISS]	=spr_cdboyleft3s
	        anim[DOWNMISS]	=spr_cdboydown3s
	        anim[UPMISS]	=spr_cdboyup3s
	        anim[RIGHTMISS]	=spr_cdboyright3s
	        pause			=spr_cdboypause3s
	    break;
	    }
	} else {
	switch(baddie){
	    case 0:
	        idle=spr_TVidlejm
	        ayy=spr_TVupjm
	        up=spr_TVupjm
	        down=spr_TVdownjm
	        left=spr_TVleftjm
	        right=spr_TVrightjm
	        upalt=spr_TVupjm
	        downalt=spr_TVdownjm
	        leftalt=spr_TVleftjm
	        rightalt=spr_TVrightjm
	        framenumbs=4
	        framenumbs2=24
	    break;
	}
	}
	//sprite_index=idle
	}



}
