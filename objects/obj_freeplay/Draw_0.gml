draw_set_font(fnt_comic1)
draw_set_halign(fa_left)
//background
byy+=(((sel * categorySel)/((-1*obj_stats.mini)+obj_stats.maxi))*-80-byy)/5
boink = 255/((obj_stats.mini*-1)+obj_stats.maxi)*(sel-obj_stats.mini)*(1 + (categorySel / 4))
cc+=(boink-cc)/7
image_alpha=0
draw_sprite_ext(spr_menubacksg,3,-400,byy,2,2,0,make_colour_hsv(cc,160,197),1)
draw_sprite_ext(spr_whitepixel,0,0,0,800,800,0,make_colour_hsv(cc,160,197),0.25)

var _mul = 380

//not background
y+=((-1*sel)*40-y)/5

x+=((-1*categorySel)*_mul-x)/5

for(var k=0; k<array_length(categoryNew);k++)
{

	for(var i = 0; i < array_length(categoryNew[k]); i++)
	{
			//i fix that later, MUCH later --Pyr0Guy 03.14.23
			//I FIX IT 03.31.23
			if (obj_stats.songlocked[k][i])
				var songname = "? ? ?"
			else
				var songname = categoryNew[k][i][0]
		
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
			if (obj_stats.songnew[k][i]){
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
		    if i=sel 
		        draw_set_color(textcolor)
		     else 
		        draw_set_color(textcolord)
	    
			 //draw name and score
			draw_set_halign(fa_center)
				draw_text(297 + x + (k * _mul),(y*5)+280+(200*i),string_hash_to_newline(string("Score: ")+string(obj_stats.songscore[k][i])+string(" | Misses: ")+string(obj_stats.songmiss[k][i]) + string("#Accuracy: ") + string(obj_stats.songaccuracy[k][i]) + "%"))
			draw_set_halign(fa_left)
		    draw_text(35 + x + (k * _mul),(195+(40*i))+y,string_hash_to_newline(songname))
		    //draw icon outline and shadow
		    var j
		    var jj
		    for (j=0;j<3;j++) {
		        for (jj=0;jj<3;jj++) {
		            draw_sprite_ext(spr_freeplayicons, categoryNew[k][i][1], 223+j + x + (k * _mul), (y*5)+129+(200*i)+jj, 1, 1, 0,c_black, 1)
		            draw_sprite_ext(spr_freeplayicons, categoryNew[k][i][1], 224+j + x + (k * _mul), (y*5)+130+(200*i)+jj, 1, 1,0, c_black, 1)
		        }
		    }
		    //draw icon
		    if i=sel 
		        draw_sprite(spr_freeplayicons,categoryNew[k][i][1],224 + x + (k * _mul),(y*5)+130+(200*i))
		    else {
		        draw_sprite(spr_freeplayicons,categoryNew[k][i][1],224 + x + (k * _mul),(y*5)+130+(200*i))
		        draw_sprite_ext(spr_freeplayicons,categoryNew[k][i][1],224 + x + (k * _mul),(y*5)+130+(200*i),1,1,0,c_black,0.5)
		    }
		
			//make hidden if locked
	   if (obj_stats.songlocked[k][i]){
	        shader_set(sh_ntsc);
	            var _bleeding_width = floor(shader_get_uniform(sh_ntsc, "f_screenWidth"))
	            var _bleeding_height = floor(shader_get_uniform(sh_ntsc, "f_screenHeight"))
	            var _bleeding_bleeding = floor(shader_get_uniform(sh_ntsc, "f_bleeding"))
	            //shader_set_uniform_f(_bleeding_width, 1.0/(window_width*surface_aspect));
	            //shader_set_uniform_f(_bleeding_height, 1.0/(window_height*surface_aspect));
	            shader_set_uniform_f(_bleeding_width, 1/window_get_width());
	            shader_set_uniform_f(_bleeding_height, 1/window_get_height());
	            shader_set_uniform_f(_bleeding_bleeding, 3);
	            draw_sprite(spr_freeplayiconsL,0,224 + x,(y*5)+130+(200*i))
	        shader_reset();
	   }
	}
}

//Upper Thing
draw_rectangle_color(0, 0, room_width, 20, false, c_gray, c_gray, c_gray, false)

for(var i=0; i < categoryLen; i++)
{
	draw_set_halign(fa_center)
	draw_text_ext_color((i * 85) + 20, 5, categoryName[i], 24, 100, c_black, c_black, c_black, c_black, 1)
	
	if(categorySel == i)
		draw_text_ext_color((i * 85) + 20, 5, categoryName[i], 24, 100, c_yellow, c_yellow, c_yellow, c_yellow, 1)
}
draw_set_halign(fa_left)