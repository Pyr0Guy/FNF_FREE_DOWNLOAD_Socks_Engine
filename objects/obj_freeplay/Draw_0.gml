draw_set_font(fnt_comic1)
draw_set_halign(fa_left)
//background
var mini = -array_length(categoryNew[BONUS])
var maxi = 0

for(var maxiVal = 1; maxiVal < categoryLen; maxiVal++)
	maxi += array_length(categoryNew[maxiVal])

byy+=(((obj_stats.freeplayPosition * obj_stats.freeplayCategoryes)/((-1*mini)+maxi))*-80-byy)/5
boink = 255/((mini*-1)+maxi)*(obj_stats.freeplayPosition-mini)*(1 + (obj_stats.freeplayCategoryes / categoryLen))
cc+=(boink-cc)/7 //WHAT 7 MEANS? --PyroGuy

image_alpha=0
draw_sprite_ext(spr_menubacksg,3,-400,byy,2,2,0,make_colour_hsv(cc,160,197),1)
draw_sprite_ext(spr_whitepixel,0,0,0,800,800,0,make_colour_hsv(cc,160,197),0.25)

var _mul = 380

//not background
y+=((-1*obj_stats.freeplayPosition)*40-y)/5

x+=((-1*obj_stats.freeplayCategoryes)*_mul-x)/5


for(var k=0; k<array_length(categoryNew);k++)
{

	for(var i = 0; i < array_length(categoryNew[k]); i++)
	{	
		//i fix that later, MUCH later --Pyr0Guy 03.14.23
		//I FIX IT 03.31.23			
		if(ds_map_find_value(obj_stats.songlocked, categoryNew[k][i]) == true)
			var songname = "? ? ?"
		else
			var songname = categoryNew[k][i]
				
		var songIcon = scr_songInfo(songname, icon)
		
		draw_text(35 + x + (k * _mul), (195+(40*i))+y ,string_hash_to_newline(songname))
		
		//draw outline
		
		draw_set_color(c_black)
		var xx;
		var yy;
		for (xx=0;xx<3;xx++) {
			for (yy=0;yy<3;yy++) {
		        draw_text(35+xx-1 + x + (k * _mul),((195+yy-1)+(40*i))+y,string_hash_to_newline(songname))
		        draw_text(35+xx  + x + (k * _mul),((195+yy)+(40*i))+y,string_hash_to_newline(songname))
		    }
		}
		
			//new song bubble
		//if (obj_stats.songnew[k][i]){
		if(ds_map_find_value(obj_stats.songnew, categoryNew[k][i]) == true){
		   var long=string_length(songname);
		   draw_sprite(spr_freeplaynew,0,35+(long*5) + x + (k * _mul),195+(40*i)+y)
		   //name oolors
		   var textcolor=make_color_rgb(255,255,81)
		   var textcolord=c_orange
		} else {
			var textcolor=c_white
		    var textcolord=c_gray
		}
		
			//grey out text
		if i=obj_stats.freeplayPosition
		   draw_set_color(textcolor)
		else 
		   draw_set_color(textcolord)
		  
		var songsore = 0
		var songmiss = 0
		var songaccuracy = 0
		
		if(ds_map_exists(obj_stats.songscore, songname))
		{
			songsore = obj_stats.songscore[? songname]
			songmiss = obj_stats.songmiss[? songname]
			songaccuracy = obj_stats.songaccuracy[? songname]
		}

		
		//draw name and score
		draw_set_halign(fa_center)
		draw_text(297 + x + (k * _mul),(y*5)+280+(200*i),string_hash_to_newline(string("Score: ")+string(songsore)+string(" | Misses: ")+string(songmiss) + string("#Accuracy: ") + string(songaccuracy) + "%"))
		draw_set_halign(fa_left)
		draw_text(35 + x + (k * _mul),(195+(40*i))+y,string_hash_to_newline(songname))
		//draw icon outline and shadow
		var j
		var jj
		for (j=0;j<3;j++) {
		    for (jj=0;jj<3;jj++) {
		        draw_sprite_ext(spr_freeplayicons, songIcon, 223+j + x + (k * _mul), (y*5)+129+(200*i)+jj, 1, 1, 0,c_black, 1)
		        draw_sprite_ext(spr_freeplayicons, songIcon, 224+j + x + (k * _mul), (y*5)+130+(200*i)+jj, 1, 1,0, c_black, 1)
		    }
		}
		    //draw icon
		if i=obj_stats.freeplayPosition
		   draw_sprite(spr_freeplayicons,songIcon,224 + x + (k * _mul),(y*5)+130+(200*i))
		else {
		    draw_sprite(spr_freeplayicons,songIcon,224 + x + (k * _mul),(y*5)+130+(200*i))
		    draw_sprite_ext(spr_freeplayicons,songIcon,224 + x + (k * _mul),(y*5)+130+(200*i),1,1,0,c_black,0.5)
		}
		
		//make hidden if locked
	   if (ds_map_find_value(obj_stats.songlocked, categoryNew[k][i]) == true){
	        scr_shadercheck(sh_ntsc)
	            draw_sprite(spr_freeplayiconsL,0,224 + x,(y*5)+130+(200*i))
	        shader_reset();
	   }
	   
	   
	}
}


//Upper Thing --PyroGuy
draw_rectangle_color(0, 0, room_width, 20, false, c_gray, c_gray, c_gray, false)

for(var i=0; i < categoryLen; i++)
{
	//var _wordLenght = string_width(categoryName[i])
	
	var _x = (85 * i) + 20
	
	if(categoryLen > 4) 
		_x -= ((max(0, round(abs(x) / 380) - 4) + (max(0, obj_stats.freeplayCategoryes-4) * 85)))
	
	draw_set_halign(fa_center)
	if(obj_stats.freeplayCategoryes == i)
		draw_text_ext_color(_x, 5, categoryName[i], 24, 100, c_yellow, c_yellow, c_yellow, c_yellow, 1)
	else
		draw_text_ext_color(_x, 5, categoryName[i], 24, 100, c_black, c_black, c_black, c_black, 1)
}

draw_set_halign(fa_left)