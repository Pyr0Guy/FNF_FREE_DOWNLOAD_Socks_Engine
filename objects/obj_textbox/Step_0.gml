/// @description text scrolling
ii=string_length(txt[text])
if i<ii {
    i+=1
    //voices
    switch(voice[text]) {
        case "dude":
            vsound=snd_dudetalk
        break;
        case "strad":
            vsound=snd_stradtalk
        break;
        case "lady":
            vsound=snd_ladytalk
        break;
        case "tv":
            vsound=snd_tvtalk
        break;
        case "cyan":
            vsound=snd_cyantalk
        break;
        case "cd":
            vsound=snd_cdboytalk
        break;
        case "cd-cyan":
            vsound=snd_cdboy_c
        break;
        case "CDEE":
            vsound=snd_cdboy_t
        break;
        case "CD-BOY":
            vsound=snd_cdboy_e
        break;
        case "buddy":
            vsound=snd_buddytalk
        break;
        case "vinyl":
            vsound=snd_vinyltalk
        break;
        case "gunk?":
            vsound=snd_gunktalk
        break;
        case "gunk":
            vsound=snd_gunktalk
        break;
		case "AT":
			vsound=snd_ATtalk
		break;
        default:
            vsound=snd_errortalk
        break;
    }
    //talking
    var bleh=string_char_at(txt[text],i);
    if (bleh!=" " && i=round(i)) {
        if bleh="^" {
            i+=2
        } else {
            audio_play_sound(vsound,9999,false)
        }
    }
}
//enter
if (keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1)) && i>=ii {
    if text=textmax  {
        instance_destroy();
    } else {
        text+=1
        i=0
    }
}
//skip
if (keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift) or gamepad_button_check_pressed(0,gp_face2)) {
    i=ii
}

