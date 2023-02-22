switch(obj_Battle_Interface.phase_battle){
	case  PHASES.Atack :
		switch(obj_Battle_Interface.aliens){
		case ALIES.Noone:
			sprite_index = spr_ytopyr_kavkaz_idle;
		break;
		}
		break;
	break;
	
	case  PHASES.Defence :
		//switch(obj_Battle_Interface.aliens){
		//case ALIES.Ytopurok_mini:
			//phasese = PHASESE.Battle;
				switch(phasese){
					case PHASESE.Battle:
					//image_index = 0;
					sprite_index = spr_ytopyr_kavkaz_battle;
					
					//image_index = sprite_get_number(sprite_index);
						if (image_index > 3){
							phasese = PHASESE.Idle
						}
					break;
					case PHASESE.Idle:
					sprite_index = spr_ytopyr_kavkaz_battle_idle;	
					break;
				}	
		//break;
		//}
	break;
}