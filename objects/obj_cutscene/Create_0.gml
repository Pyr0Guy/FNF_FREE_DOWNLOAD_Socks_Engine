//setting sprites
switch(obj_stats.cutgoing) {
    case 0: //tutorial
        alarm[0]=30
        sprite_draw=spr_tutcutscene
    break;
    case 1: //summer
        alarm[0]=1
        sprite_draw=spr_sumcutscene1
    break;
    case 1.1: //summer to stars
        alarm[0]=1
        sprite_draw=spr_sumcutscene2
    break;
    case 1.2: //stars
        alarm[0]=1
        sprite_draw=spr_starscutscene1
    break;
    case 2: //girl next door
        alarm[0]=50
        instance_create(0,0,obj_fadein)
        sprite_draw=spr_gndcutscene1
    break;
    case 2.1: //gnd to gamejack
        alarm[0]=1
        sprite_draw=spr_gndcutscene2
    break;
    case 2.2: //gamejack
        alarm[0]=1
        sprite_draw=spr_gjcutscene1
    break;
    case 3: //twinkle
        alarm[0]=50
        instance_create(0,0,obj_fadein)
        sprite_draw=spr_twicutscene1
    break;
    case 3.1: //twinkle 2
        alarm[0]=25
        instance_create(0,0,obj_fadein)
        sprite_draw=spr_twicutscene2
    break;
    case 3.2: //tsunami
        alarm[0]=1
        instance_create(0,0,obj_fadein)
        sprite_draw=spr_tsucutscene1
    break;
    default:
        //what
        sprite_draw=spr_tutcutscene
        alarm[0]=9
    break;
}
turn=0
image_draw=0
