switch(menu_state)
{
	//updating keys
	case MENU_STATE.mapping_keys:
	    draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,0.64)
		draw_set_halign(fa_center);
		draw_set_font(fnt_comic2)
		draw_text(room_width/2,40,string_hash_to_newline("KEY MAPPING"))
		draw_set_color(c_white)
		draw_set_font(fnt_comic1)
		draw_text(room_width/2,90,string_hash_to_newline("LEFT: "+string(scr_keytoname(obj_stats.bind[0]))+string("#DOWN: ")+string(scr_keytoname(obj_stats.bind[1]))+string("#UP: ")+string(scr_keytoname(obj_stats.bind[2]))+string("#RIGHT: ")+string(scr_keytoname(obj_stats.bind[3]))))
		//you know I was going to do some fancy stuff with for loops and cool stuff 
		//but that was too much work, think smarter not harder right?
		draw_set_color(c_yellow)
		switch(keyd) {
			case 0:
				draw_text(room_width/2,90,string_hash_to_newline("LEFT: "+string(scr_keytoname(obj_stats.bind[0]))))
			break;
			case 1:
				draw_text(room_width/2,90,string_hash_to_newline("#DOWN: "+string(scr_keytoname(obj_stats.bind[1]))))
			break;
			case 2:
				draw_text(room_width/2,90,string_hash_to_newline("##UP: "+string(scr_keytoname(obj_stats.bind[2]))))
			break;
			case 3:
				draw_text(room_width/2,90,string_hash_to_newline("###RIGHT: "+string(scr_keytoname(obj_stats.bind[3]))))
			break;
		}
		draw_set_halign(fa_left);
		draw_set_color(c_white)
		draw_set_font(fnt_comic1)
	break;
	//changing skins
	case MENU_STATE.changing_skin:
	    //actually changing
		    obj_stats.skin=clamp(obj_stats.skin,0,18)
		    if keyboard_check_pressed(vk_left) {
		        obj_stats.skin--
		    }
		    if keyboard_check_pressed(vk_right) {
		        obj_stats.skin++
		    }
		    scr_skinint(obj_stats.skin);
		    if ((keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"))) && wait==0) {
		        menu_state = MENU_STATE.normal;
		        audio_play_sound(snd_josh,9999,false)
		    }
			if(keyboard_check_pressed(ord("X")) && wait == 0)
				menu_state = MENU_STATE.custom_skin;
		    //text
		    draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,0.64)
		    draw_set_halign(fa_center);
		    draw_set_font(fnt_comic2)
		    draw_text(room_width/2,40,string_hash_to_newline("SELECT SKIN"))
			draw_text_transformed(room_width/2, room_height - 80, string_hash_to_newline("Press X to Make custom skin"), 0.6, 0.6, 0);
		    draw_set_font(fnt_comic1)
		    switch(obj_stats.skin) {
		        default:
		            var skinname = "Classic"
		        break;
		        case 1:
		            var skinname = "Lemon Lime"
		        break;
		        case 2:
		            var skinname = "eduD"
		        break;
		        case 3:
		            var skinname = "Nightmode"
		        break;
		        case 4:
		            var skinname = "Free Dude"
		        break;
		        case 5:
		            var skinname = "Childish Prankster"
		        break;
		        case 6:
		            var skinname = "Supic"
		        break;
		        case 7:
		            var skinname = "Weirdo Dude"
		        break;
		        case 8:
		            var skinname = "Week-Old Bubble Gum"
		        break;
		        case 9:
		            var skinname = "Sour Patch Watermelon"
		        break;
		        case 10:
		            var skinname = "'POOP DUDE'#-funne"
		        break;
		        case 11:
		            var skinname = "Kevin"
		        break;
		        case 12:
		            var skinname = "eye strain"
		        break;
		        case 13:
		            var skinname = "pastel"
		        break
		        case 14:
		            var skinname = "W3B FR34K"
		        break;
		        case 15:
		            var skinname = "best friend"
		        break;
		        case 16:
		            var skinname = "thank yew epic aliens thank yewww thank yeeewwwww"
		        break;
		        case 17:
		            var skinname = "crescent"
		        break;
				case 18:
				    var skinname = "???"
		        break;
		    }
		    draw_text_color((room_width/2)+1,91,string_hash_to_newline(string("< ")+string(skinname)+string(" >")),c_black,c_black,c_black,c_black,1)
		    draw_text_color(room_width/2,90,string_hash_to_newline(string("< ")+string(skinname)+string(" >")),c_white,c_white,c_white,c_white,1)
		    draw_set_halign(fa_left);
		    draw_text_color(6,room_height-19,string_hash_to_newline("Press [Z] or [ENTER] to confirm."),c_black,c_black,c_black,c_black,1)
		    draw_text_color(5,room_height-20,string_hash_to_newline("Press [Z] or [ENTER] to confirm."),c_white,c_white,c_white,c_white,1)
		    scr_skinswapdude(c_white);
		        if obj_stats.skin!= -1 {
		            draw_sprite(spr_dudeidle,9,222,(room_height/1.5))
		        } else {
		            draw_sprite(spr_dudelost,0,222,(room_height/1.5))
		        }
		    shader_reset();
	break;
	case MENU_STATE.custom_skin:
		//scr_skinint(obj_stats.skin);
		draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,0.64)
		draw_set_halign(fa_center);
		draw_set_font(fnt_comic2);
		draw_text(room_width/2, 10, string_hash_to_newline("Custom skin#editor"))
		
		var color, letter, palletOR ,pallet1, pallet2, pallet3, part, arrow_pos, text = "";
		
		if(!changing_pallet)
		{
			if(keyboard_check_pressed(vk_up))
				pallet--;
			if(keyboard_check_pressed(vk_down))
				pallet++;
			
			if(keyboard_check_pressed(vk_left))
				skin_part++;
			if(keyboard_check_pressed(vk_right))
				skin_part--;
				
			text = "Press ENTER to select color";
		}
			
		if(pallet > 3)
			pallet = 1;
		if(pallet == 0)
			pallet = 3;
			
		if(skin_part > 6)
			skin_part = 0;
		if(skin_part < 0)
			skin_part = 6;
		
		switch(skin_part)
		{
			case 0:
				part = "Hat"
				pallet1 = obj_stats.colorHat[0];
				pallet2 = obj_stats.colorHat[1];
				pallet3 = obj_stats.colorHat[2];
			break;
			case 1:
				part = "Skin"
				pallet1 = obj_stats.colorSkin[0];
				pallet2 = obj_stats.colorSkin[1];
				pallet3 = obj_stats.colorSkin[2];
			break;
			case 2:
				part = "Hair"
				pallet1 = obj_stats.colorHair[0];
				pallet2 = obj_stats.colorHair[1];
				pallet3 = obj_stats.colorHair[2];
			break;
			case 3:
				part = "Shirt"
				pallet1 = obj_stats.colorShirt[0];
				pallet2 = obj_stats.colorShirt[1];
				pallet3 = obj_stats.colorShirt[2];
			break;
			case 4:
				part = "Stripe"
				pallet1 = obj_stats.colorStripe[0];
				pallet2 = obj_stats.colorStripe[1];
				pallet3 = obj_stats.colorStripe[2];
			break;
			case 5:
				part = "Pants"
				pallet1 = obj_stats.colorPants[0];
				pallet2 = obj_stats.colorPants[1];
				pallet3 = obj_stats.colorPants[2];
			break;
			case 6:
				part = "Shoes"
				pallet1 = obj_stats.colorShoes[0];
				pallet2 = obj_stats.colorShoes[1];
				pallet3 = obj_stats.colorShoes[2];
			break;
		}
		
		draw_text_transformed(room_width/2, 100, part, 0.8, 0.8, 0);
		
		for(var i = 1; i < 4; i++)
		{
			switch(i)
			{
				case 1:
					color = c_red;
					letter = "R";
					palletOR = pallet1;
				break;
				case 2:
					color = c_green;
					letter = "G";
					palletOR = pallet2;
				break;
				case 3:
					color = c_blue;
					letter = "B";
					palletOR = pallet3;
				break;
				case 4:
					color = c_maroon; //moron
					letter = "Well its just dont show up idk why? This is joke or what?, Like what the hell man";
				break;
			}
			
			var collor;
			if(i == pallet)
				collor = c_yellow;
			else
				collor = c_white
			
			draw_text_transformed(240, 115 + (i * 40), palletOR,0.8, 0.8, 0);
			draw_rectangle_color(40, 120 + (i * 40), 220, 140 + (i * 40), c_white, color, color, c_white, false);
			
			arrow_pos = 40 + ((palletOR/255) * 180)
			
			draw_sprite(spr_smallArrow, 0, arrow_pos, 120 + (i * 40));
			draw_text_color(20, 114 + (i * 40), letter, collor,collor,collor,collor, 1)
		}
		
		if(keyboard_check_pressed(vk_enter))
		{
			changing_pallet = !changing_pallet;
		}
		
		if(changing_pallet)
		{
			var change_var = variable_instance_get(obj_stats, "color" + string(part));
			var choise = pallet-1;
			
			if(keyboard_check(vk_left) && change_var[choise] > 0)
				change_var[choise]--;
			if(keyboard_check(vk_right) && change_var[choise] < 255)
				change_var[choise]++;
			
			text = "Press ENTER to exit from color";
		}
		
		 scr_skinswapdude(c_white);
			draw_sprite_ext(spr_dudeloss, 0, room_width/2 + 140, room_height - 130, 1.2, 1.2, 0, image_blend, 1);
		shader_reset();
		
		draw_set_halign(fa_left)
		draw_text_transformed(10, room_height-60, text, 0.4, 0.4, 0);
		
		draw_set_halign(fa_center)
		draw_text_transformed(room_width/2, room_height-120, string_hash_to_newline("Note: Skin will NOT save if you#close game"), 0.6, 0.6, 0);
		
		draw_text_transformed(room_width/2, room_height-40, "Press X to Exit", 0.8, 0.8, 0);
		
		if(keyboard_check_pressed(ord("X")))
			menu_state = MENU_STATE.normal;
	break;
}