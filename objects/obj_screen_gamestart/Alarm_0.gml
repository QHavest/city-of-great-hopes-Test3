instance_destroy();
switch(obj_Battle_Interface.phase_battle){
	case PHASES.Atack:
		switch(obj_Battle_Interface.enemies){
			case ENEMY.Kavkazci :
				obj_background_mini.index_minigame_back = 1;
				instance_activate_object(obj_mini_avatar);
				obj_mini_avatar.x = 531;
				obj_mini_avatar.y = 702;
				obj_mini_avatar.index_avatar = 1;
				instance_activate_object(obj_sssr);
			break;
			case ENEMY.Sectants :
			    obj_background_mini.index_minigame_back = 2;
				instance_activate_object(obj_sects);
				instance_activate_object(obj_mini_avatar);
				obj_mini_avatar.x = 531;
				obj_mini_avatar.y = 702;
				instance_activate_object(obj_wall_sect);
				obj_mini_avatar.index_avatar = 2;
			break;
			case ENEMY.Hopniki :
				obj_background_mini.index_minigame_back = 3;
				instance_activate_object(obj_mini_avatar);
				instance_activate_object(obj_hopnik);
				obj_mini_avatar.index_avatar = 4;
			break;
			case ENEMY.Narkomany :
				obj_background_mini.index_minigame_back = 0;
				instance_create_depth(480,416,-300,obj_shprutz_parent);
				instance_activate_object(obj_mini_avatar);
				obj_mini_avatar.x = 547.5;
				obj_mini_avatar.y = 755;
				instance_activate_object(wall);
				obj_mini_avatar.index_avatar = 0;
			break;
			}
	break;
	case PHASES.Defence:
		switch(obj_Battle_Interface.aliens){
			case ALIES.Krus_mini:
				instance_create_depth(480,416,-300,obj_mini_krus);
				obj_background_mini.index_minigame_back = 3;
				instance_activate_object(obj_mini_avatar);
				obj_mini_avatar.index_avatar = 4;
			break;
			case ALIES.Ytopurok_mini:
				instance_create_depth(480,416,-300,obj_mini_ytopur);
				obj_background_mini.index_minigame_back = 3;
				instance_activate_object(obj_mini_avatar);
				obj_mini_avatar.x = 941.5;
				obj_mini_avatar.y = 755;
				obj_mini_avatar.index_avatar = 3;
			break;	
			}	
	break;
}
/*
	case ENEMY.Ytopurok_mini :
		instance_activate_object(obj_mini_ytopur);
		obj_background_mini.index_minigame_back = 3;
		instance_activate_object(obj_mini_avatar);
		obj_mini_avatar.index_avatar = 3;
	break;
	case ENEMY.Krus_mini :
		instance_create_depth(480,416,-300,obj_mini_krus);
		obj_background_mini.index_minigame_back = 3;
		instance_activate_object(obj_mini_avatar);
		obj_mini_avatar.index_avatar = 4;
	break;*/
		
		
		
	
	