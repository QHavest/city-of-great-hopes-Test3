function scr_ytopur_battle(){
	switch(obj_Battle_Interface.enemies){
		case ENEMY.Hopniki:
			switch(phasese){
						case PHASESE.Battle:	
						sprite_index = spr_ytopyr_hopnik_battle;
						break;
						case PHASESE.Battle_down:
						sprite_index = spr_ytopyr_hopnik_battle_down;
						break;
						case PHASESE.Battle_idle:
						sprite_index = spr_ytopyr_hopnik_battle_idle;	
						break;
						case PHASESE.Idle:
						sprite_index = spr_ytopyr_hopnik_idle;	
						break;
						case PHASESE.Defeat:
						sprite_index = spr_ytopyr_hopnik_defeat;	
						break;
						case PHASESE.Hit:
						sprite_index = spr_ytopyr_hopnik_battle_hit;	
						break;
					}
		break;
		case ENEMY.Kavkazci:
			switch(phasese){
						case PHASESE.Battle:	
						sprite_index = spr_ytopyr_kavkazci_battle;
						break;
						case PHASESE.Battle_down:
						sprite_index = spr_ytopyr_kavkazci_battle_down;
						break;
						case PHASESE.Battle_idle:
						sprite_index = spr_ytopyr_kavkazci_battle_idle;	
						break;
						case PHASESE.Idle:
						sprite_index = spr_ytopyr_kavkazci_idle;	
						break;
						case PHASESE.Defeat:
						sprite_index = spr_ytopyr_kavkazci_defeat;	
						break;
						case PHASESE.Hit:
						sprite_index = spr_ytopyr_kavkazci_battle_hit;	
						break;
					}
		break;
		case ENEMY.Narkomany:
			switch(phasese){
						case PHASESE.Battle:	
						sprite_index = spr_ytopyr_narkoman_battle;
						break;
						case PHASESE.Battle_down:
						sprite_index = spr_ytopyr_narkoman_battle_down;
						break;
						case PHASESE.Battle_idle:
						sprite_index = spr_ytopyr_narkoman_battle_idle;	
						break;
						case PHASESE.Idle:
						sprite_index = spr_ytopyr_narkoman_idle;	
						break;
						case PHASESE.Defeat:
						sprite_index = spr_ytopyr_narkoman_defeat;	
						break;
						case PHASESE.Hit:
						sprite_index = spr_ytopyr_narkoman_battle_hit;	
						break;
					}
		break;
		case ENEMY.Sectants:
			switch(phasese){
						case PHASESE.Battle:	
						sprite_index = spr_ytopyr_sectants_battle;
						break;
						case PHASESE.Battle_down:
						sprite_index = spr_ytopyr_sectants_battle_down;
						break;
						case PHASESE.Battle_idle:
						sprite_index = spr_ytopyr_sectants_battle_idle;	
						break;
						case PHASESE.Idle:
						sprite_index = spr_ytopyr_sectants_idle;	
						break;
						case PHASESE.Defeat:
						sprite_index = spr_ytopyr_sectants_defeat;	
						break;
						case PHASESE.Hit:
						sprite_index = spr_ytopyr_sectants_battle_hit;	
						break;
					}
		break;
	}
}


