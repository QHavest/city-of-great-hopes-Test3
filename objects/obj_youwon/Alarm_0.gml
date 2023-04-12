obj_Battle_Interface.battle_start = false;

if (obj_Battle_Interface.battle_start == false and obj_Battle_Interface.game_over_mini == true)
	{	
		show_debug_message("Test huinni")
		
		//battle_start = false;
		scr_end_minigame();
	}
instance_destroy();
