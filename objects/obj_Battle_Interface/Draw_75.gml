if(battle_start = true){
	draw_sprite(spr_hpRed, 0, gui_W/1.283, gui_H/1.223);
	draw_sprite_part(spr_hpGreen, 0, 0, 0, amount_hp, 35, gui_W/1.2745, gui_H/1.112);
	//draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/1.2568, gui_H/2.112);
	if (hp_enemies == true){
	switch(enemies){
		case ENEMY.Hopniki:
		if (obj_enemy3_battle.phasese_enemy3 != PHASESE_ENEMY3.Defeat2){
			if(obj_enemy3_battle.phasese_enemy3 != PHASESE_ENEMY3.Defeat)
				{
				draw_sprite_part(hp_hopnik_empty, 0, 0, 0,96, 16, gui_W/2.2268, gui_H/7.312);
				}
			draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.2268, gui_H/7.312);
			draw_sprite_part(hp_hopnik_empty, 0, 0, 0,96, 16,	gui_W/2.7068, gui_H/7.312);
			draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.7068,gui_H/7.312);
			draw_sprite_part(hp_hopnik_empty, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
			draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/3.3968, gui_H/7.312);
				if (amount_hp_enemy <= 0)
				{
					obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat
					obj_enemy3_battle.image_index = 0;
					amount_hp_enemy = 0.0001;
				}
			} else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat2 and obj_enemy1_battle.phasese_enemy1 != PHASESE_ENEMY1.Defeat2){
					if(obj_enemy1_battle.phasese_enemy1 != PHASESE_ENEMY1.Defeat)
					{
					draw_sprite_part(hp_hopnik_empty, 0, 0, 0,96, 16, gui_W/2.7068, gui_H/7.312);
					}
					draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.7068, gui_H/7.312);
					draw_sprite_part(hp_hopnik_empty, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
					draw_sprite_part(hp_hopnik_full, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
					if (amount_hp_enemy <= 0)
						{
						obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat
						obj_enemy1_battle.image_index = 0;
						amount_hp_enemy = 0.0001;
						}
					}	else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat2 and obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat2 and obj_enemy2_battle.phasese_enemy2 != PHASESE_ENEMY2.Defeat2){
					if(obj_enemy2_battle.phasese_enemy2 != PHASESE_ENEMY2.Defeat)
					{
					draw_sprite_part(hp_hopnik_empty, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
					}
					draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/3.3968, gui_H/7.312);
						if (amount_hp_enemy <= 0)
							{
							obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Defeat
							obj_enemy2_battle.image_index = 0;
							amount_hp_enemy = 0.0001;
							instance_create_depth(466,570,-600,obj_youwon);
							}
						}
		break;
		case ENEMY.Kavkazci:
		if (obj_enemy3_battle.phasese_enemy3 != PHASESE_ENEMY3.Defeat2){
			if(obj_enemy3_battle.phasese_enemy3 != PHASESE_ENEMY3.Defeat)
				{
				draw_sprite_part(hp_kavkaz_empty, 0, 0, 0,96, 16, gui_W/2.2268, gui_H/7.312);
				}
			draw_sprite_part(hp_kavkaz_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.2268, gui_H/7.312);
			draw_sprite_part(hp_kavkaz_empty, 0, 0, 0,96, 16, gui_W/2.7068, gui_H/7.312);
			draw_sprite_part(hp_kavkaz_full, 0, 0, 0,96, 16, gui_W/2.7068, gui_H/7.312);
			draw_sprite_part(hp_kavkaz_empty, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
			draw_sprite_part(hp_kavkaz_full, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
				if (amount_hp_enemy <= 0)
				{
					obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat
					obj_enemy3_battle.image_index = 0;
					amount_hp_enemy = 0.0001;
				}
			} else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat2 and obj_enemy1_battle.phasese_enemy1 != PHASESE_ENEMY1.Defeat2){
					if(obj_enemy1_battle.phasese_enemy1 != PHASESE_ENEMY1.Defeat)
					{
					draw_sprite_part(hp_kavkaz_empty, 0, 0, 0,96, 16, gui_W/2.7068, gui_H/7.312);
					}
					draw_sprite_part(hp_kavkaz_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.7068, gui_H/7.312);
					draw_sprite_part(hp_kavkaz_empty, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
					draw_sprite_part(hp_kavkaz_full, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
					if (amount_hp_enemy <= 0)
						{
						obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat
						obj_enemy1_battle.image_index = 0;
						amount_hp_enemy = 0.0001;
						}
					}	else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat2 and obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat2 and obj_enemy2_battle.phasese_enemy2 != PHASESE_ENEMY2.Defeat2){
					if(obj_enemy2_battle.phasese_enemy2 != PHASESE_ENEMY2.Defeat)
					{
					draw_sprite_part(hp_kavkaz_empty, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
					}
					draw_sprite_part(hp_kavkaz_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/3.3968, gui_H/7.312);
						if (amount_hp_enemy <= 0)
							{
							obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Defeat
							obj_enemy2_battle.image_index = 0;
							amount_hp_enemy = 0.0001;
							instance_create_depth(466,570,-600,obj_youwon);
							}
						}
		break;
		case ENEMY.Narkomany:
			if (obj_enemy3_battle.phasese_enemy3 != PHASESE_ENEMY3.Defeat2){
				if(obj_enemy3_battle.phasese_enemy3 != PHASESE_ENEMY3.Defeat)
				{
					draw_sprite_part(hp_narko_empty, 0, 0, 0,96, 16, gui_W/2.2268, gui_H/7.312);
				}
			draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.2268, gui_H/7.312);
			draw_sprite_part(hp_narko_empty, 0, 0, 0,96, 16, gui_W/2.7068, gui_H/7.312);
			draw_sprite_part(hp_narko_full, 0, 0, 0,96, 16, gui_W/2.7068, gui_H/7.312);
			draw_sprite_part(hp_narko_empty, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
			draw_sprite_part(hp_narko_full, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
				if (amount_hp_enemy <= 0)
				{
					obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat
					obj_enemy3_battle.image_index = 0;
					amount_hp_enemy = 0.0001;
				}
			} else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat2 and obj_enemy1_battle.phasese_enemy1 != PHASESE_ENEMY1.Defeat2){
					if(obj_enemy1_battle.phasese_enemy1 != PHASESE_ENEMY1.Defeat)
					{
						draw_sprite_part(hp_narko_empty, 0, 0, 0,96, 16, gui_W/2.7068, gui_H/7.312);
					}
					draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.7068, gui_H/7.312);
					draw_sprite_part(hp_narko_empty, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
					draw_sprite_part(hp_narko_full, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
					if (amount_hp_enemy <= 0)
						{
						obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat
						obj_enemy1_battle.image_index = 0;
						amount_hp_enemy = 0.0001;
						}
					}	else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat2 and obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat2 and obj_enemy2_battle.phasese_enemy2 != PHASESE_ENEMY2.Defeat2){
					if(obj_enemy2_battle.phasese_enemy2 != PHASESE_ENEMY2.Defeat)
					{
						draw_sprite_part(hp_narko_empty, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
					}
					draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/3.3968, gui_H/7.312);
						if (amount_hp_enemy <= 0)
							{
							obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Defeat
							obj_enemy2_battle.image_index = 0;
							amount_hp_enemy = 0.0001;
							instance_create_depth(466,570,-600,obj_youwon);
							}
						}	
		break;
		case ENEMY.Sectants:
		if (obj_enemy3_battle.phasese_enemy3 != PHASESE_ENEMY3.Defeat2){
			if(obj_enemy3_battle.phasese_enemy3 != PHASESE_ENEMY3.Defeat)
				{
				draw_sprite_part(hp_sects_empty, 0, 0, 0,96, 16, gui_W/2.2268,gui_H/4.612);
				}
			draw_sprite_part(hp_sects_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.2268, gui_H/4.612);
			draw_sprite_part(hp_sects_empty, 0, 0, 0,96, 16, gui_W/2.7068, gui_H/7.312);
			draw_sprite_part(hp_sects_full, 0, 0, 0,96, 16, gui_W/2.7068, gui_H/7.312);
			draw_sprite_part(hp_sects_empty, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/4.612);
			draw_sprite_part(hp_sects_full, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/4.612);
				if (amount_hp_enemy <= 0)
				{
					obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat
					obj_enemy3_battle.image_index = 0;
					amount_hp_enemy = 0.0001;
				}
			} else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat2 and obj_enemy1_battle.phasese_enemy1 != PHASESE_ENEMY1.Defeat2){
					if(obj_enemy1_battle.phasese_enemy1 != PHASESE_ENEMY1.Defeat)
					{
					draw_sprite_part(hp_sects_empty, 0, 0, 0,96, 16, gui_W/2.7068, gui_H/7.312);
					}
					draw_sprite_part(hp_sects_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.7068, gui_H/7.312);
					draw_sprite_part(hp_sects_empty, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/4.612);
					draw_sprite_part(hp_sects_full, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/4.612);
					if (amount_hp_enemy <= 0)
						{
						obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat
						obj_enemy1_battle.image_index = 0;
						amount_hp_enemy = 0.0001;
						}
					}	else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat2 and obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat2 and obj_enemy2_battle.phasese_enemy2 != PHASESE_ENEMY2.Defeat2){
					if(obj_enemy2_battle.phasese_enemy2 != PHASESE_ENEMY2.Defeat)
					{
					draw_sprite_part(hp_sects_empty, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/4.612);
					}
					draw_sprite_part(hp_sects_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/3.3968, gui_H/4.612);
						if (amount_hp_enemy <= 0)
							{
							obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Defeat
							obj_enemy2_battle.image_index = 0;
							amount_hp_enemy = 0.0001;
							instance_create_depth(466,570,-600,obj_youwon);
							}
						}
		break;
	 }
	}	
	
	//draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.2368, gui_H/3.112);
	
	draw_sprite(spr_darkarr, 0, gui_W/12.28, gui_H/1.203);
	//мерехтілка
	draw_sprite(spr_red_l,  light_bi, gui_W/1.222, gui_H/2.40);
}

