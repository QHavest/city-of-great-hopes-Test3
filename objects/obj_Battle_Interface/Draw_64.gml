//Інтерфейс
if(battle_start = true){
	instance_deactivate_object(obj_inventory);
	draw_sprite(spr_battleI, 0, gui_W/100, gui_H/100);
	draw_sprite(spr_screen, screen, gui_W/3.918, gui_H/1.926);
	draw_sprite(spr_hpRed, 0, gui_W/1.265, gui_H/1.223);
	draw_sprite(spr_darkarr, 0, gui_W/10.69, gui_H/1.203);
	//полоска хп
	draw_sprite_part(spr_hpGreen, 0, 0, 0, amount_hp, 35, gui_W/1.2568, gui_H/1.112);
	//мерехтілка
	draw_sprite(spr_red_l, light_bi, gui_W/5.41, gui_H/2.40);
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
	draw_set_font(font_azariya_textbox)
	draw_set_color(c_gray);
	draw_text_ext(gui_W/1.233, gui_H/1.85, st_text_torchky, stringHeight_torchky, 238);
	}
	///////////////Діалоги
	if(BDialogue = true){
		//if(torchky)
		draw_set_font(font_azariya_textbox)
		draw_text_ext_color(gui_W/3.6, gui_H/1.65, dia_torchky[1][0], stringHeight_torchky, 800, varcol[1], varcol[1], varcol[1], varcol[1], 1);
		draw_text_ext_color(gui_W/3.6, gui_H/1.40, dia_torchky[2][0], stringHeight_torchky, 800, varcol[2], varcol[2], varcol[2], varcol[2], 1);
		draw_text_ext_color(gui_W/3.6, gui_H/1.20, dia_torchky[3][0], stringHeight_torchky, 800, varcol[3], varcol[3], varcol[3], varcol[3], 1);
	}
	//if(BDialogue = true){
	//	//if(caucasci)
	//	draw_set_font(font_azariya_textbox)
	//	draw_text_ext_color(gui_W/3.6, gui_H/1.65, asset_get_index( "dia_caucasci[1][0]"), stringHeight_torchky, 800, varcol[1], varcol[1], varcol[1], varcol[1], 1);
	//	draw_text_ext_color(gui_W/3.6, gui_H/1.40, asset_get_index( "dia_caucasci[2][0]"), stringHeight_torchky, 800, varcol[2], varcol[2], varcol[2], varcol[2], 1);
	//	draw_text_ext_color(gui_W/3.6, gui_H/1.20, asset_get_index( "dia_caucasci[3][0]"), stringHeight_torchky, 800, varcol[3], varcol[3], varcol[3], varcol[3], 1);
	//}
	//if(BDialogue = true){
	//	//if(sectants)
	//	draw_set_font(font_azariya_textbox)
	//	draw_text_ext_color(gui_W/3.6, gui_H/1.65, asset_get_index( "dia_sect[1][0]"), stringHeight_torchky, 800, varcol[1], varcol[1], varcol[1], varcol[1], 1);
	//	draw_text_ext_color(gui_W/3.6, gui_H/1.40, asset_get_index( "dia_sect[2][0]"), stringHeight_torchky, 800, varcol[2], varcol[2], varcol[2], varcol[2], 1);
	//	draw_text_ext_color(gui_W/3.6, gui_H/1.20, asset_get_index( "dia_sect[3][0]"), stringHeight_torchky, 800, varcol[3], varcol[3], varcol[3], varcol[3], 1);
	//}
	//if(BDialogue = true){
	//	//if(hopniki)
	//	draw_set_font(font_azariya_textbox)
	//	draw_text_ext_color(gui_W/3.6, gui_H/1.65, asset_get_index( "dia_hopniki[1][0]"), stringHeight_torchky, 800, varcol[1], varcol[1], varcol[1], varcol[1], 1);
	//	draw_text_ext_color(gui_W/3.6, gui_H/1.40, asset_get_index( "dia_hopniki[2][0]"), stringHeight_torchky, 800, varcol[2], varcol[2], varcol[2], varcol[2], 1);
	//	draw_text_ext_color(gui_W/3.6, gui_H/1.20, asset_get_index( "dia_hopniki[3][0]"), stringHeight_torchky, 800, varcol[3], varcol[3], varcol[3], varcol[3], 1);
	//}
	
} else {instance_activate_object(obj_inventory);}

