/// @description text scrolling
ii=string_length(txt[text])
if pause=false {
    if i<ii && waiting=false {
        i++
        //voices
        switch(voice[text]) {
            case "dude": vsound=snd_dudetalk break;
            case "strad": vsound=snd_stradtalk break;
            case "lady": vsound=snd_ladytalk break;
            case "tv": vsound=snd_tvtalk break;
            case "cyan": vsound=snd_cyantalk break;
            case "cd": vsound=snd_cdboytalk break;
            case "cd-cyan": vsound=snd_cdboy_c break;
            case "CDEE": vsound=snd_cdboy_t break;
            case "CD-BOY": vsound=snd_cdboy_e break;
            case "buddy": vsound=snd_buddytalk break;
            case "vinyl": vsound=snd_vinyltalk break;
            case "gunk?": vsound=snd_gunktalk break;
            case "gunk": vsound=snd_gunktalk break;
            case "dan": vsound=snd_dantalk break;
            case "crowd": vsound=snd_crowd0+irandom(3) break;
            default: vsound=snd_errortalk break;
        }
        //waiting
        if string_copy(txt[text],i,6)="<wait:" {
            var skip=scr_styleskip(txt[text],i);
            waitt=0
            waitgoal=real(string_copy(txt[text],(i+6),skip-6))*30
            waiting=true
            i+=skip
            inerf+=skip
        }
        //talking
        var bleh=string_char_at(txt[text],i);
        if (bleh!=" " && round(i)=floor(i)) {
            if bleh="^" or bleh="✓" {
                i++
                inerf++
            } else if bleh="<" {
                var worst=scr_styleskip(txt[text],i);
                i+=worst
                inerf+=worst
            } else {
                audio_play_sound(vsound,9999,false)
            }
        }
    }
    //enter
    if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))//(keyboard_check_pressed(bind[dialognextc,0]) xor keyboard_check_pressed(bind[dialognextc,1]) xor gamepad_button_check_pressed(0,gp_face1)) && i>=ii {
    {
		if text=textmax  {
            instance_destroy();
        } else {
            scr_nextbox();
        }
    }
    //skip
    if keyboard_check_pressed(ord("X")) //(keyboard_check_pressed(bind[dialogskipc,0]) xor keyboard_check_pressed(bind[dialogskipc,1]) xor gamepad_button_check_pressed(0,gp_face2)) {
    {    i=ii
        inerf=0
        waitt=0
        waitgoal=0
    }
    //waiting
    if waitt<waitgoal && waiting=true waitt+=room_speed/1000000*delta_time else waiting=false;
}

