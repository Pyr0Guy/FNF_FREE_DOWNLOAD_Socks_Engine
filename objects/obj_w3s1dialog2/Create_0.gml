action_inherited();
scr_dialog("buddy","nowhere")
scr_dialog("vinyl","great.")
scr_dialog("buddy","But yeah,         #I can probably fix this#guy up.")
scr_dialog("dude","sweet!")
scr_dialog("dude","so do you have a toolbox#somewhere or...")
scr_dialog("buddy","Aw come on little J,       #I'm a professional!")
scr_dialog("buddy","I don't do my work behind#the counter at an arcade")
scr_dialog("buddy","A true master-mechanic like#me has to have a workshop!")
scr_dialog("buddy","Let me show you.")
scr_dialog("buddy","Hey vinyl,           #I'm going on break.")
scr_dialog("buddy","You're gonna have to hold#things done for like...                     #anywhere between...           #3 minutes to 3 hours.")
scr_dialog("vinyl","I hate you.")
//buddy breaking his arm
funnylol=true
alarm[0]=120
obj_cutscene.image_draw=7
audio_play_sound(mus_cats,9999,true)

/* OLD
txt[1]="Yyyyyyeah..."
voice[1]="buddy"
txt[2]="But I'm sure I can#fix the guy up."
voice[2]="buddy"
txt[3]="sweet!"
voice[3]="dude"
txt[4]="so do you have a toolbox#somewhere or."
voice[4]="dude"
txt[5]="Aw come on lil' J,       #I'm a professional!"
voice[5]="buddy"
txt[6]="I don't do my work behind#the counter at a roller rink"
voice[6]="buddy"
txt[7]="Hey Vinyl,             #I'm taking my break."
voice[7]="buddy"
txt[8]="Can you hold things#over while I'm gone?"
voice[8]="buddy"
txt[9]="No"
voice[9]="vinyl"
txt[10]="thanks a ton,              #I'll be back in 30 minutes."
voice[10]="buddy"
txt[11]="I hate you."
voice[11]="vinyl"
textmax=11

/* */
/*  */
