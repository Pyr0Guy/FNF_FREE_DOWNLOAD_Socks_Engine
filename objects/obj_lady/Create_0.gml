image_speed=0
image_index=0

/*
	#################################################################################
	#Here I know what the problem is, but I've been sitting on it for several days.	#
	#																				#
	#Problem: obj_lady created and is drawn after new sprites are given to it in the# 
	#scr_songint script. But if you first draw a lady, then for some reason it will #
	#only be a boombox. I don't know how to fix this yet, so I'll put this code here#
	#################################################################################
*/

switch(obj_stats.weekgoing)
{
	case -1:
	case -2:
	case -3:
		drawgirl = false
	break;
	case 3: //Girl next door v1 (best song ever)
		//I never made a script for setting lady's sprites oops
		var k;
	    for (k=0;k<8;k++) 
		{
			if k%2=0 or k=0 
				obj_lady.sprite[k]=spr_ladyidleleftw2
	        else 
	            obj_lady.sprite[k]=spr_ladyidlerightw2
	    }
		
		drawgirl = true
	break;
	case 5: //twinkle
		//still didn't make that script
		var k;
		for (k=0;k<8;k++)
			sprite[k]=spr_cdboyidlestill
			
		drawgirl = true
	break;
	default:
		drawgirl = true
		var k;
	    for (k=0;k<8;k++) 
		{
			if k%2=0 or k=0 
				obj_lady.sprite[k]=spr_ladyidleleft
	        else 
	            obj_lady.sprite[k]=spr_ladyidleright
	    }
	break;
}
maxtypes=7
type=0
frame=0
maxframes=4


/*
0=normal
*/

/* */
/*  */
