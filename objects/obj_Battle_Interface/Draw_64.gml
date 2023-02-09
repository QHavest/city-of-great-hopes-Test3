//Інтерфейс
if(battle_start = true){
	instance_deactivate_object(obj_inventory);
	draw_sprite_ext(Sprite1041, 0, 0, 0,0.1,1.5,0,c_black,1);
	draw_sprite(spr_battleI, 0, gui_W/100, gui_H/100);

	var maxs = global.MaxHp;
	draw_text(0,0,maxs)
	//draw_sprite(spr_screen, 0, gui_W/4, gui_H/2);
	//draw_sprite(spr_background_narko, 0, gui_W/4, gui_H/2);

	/*
	if(battle_start = true){
	draw_sprite(spr_background_narko, 0, gui_W/3.925, gui_H/1.892);
	}*/
	
	// полоска hp ворогів
	
	//кнопки
	if (system = 0){
		if(global.LANGUAGE == "eng"){
			draw_sprite_ext(asset_get_index("spr_" + button[1] + "Fight"), 0,  gui_W/11.18, gui_H/1.865, 1, 1, 0, c_white, butt_invis);
			draw_sprite_ext(asset_get_index("spr_" + button[2] + "Escape"), 0,  gui_W/11.18, gui_H/1.640, 1, 1, 0, c_white, butt_invis);
			draw_sprite_ext(asset_get_index("spr_" + button[3] + "Trade"), 0,  gui_W/11.18, gui_H/1.465, 1, 1, 0, c_white, butt_invis);
			draw_sprite_ext(asset_get_index("spr_" + button[4] + "Dialogue"), 0, gui_W/11.18, gui_H/1.320, 1, 1, 0, c_white, butt_invis);
		} else if(global.LANGUAGE == "ua"){
			draw_sprite_ext(asset_get_index("spr_" + button[1] + "Biy"), 0,  gui_W/11.18, gui_H/1.865, 1, 1, 0, c_white, butt_invis);
			draw_sprite_ext(asset_get_index("spr_" + button[2] + "Vtecha"), 0,  gui_W/11.18, gui_H/1.640, 1, 1, 0, c_white, butt_invis);
			draw_sprite_ext(asset_get_index("spr_" + button[3] + "Torg"), 0,  gui_W/11.18, gui_H/1.465, 1, 1, 0, c_white, butt_invis);
			draw_sprite_ext(asset_get_index("spr_" + button[4] + "Dialog"), 0, gui_W/11.18, gui_H/1.320, 1, 1, 0, c_white, butt_invis);	
		}
	}
	if(system = 1){
	if(global.LANGUAGE == "eng"){
			draw_sprite(asset_get_index("spr_" + button[1] + "Ratsy"), 0,  gui_W/11.18, gui_H/1.865);
			draw_sprite(asset_get_index("spr_" + button[2] + "Cudgel"), 0,  gui_W/11.18, gui_H/1.640);
			draw_sprite_ext(asset_get_index("spr_" + button[3] + "Trade"), 0,  gui_W/11.18, gui_H/1.465, 1, 1, 0, c_white, 0.5);
			draw_sprite_ext(asset_get_index("spr_" + button[4] + "Dialogue"), 0, gui_W/11.18, gui_H/1.320, 1, 1, 0, c_white, 0.5);
	} else if(global.LANGUAGE == "ua"){
			draw_sprite(asset_get_index("spr_" + button[1] + "Krys"), 0,  gui_W/11.18, gui_H/1.865);
			draw_sprite(asset_get_index("spr_" + button[2] + "Ytopurok"), 0,  gui_W/11.18, gui_H/1.640);
			draw_sprite_ext(asset_get_index("spr_" + button[3] + "Torg"), 0,  gui_W/11.18, gui_H/1.465, 1, 1, 0, c_white, 0.5);
			draw_sprite_ext(asset_get_index("spr_" + button[4] + "Dialog"), 0, gui_W/11.18, gui_H/1.320, 1, 1, 0, c_white, 0.5);	
		}
	}
	if(system = 2){
	if(global.LANGUAGE == "eng"){
			draw_sprite(asset_get_index("spr_" + button[1] + "Fight"), 0,  gui_W/11.18, gui_H/1.865);
			draw_sprite(asset_get_index("spr_" + button[2] + "Pay"), 0,  gui_W/11.18, gui_H/1.640);
			draw_sprite_ext(asset_get_index("spr_" + button[3] + "Trade"), 0,  gui_W/11.18, gui_H/1.465, 1, 1, 0, c_white, 0.5);
			draw_sprite_ext(asset_get_index("spr_" + button[4] + "Dialogue"), 0, gui_W/11.18, gui_H/1.320, 1, 1, 0, c_white, 0.5);
	} else if(global.LANGUAGE == "ua"){
			draw_sprite(asset_get_index("spr_" + button[1] + "Biy"), 0,  gui_W/11.18, gui_H/1.865);
			draw_sprite(asset_get_index("spr_" + button[2] + "Viddaty"), 0,  gui_W/11.18, gui_H/1.640);
			draw_sprite_ext(asset_get_index("spr_" + button[3] + "Torg"), 0,  gui_W/11.18, gui_H/1.465, 1, 1, 0, c_white, 0.5);
			draw_sprite_ext(asset_get_index("spr_" + button[4] + "Dialog"), 0, gui_W/11.18, gui_H/1.320, 1, 1, 0, c_white, 0.5);	
		}
	}
	/////////////Cтатистика
	if(mini_game = true){
	draw_set_font(font_azariya_textbox_2)
	draw_set_color(c_gray);
	switch (enemies){
		case ENEMY.Narkomany :
		draw_text_ext(gui_W/1.233, gui_H/1.80, st_text_torchky, stringHeight_torchky, 238);
		break;
		case ENEMY.Kavkazci :
		draw_text_ext(gui_W/1.233, gui_H/1.80, "Press 'W' or 'Arrow S' and 'Up' or 'Arrow Down' to start the fight. Dodge USSR symbolic.", stringHeight_torchky, 238);
		break;
		case ENEMY.Sectants :
		draw_text_ext(gui_W/1.233, gui_H/1.80, "Press 'WASD' or 'Arrows' to start the fight. Dodge crosses that falls from the sky.", stringHeight_torchky, 238);
		break;
		/*case ENEMY.Ytopurok_mini :
		draw_text_ext(gui_W/1.233, gui_H/1.80, st_text_torchky, stringHeight_torchky, 238);
		break;
		case ENEMY.Krus_mini :
		draw_text_ext(gui_W/1.233, gui_H/1.80, st_text_torchky, stringHeight_torchky, 238);
		break;*/
		case ENEMY.Hopniki :
		draw_text_ext(gui_W/1.233, gui_H/1.80, "Press 'WASD' or 'Arrows' to start the fight. Dodge knives.", stringHeight_torchky, 238);
		break;
	}
	
	}
	///////////////Діалоги
	if(BDialogue = true){
		if(enemies = ENEMY.Torchky){
		draw_set_font(font_azariya_textbox)
		draw_text_ext_color(gui_W/3.6, gui_H/1.65, dia_torchky[1][0], stringHeight_torchky, 800, varcol[1], varcol[1], varcol[1], varcol[1], 1);
		draw_text_ext_color(gui_W/3.6, gui_H/1.40, dia_torchky[2][0], stringHeight_torchky, 800, varcol[2], varcol[2], varcol[2], varcol[2], 1);
		draw_text_ext_color(gui_W/3.6, gui_H/1.20, dia_torchky[3][0], stringHeight_torchky, 800, varcol[3], varcol[3], varcol[3], varcol[3], 1);
		
		draw_set_font(font_azariya_textbox);
		if(alarm[2] > 1 and luck > 29){
			draw_text_ext_color(gui_W/2.25, gui_H/9, dia_torchky[1][1], stringHeight_torchky, 250, c_orange, c_orange, c_orange, c_orange, 1);
		}
		if(alarm[2] > 1 and luck > 9 and luck < 30){
			draw_text_ext_color(gui_W/2.25, gui_H/9, dia_torchky[2][1], stringHeight_torchky, 250, c_orange, c_orange, c_orange, c_orange, 1);
		}
		if(alarm[2] > 1 and luck < 10){
			draw_text_ext_color(gui_W/2.25, gui_H/9, dia_torchky[3][1], stringHeight_torchky, 250, c_orange, c_orange, c_orange, c_orange, 1);
		}
		if(alarm[2] > 1 and luck > 29 and answer = 2){
			draw_text_ext_color(gui_W/2.25, gui_H/9, dia_torchky[1][2], stringHeight_torchky, 250, c_orange, c_orange, c_orange, c_orange, 1);
		}
		if(alarm[2] > 1 and luck < 30 and answer = 2){
			draw_text_ext_color(gui_W/2.25, gui_H/9, dia_torchky[2][2], stringHeight_torchky, 250, c_orange, c_orange, c_orange, c_orange, 1);
		}
		}
		
		if(enemies = ENEMY.Kavkazci){
		draw_set_font(font_azariya_textbox);
		draw_text_ext_color(gui_W/3.6, gui_H/1.65, dia_caucasci[1][0], stringHeight_torchky, 800, varcol[1], varcol[1], varcol[1], varcol[1], 1);
		draw_text_ext_color(gui_W/3.6, gui_H/1.40, dia_caucasci[2][0], stringHeight_torchky, 800, varcol[2], varcol[2], varcol[2], varcol[2], 1);
		draw_text_ext_color(gui_W/3.6, gui_H/1.20, dia_caucasci[3][0], stringHeight_torchky, 800, varcol[3], varcol[3], varcol[3], varcol[3], 1);
	
		if(alarm[2] > 1 and luck < 90){
			draw_text_ext_color(gui_W/1.4, gui_H/5.4, dia_caucasci[1][1], stringHeight_torchky, 300, c_orange, c_orange, c_orange, c_orange, 1);
		}
		if(alarm[2] > 1 and luck > 89){
			draw_text_ext_color(gui_W/1.4, gui_H/5.4, dia_caucasci[2][1], stringHeight_torchky, 300, c_orange, c_orange, c_orange, c_orange, 1);
		}
		
		if(alarm[2] > 1 and luck > 50 and answer = 2){
			draw_text_ext_color(gui_W/1.335, gui_H/7, dia_caucasci[1][2], stringHeight_torchky, 300, c_orange, c_orange, c_orange, c_orange, 1);
		}
		if(alarm[2] > 1 and luck < 51 and answer = 2){
			draw_text_ext_color(gui_W/1.335, gui_H/7, dia_caucasci[2][2], stringHeight_torchky, 300, c_orange, c_orange, c_orange, c_orange, 1);
		}
	}	
	
	if(enemies = ENEMY.Sect){
		draw_set_font(font_azariya_textbox)
		draw_text_ext_color(gui_W/3.6, gui_H/1.65, dia_sect[1][0], stringHeight_torchky, 800, varcol[1], varcol[1], varcol[1], varcol[1], 1);
		draw_text_ext_color(gui_W/3.6, gui_H/1.40, dia_sect[2][0], stringHeight_torchky, 800, varcol[2], varcol[2], varcol[2], varcol[2], 1);
		draw_text_ext_color(gui_W/3.6, gui_H/1.20, dia_sect[3][0], stringHeight_torchky, 800, varcol[3], varcol[3], varcol[3], varcol[3], 1);
	
	if(alarm[2] > 1 and luck > 29){
			draw_text_ext_color(gui_W/1.4, gui_H/5.4, dia_sect[1][1], stringHeight_torchky, 300, c_orange, c_orange, c_orange, c_orange, 1);
		}
		if(alarm[2] > 1 and luck > 9 and luck < 30){
			draw_text_ext_color(gui_W/1.4, gui_H/5.4, dia_sect[2][1], stringHeight_torchky, 300, c_orange, c_orange, c_orange, c_orange, 1);
		}
		if(alarm[2] > 1 and luck < 10){
			draw_text_ext_color(gui_W/1.35, gui_H/5.8, dia_sect[3][1], stringHeight_torchky, 300, c_orange, c_orange, c_orange, c_orange, 1);
		}
	
		if(alarm[2] > 1 and luck > 29 and answer = 2){
			draw_text_ext_color(gui_W/1.335, gui_H/7, dia_sect[1][2], stringHeight_torchky, 300, c_orange, c_orange, c_orange, c_orange, 1);
		}
		if(alarm[2] > 1 and luck < 30 and answer = 2){
			draw_text_ext_color(gui_W/1.335, gui_H/7, dia_sect[2][2], stringHeight_torchky, 300, c_orange, c_orange, c_orange, c_orange, 1);
		}
	}

	if(enemies = ENEMY.Hopniki){
		draw_set_font(font_azariya_textbox)
		draw_text_ext_color(gui_W/3.6, gui_H/1.65, dia_hopniki[1][0], stringHeight_torchky, 800, varcol[1], varcol[1], varcol[1], varcol[1], 1);
		draw_text_ext_color(gui_W/3.6, gui_H/1.40, dia_hopniki[2][0], stringHeight_torchky, 800, varcol[2], varcol[2], varcol[2], varcol[2], 1);
		draw_text_ext_color(gui_W/3.6, gui_H/1.20, dia_hopniki[3][0], stringHeight_torchky, 800, varcol[3], varcol[3], varcol[3], varcol[3], 1);
	
	if(alarm[2] > 1){
			draw_text_ext_color(gui_W/1.4, gui_H/5.4, dia_hopniki[2][1], stringHeight_torchky, 300, c_orange, c_orange, c_orange, c_orange, 1);
		}
	if(alarm[2] > 1 and answer = 2){
			draw_text_ext_color(gui_W/1.335, gui_H/7, dia_hopniki[2][2], stringHeight_torchky, 300, c_orange, c_orange, c_orange, c_orange, 1);
		}
	}
	}
} else {instance_activate_object(obj_inventory);}

