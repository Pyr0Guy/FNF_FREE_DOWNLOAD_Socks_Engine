action_inherited();
scr_dialog("tv","AND THE WINNER IS... <wait:0.5><color:yellow>[DUDE]</color>!!")
scr_dialog("dude","YEAH! <wait:0.25>TAKE THAT! <wait:0.125>I BEAT A POPSTAR AT HER OWN GAME!!")
scr_dialog("gunk","Damnit...")
scr_dialog("gunk","I never would have been a popstar if your dad didn't drop out!")
scr_dialog("gunk","My mom would have never gone on to win the championship!")
scr_dialog("gunk","And we would have never become famous!")
scr_dialog("gunk","You have NO idea what it feels like to have all these eyes on you!")
scr_dialog("gunk","Having to sing terrible music written by a bunch of old dudes about what its like being a 14 year old girl!")
scr_dialog("gunk","Every <wait:0.3>single <wait:0.3>day!")
scr_dialog("gunk","If it weren't for strad, my mom!--...")
scr_dialog("gunk","My mom... <wait:0.34>She... <wait:0.7>It was her fault...")
scr_dialog("peeb","eyes")
scr_dialog("gunk","Hey... <wait:0.34>Wait...<wait:0.45> <effect:shake> #T-those eyes...")
scr_dialog("gunk","You're that kid! <wait:0.45>That kid he--      ")
scr_dialog("gunk","You know he doesn't have to hear about this okay??")
scr_dialog("dude","what?")
scr_dialog("gunk","I mean its fine! You know! <wait:0.125>I get it now! <wait:0.125>I shouldn't have blown up at ryan! <wait:0.4>And I shouldn't have blamed Strad!")
scr_dialog("gunk","B-but you have to understand! <wait:0.125>How could I blame my own mom?! <wait:0.4>I can't remember a thing about her!")
scr_dialog("gunk","But I get it now!!")
scr_dialog("gunk","Just DON'T tell him about this okay? <wait:0.4>I learned my lesson! <wait:0.125>I promise!")
scr_dialog("dude","what are you talking about!")
scr_dialog("gunk","Stay back! <wait:0.43>Just!... <wait:0.5>PLEASE DON'T TELL <color:1>YOUR DAD!")
scr_dialog("strad","Are you two good back there")
scr_dialog("dude","... <wait:0.125>yeah")
scr_dialog("lady","j")
scr_dialog("dude","...")
scr_dialog("strad","...")
scr_dialog("strad","...hey, lil' dude. I can drive you home but.")
scr_dialog("strad","I don't think I ever got your address.")
scr_dialog("dude","uh, i think ill walk")
scr_dialog("strad","Aw come on kid, <wait:0.125>I really don't mind driving you home.")
scr_dialog("dude","...")
scr_dialog("strad","... <wait:0.4>Is there something you're not telling me?")
scr_dialog("dude","...")
scr_dialog("dude","i...")
scr_dialog("dude","yeah")
scr_dialog("dude","i didnt want to tell you this because...")
scr_dialog("dude","i thought you would kill me if you knew someone like me was dating your daughter but,")
scr_dialog("dude","i dont have a place to live.")
scr_dialog("dude","...           ")
scr_dialog("dude","im sorry.          ")
scr_dialog("strad","You're homeless?! Where have you been staying all this time??           ")
scr_dialog("dude","i stay behind the arcade. but when it gets cold my buddy lets me stay in his van.         ")
scr_dialog("dude","he says his parents wouldnt let a homeless guy stay inside so its the best he can do           ")
scr_dialog("strad","Kid... What about your parents? Why aren't you living with them?             ")
scr_dialog("dude","...i dont know either of them.")
scr_dialog("nermal","ฅ^•ﻌ•^ฅ")

///variables
splode=0 //firework timer
fade=0 //fade in
fall=false
cooly=0
freezescuff=false //you can skip through the car intro if you spam fast enough. this is because all the textbox functions run before the cutscene code tells it to pause. making a better solution that fixes this from happening everywhere later.
carallow=false
//spacing out
alarm[11]=5 //lady random gibberish generator
fi=0
wavebox=false //if the textbox is wavey
waveint=0 //how wavey is the textbox
moop=0
wavesurf=surface_create(__view_get( e__VW.WPort, 0 ),__view_get( e__VW.HPort, 0 )) //textbox surface

