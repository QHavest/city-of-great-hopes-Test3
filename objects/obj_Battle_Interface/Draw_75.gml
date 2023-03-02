if(battle_start = true){	
	//draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/1.2568, gui_H/2.112);
	switch(enemies){
		case ENEMY.Hopniki:
		draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.2268, gui_H/7.312);
		draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.7068, gui_H/7.312);
		draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/3.3968, gui_H/7.312);
		break;
		case ENEMY.Kavkazci:
		draw_sprite_part(hp_kavkaz_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.2268, gui_H/7.312);
		draw_sprite_part(hp_kavkaz_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.7068, gui_H/7.312);
		draw_sprite_part(hp_kavkaz_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/3.3968, gui_H/7.312);
		break;
		case ENEMY.Narkomany:
		draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.2268, gui_H/7.312);
		draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.7068, gui_H/7.312);
		draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/3.3968, gui_H/7.312);
		break;
		case ENEMY.Sectants:
		draw_sprite_part(hp_sects_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.2268, gui_H/7.312);
		draw_sprite_part(hp_sects_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.7068, gui_H/7.312);
		draw_sprite_part(hp_sects_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/3.3968, gui_H/7.312);
		break;
	}
	
	
	//draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.2368, gui_H/3.112);
	
	draw_sprite(spr_darkarr, 0, gui_W/10.69, gui_H/1.203);
	//мерехтілка
	draw_sprite(spr_red_l,  light_bi, gui_W/1.222, gui_H/2.40);
}

