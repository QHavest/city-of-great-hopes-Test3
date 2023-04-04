obj_Battle_Interface.battle_start = false;

if (obj_Battle_Interface.battle_start == false and obj_Battle_Interface.game_over_mini == true)
	{	
		show_debug_message("Test huinni")
		room_goto(obj_Battle_Interface.target_rm);
		//battle_start = false;
		instance_destroy(obj_loose_karb);
		obj_Battle_Interface.hp_one = 0;
		obj_Battle_Interface.amount_hp = 279;
		obj_Battle_Interface.game_over_mini = false;
		obj_Battle_Interface.mini_game = true
		obj_Battle_Interface.hp_enemies = false;
		obj_Battle_Interface.games = false
		obj_Battle_Interface.hpKrys = 50;
		obj_Battle_Interface.hpYtopyrok = 50;
		obj_Battle_Interface.amount_hp_enemy = 96;
		instance_activate_object(obj_dim_player1);
		instance_activate_object(obj_dim_player2);
		if obj_dim_player1.status = STATUS.ACTIVE
		{
			obj_dim_player1.x = 1795
			obj_dim_player1.y = 260
			obj_dim_player2.x = 1795
			obj_dim_player2.y = 260
		}
		else
		{
			obj_dim_player1.x = 1795
			obj_dim_player1.y = 260
			obj_dim_player2.x = 1795
			obj_dim_player2.y = 260
		}
		/*else if obj_dim_player2.status = STATUS.ACTIVE
		{
			obj_Battle_Interface.target_x = obj_dim_player2.x;
			obj_Battle_Interface.target_y = obj_dim_player2.y;
		}*/
	}
instance_destroy();
	
