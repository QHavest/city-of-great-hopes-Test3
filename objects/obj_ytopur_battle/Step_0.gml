switch(obj_Battle_Interface.phase_battle){
	case  PHASES.Atack :
		switch(obj_Battle_Interface.aliens){
		case ALIES.Noone:
			sprite_index = spr_ytopyr_kavkaz_idle;
			phasese = 0
		break;
		}
		break;
	break;
	
	case  PHASES.Defence :
		switch(obj_Battle_Interface.aliens){
		case ALIES.Ytopurok_mini:
				if (phasese = 0){
				sprite_index = spr_ytopyr_kavkaz_battle_idle;
				//image_index = sprite_get_number(spr_ytopyr_kavkaz_battle_idle);
				if (image_index = 3 and phasese = 0){
				phasese = 1;}
				}
				if (phasese = 1){
				sprite_index = spr_ytopyr_kavkaz_battle;	
				}
		break;
		}
	break;
}