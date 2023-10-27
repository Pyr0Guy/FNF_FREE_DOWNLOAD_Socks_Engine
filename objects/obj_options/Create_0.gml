enum MENU_STATE
{
	normal,
	mapping_keys,
	changing_skin,
	custom_skin
}

if obj_stats.fullscreen
	sels=7 //I mean i dunno I might want to add more some day lol (I did)
else
	sels=6
sel=0
mappingkeys=false
changingskin=false
keyd=0
wait=10

fullscreen = false
var s;
for (s=0; s<sels; s++) {
    options[s]=0
}

menu_state = MENU_STATE.normal;
skin_part = 0;
pallet = 1;
changing_pallet = false

description = "lol"
description_temp = ":3" //silly solution
cout = 0;