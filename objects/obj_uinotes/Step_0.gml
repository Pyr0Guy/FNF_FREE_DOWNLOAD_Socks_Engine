//what note am I???
if obj_song.paused=false {
    if note>=obj_song.notes {
        var bich;
        var bichgamepad;
        bich=bind[(note-obj_song.notes)+plus]
        if (scr_multiCheckButtonPressed(bich, bich+4)){
            press=true
            alarm[0]=5
        }
    }
}


