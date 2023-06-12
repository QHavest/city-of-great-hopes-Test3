obj_Battle_Interface.battle_start = false;

if (obj_Battle_Interface.battle_start == false and obj_Battle_Interface.game_over_mini == true)
	{	
		switch(obj_Battle_Interface.enemies){
			case ENEMY.Kavkazci :
				scr_end_minigame();
			break;
			case ENEMY.Sectants :
				scr_end_minigame_sects();
			break;
			case ENEMY.Hopniki :
	
			break;
			case ENEMY.Narkomany :
				scr_end_minigame();
			break;
			}
	}
instance_destroy();
