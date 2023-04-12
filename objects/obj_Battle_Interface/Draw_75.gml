if(battle_start = true){
	switch(enemies){
		case ENEMY.Narkomany :
			if (obj_krus_battle.death_krus == false and another_fone == false)
			{
				draw_sprite(spr_up_obvodka, 0, gui_W/3.87, gui_H/11.85);
			} else 
				{

				draw_sprite(spr_up_obvodka, 3, gui_W/3.87, gui_H/11.85);
				}
			scr_ui_health();
			
		break;
		case ENEMY.Kavkazci :
			if (obj_krus_battle.death_krus == false and another_fone == false)
			{
				draw_sprite(spr_up_obvodka, 1, gui_W/3.87, gui_H/11.85);
			} else 
				{
				draw_sprite(spr_up_obvodka, 3, gui_W/3.87, gui_H/11.85);
				}
			scr_ui_health();
		break;
		case ENEMY.Sectants :
			if (obj_krus_battle.death_krus == false and another_fone == false)
			{
				draw_sprite(spr_up_obvodka, 2, gui_W/3.87, gui_H/11.85);
			} else 
				{
				draw_sprite(spr_up_obvodka, 3, gui_W/3.87, gui_H/11.85);
				}
			scr_ui_health();
			
		break;
		case ENEMY.Hopniki :
			if (obj_krus_battle.death_krus == false and another_fone == false)
			{
				draw_sprite(spr_up_obvodka, 3, gui_W/3.87, gui_H/11.85);
			} else 
				{
				draw_sprite(spr_up_obvodka, 3, gui_W/3.87, gui_H/11.85);
				}
			draw_sprite(spr_hpEmpty, 0, gui_W/1.283, gui_H/1.223);
			draw_sprite_part(spr_hpRed_GG, 0, 0, 0, 279, 35, gui_W/1.2745, gui_H/1.112);
			draw_sprite_part(spr_hpGreen, 1, 0, 0, amount_hp, 35, gui_W/1.2745, gui_H/1.112);
			draw_sprite(spr_hpKrus, 0, gui_W/1.258, gui_H/1.204);
			draw_sprite(spr_heart, 0, gui_W/1.188, gui_H/1.199);
			draw_sprite(spr_cross, 0, gui_W/1.123, gui_H/1.204);
		break;
		}
	
	obj_dim_player1.visible = false;
	obj_dim_player2.visible = false;
		
	
	//draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.2368, gui_H/3.112);
	
	draw_sprite(spr_darkarr, 0, gui_W/12.28, gui_H/1.203);
	
} else 
	{
		
		obj_dim_player1.visible = true;
		obj_dim_player2.visible = true;
	}

