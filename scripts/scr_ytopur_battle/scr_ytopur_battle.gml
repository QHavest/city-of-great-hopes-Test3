function scr_ytopur_battle(){
switch(obj_Battle_Interface.phase_battle){
	case  PHASES.Atack :
		switch(phasese){
					case PHASESE.Battle:					
					sprite_index = spr_ytopyr_kavkazci_battle;
					image_speed = 0;
					image_speed = 1;
					if (image_index >= image_number - 1){
					phasese = PHASESE.Battle_idle;
					}
					break;
					case PHASESE.Battle_down:
					sprite_index = spr_ytopyr_kavkazci_battle_down;
					image_speed = 0;
					image_speed = 1;
					if (image_index >= image_number - 1){
					phasese = PHASESE.Idle;
					}
					break;
					case PHASESE.Battle_idle:
					sprite_index = spr_ytopyr_kavkazci_battle_idle;	
					image_speed = 0;
					image_speed = 1;
					break;
					case PHASESE.Idle:
					sprite_index = spr_ytopyr_kavkazci_idle;	
					image_speed = 0;
					image_speed = 1;
					break;
				}
	break;
	
	case  PHASES.Defence :
				switch(phasese){
					case PHASESE.Battle:
					sprite_index = spr_ytopyr_kavkazci_battle;
					image_speed = 0;
					image_speed = 1;
					if (image_index >= image_number - 1){
					phasese = PHASESE.Battle_idle;
					//sprite_index = spr_ytopyr_kavkaz_battle_idle;	
					}
					break;
					case PHASESE.Battle_down:
					sprite_index = spr_ytopyr_kavkazci_battle_down;
					image_speed = 0;
					image_speed = 1;
					if (image_index >= image_number - 1){
					phasese = PHASESE.Idle;
					//sprite_index = spr_ytopyr_kavkaz_battle_idle;	
					}
					break;
					case PHASESE.Battle_idle:
					sprite_index = spr_ytopyr_kavkazci_battle_idle;	
					image_speed = 0;
					image_speed = 1;
					break;
					case PHASESE.Idle:
					sprite_index = spr_ytopyr_kavkazci_idle;	
					image_speed = 0;
					image_speed = 1;
					break;
				}	
		//break;
		//}
	break;
}
}


