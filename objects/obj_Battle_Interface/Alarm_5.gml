	mini_game = true;
	games = true;
	instance_destroy(obj_wait);
		
	if (global.MaxHp >= 51 and obj_ytopur_battle.phasese != PHASESE.Defeat2){
	obj_ytopur_battle.image_index = 0;
	obj_ytopur_battle.phasese = PHASESE.Battle;
	}
		
	if (obj_enemy3_battle.phasese_enemy3 != PHASESE_ENEMY3.Defeat2){
		obj_enemy1_battle.image_index = 0;
		obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Battle;
		obj_enemy2_battle.image_index = 0;
		obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Battle;
		obj_enemy3_battle.image_index = 0;
		obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Battle;
		} else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat2 and obj_enemy1_battle.phasese_enemy1 != PHASESE_ENEMY1.Defeat2){
			obj_enemy1_battle.image_index = 0;
			obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Battle;
			obj_enemy2_battle.image_index = 0;
			obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Battle;
			}	else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat2 and obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat2 and obj_enemy2_battle.phasese_enemy2 != PHASESE_ENEMY2.Defeat2){
			obj_enemy2_battle.image_index = 0;
			obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Battle;
				}	/*else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat and obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat and obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Defeat){
			obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Defeat
			obj_enemy2_battle.image_index = 0;
				}*/
	obj_krus_battle.phasese_krus = PHASESE_KRUS.Battle;
	switch(phase_battle){
		case PHASES.Atack:
			switch(enemies){
				case ENEMY.Narkomany :
				aliens = ALIES.Noone;
				show_debug_message("alarm5")
				switch(global.LANGUAGE)
					{
						case "eng":
						instance_create_depth(466,570,-600,obj_screen_gamestart)
						break;
						case "ua":
						instance_create_depth(466,570,-600,obj_screen_gamestart).sprite_index = spr_gamestartUA;
						break;
					}		
				break;
				case ENEMY.Kavkazci :
				aliens = ALIES.Noone;
				switch(global.LANGUAGE)
					{
						case "eng":
						instance_create_depth(466,570,-600,obj_screen_gamestart)
						break;
						case "ua":
						instance_create_depth(466,570,-600,obj_screen_gamestart).sprite_index = spr_gamestartUA;
						break;
					}	
				break;
				case ENEMY.Sectants :
				aliens = ALIES.Noone;
				switch(global.LANGUAGE)
					{
						case "eng":
						instance_create_depth(466,570,-600,obj_screen_gamestart)
						break;
						case "ua":
						instance_create_depth(466,570,-600,obj_screen_gamestart).sprite_index = spr_gamestartUA;
						break;
					}	
				break;
				case ENEMY.Hopniki :
				aliens = ALIES.Noone;
				instance_create_depth(466,570,-600,obj_screen_gamestart)	
				break;
				}
		break;
		case PHASES.Defence:
			aliens = ALIES.Ytopurok_mini;
			switch(global.LANGUAGE)
					{
						case "eng":
						instance_create_depth(466,570,-600,obj_screen_gamestart)
						break;
						case "ua":
						instance_create_depth(466,570,-600,obj_screen_gamestart).sprite_index = spr_gamestartUA;
						break;
					}
		break;
		}
	system = 0;