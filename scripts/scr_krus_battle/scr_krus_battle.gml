function scr_krus_battle(){
switch(obj_Battle_Interface.phase_battle){
	case  PHASES.Atack :
		switch(phasese_krus){
					case PHASESE_KRUS.Battle:					
					sprite_index = spr_krus_kavkaz_battle;
					image_speed = 0;
					image_speed = 1;
					if (image_index >= image_number - 1){
					phasese_krus = PHASESE_KRUS.Battle_idle;
					}
					break;
					case PHASESE_KRUS.Battle_down:
					sprite_index = spr_krus_kavkaz_battle_down;
					image_speed = 0;
					image_speed = 1;
					if (image_index >= image_number - 1){
					phasese_krus = PHASESE_KRUS.Idle;
					}
					break;
					case PHASESE_KRUS.Battle_idle:
					sprite_index = spr_krus_kavkaz_battle_idle;	
					image_speed = 0;
					image_speed = 1;
					break;
					case PHASESE_KRUS.Idle:
					sprite_index = spr_krus_kavkaz_idle;	
					image_speed = 0;
					image_speed = 1;
					break;
				}
	break;
	
	case  PHASES.Defence :
				switch(phasese_krus){
					case PHASESE_KRUS.Battle:
					sprite_index = spr_krus_kavkaz_battle;
					image_speed = 0;
					image_speed = 1;
					if (image_index >= image_number - 1){
					phasese_krus = PHASESE_KRUS.Battle_idle;
					//sprite_index = spr_ytopyr_kavkaz_battle_idle;	
					}
					break;
					case PHASESE_KRUS.Battle_down:
					sprite_index = spr_krus_kavkaz_battle_down;
					image_speed = 0;
					image_speed = 1;
					if (image_index >= image_number - 1){
					phasese_krus = PHASESE_KRUS.Idle;
					//sprite_index = spr_ytopyr_kavkaz_battle_idle;	
					}
					break;
					case PHASESE_KRUS.Battle_idle:
					sprite_index = spr_krus_kavkaz_battle_idle;	
					image_speed = 0;
					image_speed = 1;
					break;
					case PHASESE_KRUS.Idle:
					sprite_index = spr_krus_kavkaz_idle;	
					image_speed = 0;
					image_speed = 1;
					break;
				}	
		//break;
		//}
	break;
}
}