
switch(obj_Battle_Interface.phase_battle){
	case  PHASES.Atack :
		switch(phasese){
					case PHASESE.Battle:
					sprite_index = spr_ytopyr_kavkaz_battle;		
					break;
					case PHASESE.Battle_idle:
					sprite_index = spr_ytopyr_kavkaz_battle_idle;	
					break;
					case PHASESE.Idle:
					sprite_index = spr_ytopyr_kavkaz_idle;	
					break;
				}
	break;
	
	case  PHASES.Defence :
		//switch(obj_Battle_Interface.aliens){
		//case ALIES.Ytopurok_mini:
			//phasese = PHASESE.Battle;
				switch(phasese){
					case PHASESE.Battle:
					sprite_index = spr_ytopyr_kavkaz_battle;		
					break;
					case PHASESE.Battle_idle:
					sprite_index = spr_ytopyr_kavkaz_battle_idle;	
					break;
					case PHASESE.Idle:
					sprite_index = spr_ytopyr_kavkaz_idle;	
					break;
				}	
		//break;
		//}
	break;
}
if (phasese = PHASESE.Battle and image_index == image_number - 1){
phasese = PHASESE.Battle_idle;
}