//Інтерфейс
if(battle_start = true){
	instance_deactivate_object(Settings);
	instance_deactivate_object(obj_inventory);
	draw_sprite_ext(Sprite1041, 0, 0, 0,0.1,1.5,0,c_black,1);
	
	switch(enemies){
		case ENEMY.Hopniki:
		draw_sprite(spr_battle_fones, 7, gui_W/(-400), gui_H/107);
		break;
		case ENEMY.Kavkazci:
			draw_sprite(spr_battle_fones, 2, gui_W/(-400), gui_H/107);
		break;
		case ENEMY.Narkomany:
			draw_sprite(spr_battle_fones, 1, gui_W/(-400), gui_H/107);
		break;
		case ENEMY.Sectants:
			draw_sprite(spr_battle_fones, 6, gui_W/(-400), gui_H/107);
		break;
	}
	
	//мерехтілка
	draw_sprite(spr_red_l,  light_bi, gui_W/1.242, gui_H/2.405);
	
	//var maxs = global.MaxHp;
	//draw_text(0,0,maxs)
	//draw_sprite(spr_screen, 0, gui_W/4, gui_H/2);
	//draw_sprite(spr_background_narko, 0, gui_W/4, gui_H/2);

	/*
	if(battle_start = true){
	draw_sprite(spr_background_narko, 0, gui_W/3.925, gui_H/1.892);
	}*/
	
	// полоска hp ворогів
	if (hp_enemies == true){
	switch(enemies){
		case ENEMY.Hopniki:
		var xhp1 = gui_W/2.2568;
		var xhp2 = gui_W/2.7968;
		var xhp3 = gui_W/3.5368;
		var yhp = gui_H/6.812;
		switch(hp_one)
		{
			case 0:
				if(obj_enemy3_battle.phasese_enemy3 != PHASESE_ENEMY3.Defeat)
					{
					draw_sprite_part(hp_hopnik_empty, 0, 0, 0,96, 16, xhp1, yhp);
					}
				draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, xhp1, yhp);
				draw_sprite_part(hp_hopnik_empty, 0, 0, 0,96, 16,	xhp2, yhp);
				draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, xhp2,yhp);
				draw_sprite_part(hp_hopnik_empty, 0, 0, 0,96, 16, xhp3, yhp);
				draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, xhp3, yhp);
					if (amount_hp_enemy <= 0 and hp_one == 0)
						{
						obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat
						obj_enemy3_battle.image_index = 0;
						amount_hp_enemy = 96;
						hp_one += 1;
						}
			break;
			case 1:
				if(obj_enemy1_battle.phasese_enemy1 != PHASESE_ENEMY1.Defeat)
					{
					draw_sprite_part(hp_hopnik_empty, 0, 0, 0,96, 16, xhp2, yhp);
					}
					draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, xhp2, yhp);
					draw_sprite_part(hp_hopnik_empty, 0, 0, 0,96, 16, xhp3, yhp);
					draw_sprite_part(hp_hopnik_full, 0, 0, 0,96, 16, xhp3, yhp);
					if (amount_hp_enemy <= 0 and hp_one == 1)
						{
						obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat
						obj_enemy1_battle.image_index = 0;
						amount_hp_enemy = 96;
						hp_one += 1;
						}
			break;
			case 2:
				if(obj_enemy2_battle.phasese_enemy2 != PHASESE_ENEMY2.Defeat)
					{
					draw_sprite_part(hp_hopnik_empty, 0, 0, 0,96, 16, xhp3, yhp);
					}
					draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, xhp3, yhp);
						if (amount_hp_enemy <= 0 and hp_one == 2)
							{
							obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Defeat
							obj_enemy2_battle.image_index = 0;
							hp_one += 1;
							switch(global.LANGUAGE)
							{
								case "eng":
								instance_create_depth(466,570,-600,obj_youwon);
								break;
								case "ua":
								instance_create_depth(466,570,-600,obj_youwon).sprite_index = spr_youwonUA;
								break;
							}
							
							}
			break;
		}
		
		break;
		case ENEMY.Kavkazci:
		var xhp1 = gui_W/2.2768;
		var xhp2 = gui_W/2.7968;
		var xhp3 = gui_W/3.5068;
		var yhp = gui_H/6.612;
		switch(hp_one)
		{
			case 0:
				if(obj_enemy3_battle.phasese_enemy3 != PHASESE_ENEMY3.Defeat)
					{
					draw_sprite_part(hp_kavkaz_empty, 0, 0, 0,96, 16, xhp1, yhp);
					}
					draw_sprite_part(hp_kavkaz_full, 0, 0, 0,amount_hp_enemy, 16, xhp1, yhp);
					draw_sprite_part(hp_kavkaz_empty, 0, 0, 0,96, 16, xhp2, gui_H/7.312);
					draw_sprite_part(hp_kavkaz_full, 0, 0, 0,96, 16, xhp2, gui_H/7.312);
					draw_sprite_part(hp_kavkaz_empty, 0, 0, 0,96, 16, xhp3, yhp);
					draw_sprite_part(hp_kavkaz_full, 0, 0, 0,96, 16, xhp3, yhp);
					if (amount_hp_enemy <= 0 and hp_one == 0)
					{
						obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat
						obj_enemy3_battle.image_index = 0;
						amount_hp_enemy = 96;
						hp_one += 1;
					}
			break;
			case 1:
				if(obj_enemy1_battle.phasese_enemy1 != PHASESE_ENEMY1.Defeat)
					{
					draw_sprite_part(hp_kavkaz_empty, 0, 0, 0,96, 16, xhp2, gui_H/7.312);
					}
					draw_sprite_part(hp_kavkaz_full, 0, 0, 0,amount_hp_enemy, 16, xhp2, gui_H/7.312);
					draw_sprite_part(hp_kavkaz_empty, 0, 0, 0,96, 16, xhp3, yhp);
					draw_sprite_part(hp_kavkaz_full, 0, 0, 0,96, 16, xhp3, yhp);
					if (amount_hp_enemy <= 0 and hp_one == 1)
						{
						obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat
						obj_enemy1_battle.image_index = 0;
						amount_hp_enemy = 96;
						hp_one += 1;
						}
			break;
			case 2:
			if(obj_enemy2_battle.phasese_enemy2 != PHASESE_ENEMY2.Defeat)
					{
					draw_sprite_part(hp_kavkaz_empty, 0, 0, 0,96, 16, xhp3, yhp);
					}
					draw_sprite_part(hp_kavkaz_full, 0, 0, 0,amount_hp_enemy, 16, xhp3, yhp);
						if (amount_hp_enemy <= 0 and hp_one == 2)
							{
							obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Defeat
							obj_enemy2_battle.image_index = 0;
							hp_one += 1;
							switch(global.LANGUAGE)
							{
								case "eng":
								instance_create_depth(466,570,-600,obj_youwon);
								break;
								case "ua":
								instance_create_depth(466,570,-600,obj_youwon).sprite_index = spr_youwonUA;
								break;
							}
							}
						
			break;
		}
		break;
		case ENEMY.Narkomany:
		var xhp1 = gui_W/2.2968;
		var xhp2 = gui_W/2.7968;
		var xhp3 = gui_W/3.5368;
		switch(hp_one)
		{
			case 0:
				if(obj_enemy3_battle.phasese_enemy3 != PHASESE_ENEMY3.Defeat)
					{
						draw_sprite_part(hp_narko_empty, 0, 0, 0,96, 16, xhp1, gui_H/7.312);
					}
				draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, xhp1, gui_H/7.312);
				draw_sprite_part(hp_narko_empty, 0, 0, 0,96, 16, xhp2, gui_H/7.312);
				draw_sprite_part(hp_narko_full, 0, 0, 0,96, 16, xhp2, gui_H/7.312);
				draw_sprite_part(hp_narko_empty, 0, 0, 0,96, 16, xhp3, gui_H/7.312);
				draw_sprite_part(hp_narko_full, 0, 0, 0,96, 16, xhp3, gui_H/7.312);
					if (amount_hp_enemy <= 0 and hp_one == 0)
					{
						obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat
						obj_enemy3_battle.image_index = 0;
						amount_hp_enemy = 96;
						hp_one += 1;
					}
			break;
			case 1:
				if(obj_enemy1_battle.phasese_enemy1 != PHASESE_ENEMY1.Defeat)
						{
							draw_sprite_part(hp_narko_empty, 0, 0, 0,96, 16, xhp2, gui_H/7.312);
						}
						draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, xhp2, gui_H/7.312);
						draw_sprite_part(hp_narko_empty, 0, 0, 0,96, 16, xhp3, gui_H/7.312);
						draw_sprite_part(hp_narko_full, 0, 0, 0,96, 16, xhp3, gui_H/7.312);
						if (amount_hp_enemy <= 0 and hp_one == 1)
							{
							obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat
							obj_enemy1_battle.image_index = 0;
							amount_hp_enemy = 96;
							hp_one += 1;
							}
			break;
			case 2:
				if(obj_enemy2_battle.phasese_enemy2 != PHASESE_ENEMY2.Defeat)
						{
							draw_sprite_part(hp_narko_empty, 0, 0, 0,96, 16, xhp3, gui_H/7.312);
						}
						draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, xhp3, gui_H/7.312);
						if (amount_hp_enemy <= 0 and hp_one == 2)
							{
							obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Defeat
							obj_enemy2_battle.image_index = 0;
							hp_one += 1;
							switch(global.LANGUAGE)
							{
								case "eng":
								instance_create_depth(466,570,-600,obj_youwon);
								break;
								case "ua":
								instance_create_depth(466,570,-600,obj_youwon).sprite_index = spr_youwonUA;
								break;
							}
							}
			break;
		}
		
		break;
		case ENEMY.Sectants:
		var xhp1 = gui_W/2.2668;
		var xhp2 = gui_W/2.8468;
		var xhp3 = gui_W/3.5968;
			switch(hp_one)
			{
				case 0:
					if(obj_enemy3_battle.phasese_enemy3 != PHASESE_ENEMY3.Defeat)
						{
						draw_sprite_part(hp_sects_empty, 0, 0, 0,96, 16, xhp1,gui_H/4.612);
						}
						draw_sprite_part(hp_sects_full, 0, 0, 0,amount_hp_enemy, 16, xhp1, gui_H/4.612);
						draw_sprite_part(hp_sects_empty, 0, 0, 0,96, 16, xhp2, gui_H/7.312);
						draw_sprite_part(hp_sects_full, 0, 0, 0,96, 16, xhp2, gui_H/7.312);
						draw_sprite_part(hp_sects_empty, 0, 0, 0,96, 16, xhp3, gui_H/4.612);
						draw_sprite_part(hp_sects_full, 0, 0, 0,96, 16, xhp3, gui_H/4.612);
						if (amount_hp_enemy <= 0 and hp_one == 0)
							{
							obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat
							obj_enemy3_battle.image_index = 0;
							amount_hp_enemy = 96;
							hp_one += 1;
							}
				break;
				case 1:
					if(obj_enemy1_battle.phasese_enemy1 != PHASESE_ENEMY1.Defeat)
						{
						draw_sprite_part(hp_sects_empty, 0, 0, 0,96, 16, xhp2, gui_H/7.312);
						}
						draw_sprite_part(hp_sects_full, 0, 0, 0,amount_hp_enemy, 16, xhp2, gui_H/7.312);
						draw_sprite_part(hp_sects_empty, 0, 0, 0,96, 16, xhp3, gui_H/4.612);
						draw_sprite_part(hp_sects_full, 0, 0, 0,96, 16, xhp3, gui_H/4.612);
						if (amount_hp_enemy <= 0 and hp_one == 1)
							{
							obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat
							obj_enemy1_battle.image_index = 0;
							amount_hp_enemy = 96;
							hp_one += 1;
							}
				break;
				case 2:
					if(obj_enemy2_battle.phasese_enemy2 != PHASESE_ENEMY2.Defeat)
						{
						draw_sprite_part(hp_sects_empty, 0, 0, 0,96, 16, xhp3, gui_H/4.612);
						}
						draw_sprite_part(hp_sects_full, 0, 0, 0,amount_hp_enemy, 16, xhp3, gui_H/4.612);
						if (amount_hp_enemy <= 0 and hp_one == 2)
							{
							obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Defeat
							obj_enemy2_battle.image_index = 0;
								hp_one += 1;
							switch(global.LANGUAGE)
							{
								case "eng":
								instance_create_depth(466,570,-600,obj_youwon);
								break;
								case "ua":
								instance_create_depth(466,570,-600,obj_youwon).sprite_index = spr_youwonUA;
								break;
							}
							}
				break;
			}
		
		break;
	 }
	}
	//кнопки
