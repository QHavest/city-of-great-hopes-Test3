if(battle_start = true){
	switch(obj_Battle_Interface.enemies){
		case ENEMY.Narkomany :
			draw_sprite(spr_up_obvodka, 0, gui_W/4.21, gui_H/12.00);
		break;
		case ENEMY.Kavkazci :
			draw_sprite(spr_up_obvodka, 1, gui_W/4.21, gui_H/1.928);
		break;
		case ENEMY.Sectants :
			draw_sprite(spr_up_obvodka, 2, gui_W/4.21, gui_H/1.928);
		break;
		case ENEMY.Hopniki :
			draw_sprite(spr_up_obvodka, 3, gui_W/4.21, gui_H/1.928);
		break;
		}
	
	obj_dim_player1.visible = false;
	obj_dim_player2.visible = false;
	draw_sprite(spr_hpRed, 0, gui_W/1.283, gui_H/1.223);
	draw_sprite_part(spr_hpGreen, 0, 0, 0, amount_hp, 35, gui_W/1.2745, gui_H/1.112);
	//draw_sprite_part(hp_narko_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/1.2568, gui_H/2.112);
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
							instance_create_depth(466,570,-600,obj_youwon);
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
							instance_create_depth(466,570,-600,obj_youwon);
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
							instance_create_depth(466,570,-600,obj_youwon);
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
							instance_create_depth(466,570,-600,obj_youwon);
							}
				break;
			}
		
		break;
	 }
	}	
	
	//draw_sprite_part(hp_hopnik_full, 0, 0, 0,amount_hp_enemy, 16, gui_W/2.2368, gui_H/3.112);
	
	draw_sprite(spr_darkarr, 0, gui_W/12.28, gui_H/1.203);
	
} else 
	{
		obj_dim_player1.visible = true;
		obj_dim_player2.visible = true;
	}

