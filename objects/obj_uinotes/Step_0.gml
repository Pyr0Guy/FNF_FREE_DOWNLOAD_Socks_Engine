//what note am I???
if obj_song.paused=false {
    if note>=obj_song.notes {
        var bich;
        var bichgamepad;
        bich=obj_stats.bind[(note-obj_song.notes)+plus]
        if keyboard_check_pressed(bich) or gamepad_button_check_pressed(0,bich+4){
            press=true
            alarm[0]=5
        }
    }

}


