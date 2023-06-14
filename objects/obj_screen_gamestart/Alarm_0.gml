instance_destroy();
switch(obj_Battle_Interface.phase_battle){
	case PHASES.Atack:
		switch(obj_Battle_Interface.enemies){
			case ENEMY.Kavkazci :
				obj_background_mini.index_minigame_back = 1;
				instance_activate_object(obj_mini_avatar);
				obj_mini_avatar.x = 509;
				obj_mini_avatar.y = 702;
				//obj_mini_avatar.index_avatar = 1;
				instance_create_depth(480,416,-300,obj_sssr);
	
			break;
			case ENEMY.Sectants :
			    obj_background_mini.index_minigame_back = 2;
				instance_create_depth(480,416,-300,obj_sects);
				//instance_activate_object(obj_sects);
				instance_activate_object(obj_mini_avatar);
				obj_mini_avatar.x = 930;
				obj_mini_avatar.y = 807;
				instance_activate_object(obj_wall_sect);
				//obj_mini_avatar.index_avatar = 2;
			break;
			case ENEMY.Hopniki :
				obj_background_mini.index_minigame_back = 3;
				instance_activate_object(obj_mini_avatar);
				obj_mini_avatar.x = 927;
				obj_mini_avatar.y = 755;
				instance_create_depth(480,416,-300,obj_hopnik);
				//obj_mini_avatar.index_avatar = 4;
			break;
			case ENEMY.Narkomany :
				obj_background_mini.index_minigame_back = 0;
				if (first_game == 0){
				instance_create_depth(480,416,-300,obj_shprutz_parent);
				first_game++;
				}
				instance_activate_object(obj_mini_avatar);
				obj_mini_avatar.x = 527.5;
				obj_mini_avatar.y = 755;
				instance_activate_object(wall);
				//obj_mini_avatar.index_avatar = 0;
			break;
			}
	break;
	case PHASES.Defence:
		switch(obj_Battle_Interface.aliens){
			case ALIES.Krus_mini:
				instance_create_depth(480,416,-300,obj_mini_krus);
				obj_background_mini.index_minigame_back = 3;
				instance_activate_object(obj_mini_avatar);
				obj_mini_avatar.x = 940;
				obj_mini_avatar.y = 900;
				//obj_mini_avatar.index_avatar = 4;
			break;
			case ALIES.Ytopurok_mini:
				instance_create_depth(480,416,-300,obj_mini_ytopur);
				obj_background_mini.index_minigame_back = 3;
				instance_activate_object(obj_mini_avatar);
				obj_mini_avatar.x = 921.5;
				obj_mini_avatar.y = 755;
				
				//obj_mini_avatar.index_avatar = 3;
			break;	
			}	
	break;
}

		
		
	
	