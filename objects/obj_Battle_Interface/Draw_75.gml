if(battle_start = true){	
	//draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/1.2568, gui_H/2.112);
	switch(enemies){
		case ENEMY.Hopniki:
		draw_sprite_part(hp_hopnik_empty, 0, 0, 0,96, 16, gui_W/2.2268, gui_H/7.312);
		draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.2268, gui_H/7.312);
		draw_sprite_part(hp_hopnik_empty, 0, 0, 0,96, 16, gui_W/2.7068, gui_H/7.312);
		draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.7068, gui_H/7.312);
		draw_sprite_part(hp_hopnik_empty, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
		draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/3.3968, gui_H/7.312);
		break;
		case ENEMY.Kavkazci:
		draw_sprite_part(hp_kavkaz_empty, 0, 0, 0,96, 16, gui_W/2.2268, gui_H/7.312);
		draw_sprite_part(hp_kavkaz_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.2268, gui_H/7.312);
		draw_sprite_part(hp_kavkaz_empty, 0, 0, 0,96, 16, gui_W/2.7068, gui_H/7.312);
		draw_sprite_part(hp_kavkaz_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.7068, gui_H/7.312);
		draw_sprite_part(hp_kavkaz_empty, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
		draw_sprite_part(hp_kavkaz_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/3.3968, gui_H/7.312);
		break;
		case ENEMY.Narkomany:
		/*draw_sprite_part(hp_narko_empty, 0, 0, 0,96, 16, gui_W/2.2268, gui_H/7.312);
		draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.2268, gui_H/7.312);
		draw_sprite_part(hp_narko_empty, 0, 0, 0,96, 16, gui_W/2.7068, gui_H/7.312);
		draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.7068, gui_H/7.312);
		draw_sprite_part(hp_narko_empty, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
		draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/3.3968, gui_H/7.312);*/
		
		if (obj_enemy3_battle.phasese_enemy3 != PHASESE_ENEMY3.Defeat){
		draw_sprite_part(hp_narko_empty, 0, 0, 0,96, 16, gui_W/2.2268, gui_H/7.312);
		draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.2268, gui_H/7.312);
		if (amount_hp_enemy <= 0)
		{
			obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat
			obj_enemy3_battle.image_index = 0;
			amount_hp_enemy = 96;
		}
	} else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat and obj_enemy1_battle.phasese_enemy1 != PHASESE_ENEMY1.Defeat){
		draw_sprite_part(hp_narko_empty, 0, 0, 0,96, 16, gui_W/2.7068, gui_H/7.312);
		draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.7068, gui_H/7.312);
		if (amount_hp_enemy <= 0)
			{
			obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat
			obj_enemy1_battle.image_index = 0;
			amount_hp_enemy = 96;
			}
		}	else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat and obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat){
		draw_sprite_part(hp_narko_empty, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
		draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/3.3968, gui_H/7.312);
			if (amount_hp_enemy <= 0)
				{
				obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Defeat
				obj_enemy2_battle.image_index = 0;
				amount_hp_enemy = 96;
				instance_create_depth(490,570,-600,obj_youwon);
				}
			}
		break;
		case ENEMY.Sectants:
		draw_sprite_part(hp_sects_empty, 0, 0, 0,96, 16, gui_W/2.2268, gui_H/7.312);
		draw_sprite_part(hp_sects_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.2268, gui_H/7.312);
		draw_sprite_part(hp_sects_empty, 0, 0, 0,96, 16, gui_W/2.7068, gui_H/7.312);
		draw_sprite_part(hp_sects_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.7068, gui_H/7.312);
		draw_sprite_part(hp_sects_empty, 0, 0, 0,96, 16, gui_W/3.3968, gui_H/7.312);
		draw_sprite_part(hp_sects_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/3.3968, gui_H/7.312);
		break;
	}
	
	
	//draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.2368, gui_H/3.112);
	
	draw_sprite(spr_darkarr, 0, gui_W/10.69, gui_H/1.203);
	//мерехтілка
	draw_sprite(spr_red_l,  light_bi, gui_W/1.222, gui_H/2.40);
}