switch(global.LANGUAGE)
	{
		case "eng":
			switch(system)
			{
				case 0:
				    draw_sprite_ext(asset_get_index("spr_" + button[1] + "Fight"), 0,  gui_W/12.95, gui_H/1.865, 1, 1, 0, c_white, butt_invis);
					draw_sprite_ext(asset_get_index("spr_" + button[2] + "Escape"), 0,  gui_W/12.95, gui_H/1.640, 1, 1, 0, c_white, butt_invis);
					draw_sprite_ext(asset_get_index("spr_" + button[3] + "Trade"), 0,  gui_W/12.95, gui_H/1.465, 1, 1, 0, c_white, butt_invis);
					draw_sprite_ext(asset_get_index("spr_" + button[4] + "Dialogue"), 0, gui_W/12.95, gui_H/1.320, 1, 1, 0, c_white, 0.5);
				break;
				case 1:
				if (obj_ytopur_battle.phasese != PHASESE.Defeat2){
					draw_sprite(asset_get_index("spr_" + button[1] + "Cudgel"), 0,  gui_W/12.95, gui_H/1.865);
				} else {draw_sprite_ext(asset_get_index("spr_" + button[1] + "Cudgel"), 0,  gui_W/12.95, gui_H/1.865, 1, 1, 0, c_white, 0.5);}
					draw_sprite(asset_get_index("spr_" + button[2] + "Ratsy"), 0,  gui_W/12.95, gui_H/1.640);
					draw_sprite_ext(asset_get_index("spr_" + button[3] + "Trade"), 0,  gui_W/12.95, gui_H/1.465, 1, 1, 0, c_white, 0.5);
					draw_sprite_ext(asset_get_index("spr_" + button[4] + "Dialogue"), 0, gui_W/12.95, gui_H/1.320, 1, 1, 0, c_white, 0.5);
				break;
				case 2:
					draw_sprite(asset_get_index("spr_" + button[1] + "Fight"), 0,  gui_W/12.95, gui_H/1.865);
					draw_sprite(asset_get_index("spr_" + button[2] + "Pay"), 0,  gui_W/12.95, gui_H/1.640);
					draw_sprite_ext(asset_get_index("spr_" + button[3] + "Trade"), 0,  gui_W/12.95, gui_H/1.465, 1, 1, 0, c_white, 0.5);
					draw_sprite_ext(asset_get_index("spr_" + button[4] + "Dialogue"), 0, gui_W/12.95, gui_H/1.320, 1, 1, 0, c_white, 0.5);
				break;
			}
		break;
		case "ua":
			switch(system)
			{
				case 0:
					draw_sprite_ext(asset_get_index("spr_" + button[1] + "Biy"), 0,  gui_W/12.95, gui_H/1.865, 1, 1, 0, c_white, butt_invis);
					draw_sprite_ext(asset_get_index("spr_" + button[2] + "Vtecha"), 0,  gui_W/12.95, gui_H/1.640, 1, 1, 0, c_white, butt_invis);
					draw_sprite_ext(asset_get_index("spr_" + button[3] + "Torg"), 0,  gui_W/12.95, gui_H/1.465, 1, 1, 0, c_white, butt_invis);
					draw_sprite_ext(asset_get_index("spr_" + button[4] + "Dialog"), 0, gui_W/12.95, gui_H/1.320, 1, 1, 0, c_white, 0.5);	
				break;
				case 1:
				if (obj_ytopur_battle.phasese != PHASESE.Defeat2){
					draw_sprite(asset_get_index("spr_" + button[1] + "Ytopurok"), 0,  gui_W/12.95, gui_H/1.865);
				} else {draw_sprite_ext(asset_get_index("spr_" + button[1] + "Ytopurok"), 0,  gui_W/12.95, gui_H/1.865, 1, 1, 0, c_white, 0.5);}
					draw_sprite(asset_get_index("spr_" + button[2] + "Krys"), 0,  gui_W/12.95, gui_H/1.640);
					draw_sprite_ext(asset_get_index("spr_" + button[3] + "Torg"), 0,  gui_W/12.95, gui_H/1.465, 1, 1, 0, c_white, 0.5);
					draw_sprite_ext(asset_get_index("spr_" + button[4] + "Dialog"), 0, gui_W/12.95, gui_H/1.320, 1, 1, 0, c_white, 0.5);
				break;
				case 2:
					draw_sprite(asset_get_index("spr_" + button[1] + "Biy"), 0,  gui_W/12.95, gui_H/1.865);
					draw_sprite(asset_get_index("spr_" + button[2] + "Viddaty"), 0,  gui_W/12.95, gui_H/1.640);
					draw_sprite_ext(asset_get_index("spr_" + button[3] + "Torg"), 0,  gui_W/12.95, gui_H/1.465, 1, 1, 0, c_white, 0.5);
					draw_sprite_ext(asset_get_index("spr_" + button[4] + "Dialog"), 0, gui_W/12.95, gui_H/1.320, 1, 1, 0, c_white, 0.5);
				break;
			}
		break;
		
	}
	/////////////////////////ДОПОМОГА З МІНІІГРАМИ/////////////////////////////////////
	switch(games)
	{
		case true:
			draw_set_font(font_azariya_textbox_2)
			draw_set_color(c_gray);
			scr_help_minigame()
		break;
		
		case false:
			draw_set_font(font_azariya_textbox_2)
			draw_set_color(c_gray);
			switch (enemies){
				case ENEMY.Narkomany :
					if (flash_state) {
					draw_set_alpha(0.5); 
					scr_help_minigame_wait();
					draw_set_alpha(1);
					} else 
						{
							scr_help_minigame_wait();
							draw_set_alpha(1);
						}
				break;
				case ENEMY.Kavkazci :
					if (flash_state) {
					draw_set_alpha(0.5); 
					scr_help_minigame_wait();
					draw_set_alpha(1);
					} else 
						{
							scr_help_minigame_wait();
							draw_set_alpha(1);
						}
				break;
				case ENEMY.Sectants :
					if (flash_state) {
					draw_set_alpha(0.5); 
					scr_help_minigame_wait();
					draw_set_alpha(1);
					} else 
						{
							scr_help_minigame_wait();
							draw_set_alpha(1);
						}
				break;
				case ENEMY.Hopniki :
					if (flash_state) {
					draw_set_alpha(0.5); 
					scr_help_minigame_wait();
					draw_set_alpha(1);
					} else 
						{
							scr_help_minigame_wait();
							draw_set_alpha(1);
						}
		
				break;
			}
			flash_timer += 1;
				if (flash_timer >= 15) {
					flash_timer = 0;
					flash_state = !flash_state; // змінюємо стан мигання на протилежний
				}
		break;
	}

	
	//відмалювання грошей на екрані
		draw_sprite(spr_money_battle,0,gui_W/1.260, gui_H/1.86);
		draw_set_font(font_azariya_textbox)
		draw_text_ext(gui_W/1.18, gui_H/1.80,global.money, stringHeight_torchky, 238);
		
		
	///////////////Діалоги
	if(BDialogue = true){
		switch(enemies)
		{
			case ENEMY.Narkomany:
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
			break;
			case ENEMY.Kavkazci:
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
			break;
			case ENEMY.Sectants:
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
			break;
			case ENEMY.Hopniki:
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
			break;
		}
	}
} else {
	instance_activate_object(obj_inventory);
	instance_activate_object(Settings);
	}

