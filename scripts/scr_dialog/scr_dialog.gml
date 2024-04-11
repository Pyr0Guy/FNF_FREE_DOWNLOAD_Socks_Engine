/// @description scr_dialog(character voice,string)
/// @param character voice
/// @param string
function scr_dialog() {
	//play shitworld by deklaswas
	textmax++
	voice[textmax]=argument[0];
	//I made this part, play my game too!
	var rawtext=argument[1];
	var t=0;
	var tt=-1;
	var leftovers=0;
	for(t=0;t<=string_length(rawtext);t++) {
	    tt++
	    //tt=clamp(tt,0,33);
	    //skip tags
	    if string_char_at(rawtext,t)="<" t+=scr_styleskip(rawtext,t);
	    //reset if theres a pre-placed hashtag
	    if string_char_at(rawtext,t)="#" tt=0
	    //line breaking
	    if tt>=33 {
	        if string_char_at(rawtext,t)=" " {
	            if voice[textmax]!="cd" {
	                rawtext=string_delete(rawtext,t,1)
	                rawtext=string_insert("#",rawtext,t)
	                tt=0
	            } else { //cd-boy line break
	                rawtext=string_delete(rawtext,t,1)
	                rawtext=string_insert("#//",rawtext,t)
	                tt=2
	            }
	        } else {
	            var loopback;
	            for(loopback=t;loopback>0;loopback--) {
	                //break at the nearest space
	                if string_char_at(rawtext,loopback)=" " {
	                    if voice[textmax]!="cd" {
	                        rawtext=string_delete(rawtext,loopback,1)
	                        rawtext=string_insert("#",rawtext,loopback)
	                        tt=t-loopback
	                        break;
	                    } else { //cd-boy
	                        rawtext=string_delete(rawtext,loopback,1)
	                        rawtext=string_insert("#//",rawtext,loopback)
	                        tt=t-loopback+2
	                        break;
	                    }
	                }
	                if string_char_at(rawtext,loopback)=">" {
	                    if voice[textmax]!="cd" {
	                        rawtext=string_delete(rawtext,loopback,1)
	                        rawtext=string_insert(">#",rawtext,loopback)
	                        tt=t-loopback-1
	                        break;
	                    } else {
	                        rawtext=string_delete(rawtext,loopback,1)
	                        rawtext=string_insert(">#//",rawtext,loopback)
	                        tt=t-loopback-3
	                        break;
	                    }
	                }
	            }
	        }
	    }
	}
	txt[textmax]=rawtext;



}
