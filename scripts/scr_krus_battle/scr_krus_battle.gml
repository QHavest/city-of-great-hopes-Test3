function scr_krus_battle(){
switch(obj_Battle_Interface.enemies){
		case ENEMY.Hopniki:
			switch(phasese_krus){
						case PHASESE_KRUS.Battle:	
						sprite_index = spr_krus_hopnik_battle;
						break;
						case PHASESE_KRUS.Battle_down:
						sprite_index = spr_krus_hopnik_battle_down;
						break;
						case PHASESE_KRUS.Battle_idle:
						sprite_index = spr_krus_hopnik_battle_idle;	
						break;
						case PHASESE_KRUS.Idle:
						sprite_index = spr_krus_hopnik_idle;	
						break;
						case PHASESE_KRUS.Defeat:
						sprite_index = spr_krus_hopnik_defeat;	
						break;
						case PHASESE_KRUS.Defeat2:
						sprite_index = spr_krus_hopnik_defeat_2;	
						break;
						case PHASESE_KRUS.Hit:
						sprite_index = spr_krus_hopnik_battle_hit;	
						break;
					}
		break;
		case ENEMY.Kavkazci:
			switch(phasese_krus){
						case PHASESE_KRUS.Battle:	
						sprite_index = spr_krus_kavkazci_battle;
						break;
						case PHASESE_KRUS.Battle_down:
						sprite_index = spr_krus_kavkazci_battle_down;
						break;
						case PHASESE_KRUS.Battle_idle:
						sprite_index = spr_krus_kavkazci_battle_idle;	
						break;
						case PHASESE_KRUS.Idle:
						sprite_index = spr_krus_kavkazci_idle;	
						break;
						case PHASESE_KRUS.Defeat:
						sprite_index = spr_krus_kavkazci_defeat;	
						break;
						case PHASESE_KRUS.Defeat2:
						sprite_index = spr_krus_kavkazci_defeat_2;	
						break;
						case PHASESE_KRUS.Hit:
						sprite_index = spr_krus_kavkazci_battle_hit;	
						break;
					}
		break;
		case ENEMY.Narkomany:
			switch(phasese_krus){
						case PHASESE_KRUS.Battle:	
						sprite_index = spr_krus_narkoman_battle;
						break;
						case PHASESE_KRUS.Battle_down:
						sprite_index = spr_krus_narkoman_battle_down;
						break;
						case PHASESE_KRUS.Battle_idle:
						sprite_index = spr_krus_narkoman_battle_idle;	
						break;
						case PHASESE_KRUS.Idle:
						sprite_index = spr_krus_narkoman_idle;	
						break;
						case PHASESE_KRUS.Defeat:
						sprite_index = spr_krus_narkoman_defeat;	
						break;
						case PHASESE_KRUS.Defeat2:
						sprite_index = spr_krus_narkoman_defeat_2;	
						break;
						case PHASESE_KRUS.Hit:
						sprite_index = spr_krus_narkoman_battle_hit;	
						break;
					}
		break;
		case ENEMY.Sectants:
			switch(phasese_krus){
						case PHASESE_KRUS.Battle:	
						sprite_index = spr_krus_sectants_battle;
						break;
						case PHASESE_KRUS.Battle_down:
						sprite_index = spr_krus_sectants_battle_down;
						break;
						case PHASESE_KRUS.Battle_idle:
						sprite_index = spr_krus_sectants_battle_idle;	
						break;
						case PHASESE_KRUS.Idle:
						sprite_index = spr_krus_sectants_idle;	
						break;
						case PHASESE_KRUS.Defeat:
						sprite_index = spr_krus_sectants_defeat;	
						break;
						case PHASESE_KRUS.Defeat2:
						sprite_index = spr_krus_sectants_defeat_2;	
						break;
						case PHASESE_KRUS.Hit:
						sprite_index = spr_krus_sectants_battle_hit;	
						break;
					}
		break;
	}
}