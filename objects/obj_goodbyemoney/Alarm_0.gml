obj_Battle_Interface.battle_start = false;

if (obj_Battle_Interface.battle_start == false and obj_Battle_Interface.game_over_mini == true)
	{	
		instance_destroy(obj_loose_karb);
		scr_end_minigame();
	}
instance_destroy();
	
