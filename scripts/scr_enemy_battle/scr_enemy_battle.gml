function scr_enemy1_battle(){
	switch(obj_Battle_Interface.enemies){
		case ENEMY.Hopniki:
			switch(phasese_enemy1){
						case PHASESE_ENEMY1.Battle:	
						sprite_index = spr_hopnik_battle0;
						break;
						case PHASESE_ENEMY1.Battle1:	
						sprite_index = spr_hopnik_battle1;
						break;
						case PHASESE_ENEMY1.Battle2:	
						sprite_index = spr_hopnik_battle2;
						break;
						case PHASESE_ENEMY1.Battle_down:
						sprite_index = spr_hopnik_battle_down0;
						break;
						case PHASESE_ENEMY1.Battle_down1:
						sprite_index = spr_hopnik_battle_down1;
						break;
						case PHASESE_ENEMY1.Battle_down2:
						sprite_index = spr_hopnik_battle_down2;
						break;
						case PHASESE_ENEMY1.Battle_idle:
						sprite_index = spr_hopnik_battle_idle;	
						break;
						case PHASESE_ENEMY1.Idle:
						sprite_index = spr_hopnik_idle;	
						break;
						case PHASESE_ENEMY1.Defeat:
						sprite_index = spr_hopnik_defeat;	
						break;
						case PHASESE_ENEMY1.Defeat2:
						sprite_index = spr_hopnik_defeat_2;	
						break;
						case PHASESE_ENEMY1.Hit:
						sprite_index = spr_hopnik_battle_hit;	
						break;
					}
		break;
		case ENEMY.Kavkazci:
			switch(phasese_enemy1){
						case PHASESE_ENEMY1.Battle:	
						sprite_index = spr_kavkaz_battle0;
						break;
						case PHASESE_ENEMY1.Battle_down:
						sprite_index = spr_kavkaz_battle_down0;
						break;
						case PHASESE_ENEMY1.Battle_idle:
						sprite_index = spr_kavkaz_battle_idle;	
						break;
						case PHASESE_ENEMY1.Idle:
						sprite_index = spr_kavkaz_idle;	
						break;
						case PHASESE_ENEMY1.Defeat:
						sprite_index = spr_kavkaz_defeat;	
						break;
						case PHASESE_ENEMY1.Defeat2:
						sprite_index = spr_kavkaz_defeat_2;	
						break;
						case PHASESE_ENEMY1.Hit:
						sprite_index = spr_kavkaz_battle_hit;	
						break;
					}
		break;
		case ENEMY.Narkomany:
			switch(phasese_enemy1){
						case PHASESE_ENEMY1.Battle:	
						sprite_index = spr_narkoman_battle0;
						break;
						case PHASESE_ENEMY1.Battle_down:
						sprite_index = spr_narkoman_battle_down0;
						break;
						case PHASESE_ENEMY1.Battle_idle:
						sprite_index = spr_narkoman_battle_idle;	
						break;
						case PHASESE_ENEMY1.Idle:
						sprite_index = spr_narkoman_idle;	
						break;
						case PHASESE_ENEMY1.Defeat:
						sprite_index = spr_narkoman_defeat;	
						break;
						case PHASESE_ENEMY1.Defeat2:
						sprite_index = spr_narkoman_defeat_2;	
						break;
						case PHASESE_ENEMY1.Hit:
						sprite_index = spr_narkoman_battle_hit;	
						break;
					}
		break;
		case ENEMY.Sectants:
			switch(phasese_enemy1){
						case PHASESE_ENEMY1.Battle:	
						sprite_index = spr_sectant_battle0;
						break;
						case PHASESE_ENEMY1.Battle_down:
						sprite_index = spr_sectant_battle_down0;
						break;
						case PHASESE_ENEMY1.Battle_idle:
						sprite_index = spr_sectant_battle_idle;	
						break;
						case PHASESE_ENEMY1.Idle:
						sprite_index = spr_sectant_idle;	
						break;
						case PHASESE_ENEMY1.Defeat:
						sprite_index = spr_sectant_defeat;	
						break;
						case PHASESE_ENEMY1.Defeat2:
						sprite_index = spr_sectant_defeat_2;	
						break;
						case PHASESE_ENEMY1.Hit:
						sprite_index = spr_sectant_battle_hit;	
						break;
					}
		break;
	}
}

function scr_enemy2_battle(){
	switch(obj_Battle_Interface.enemies){
		case ENEMY.Hopniki:
			switch(phasese_enemy2){
						case PHASESE_ENEMY2.Battle:	
						sprite_index = spr_hopnik2_battle0;
						break;
						case PHASESE_ENEMY2.Battle1:	
						sprite_index = spr_hopnik2_battle1;
						break;
						case PHASESE_ENEMY2.Battle_down:
						sprite_index = spr_hopnik2_battle_down0;
						break;
						case PHASESE_ENEMY2.Battle_idle:
						sprite_index = spr_hopnik2_battle_idle;	
						break;
						case PHASESE_ENEMY2.Idle:
						sprite_index = spr_hopnik2_idle;	
						break;
						case PHASESE_ENEMY2.Defeat:
						sprite_index = spr_hopnik2_defeat;	
						break;
						case PHASESE_ENEMY2.Defeat2:
						sprite_index = spr_hopnik2_defeat_2;	
						break;
						case PHASESE_ENEMY2.Hit:
						sprite_index = spr_hopnik2_battle_hit;	
						break;
					}
		break;
		case ENEMY.Kavkazci:
			switch(phasese_enemy2){
						case PHASESE_ENEMY2.Battle:	
						sprite_index = spr_kavkaz2_battle0;
						break;
						case PHASESE_ENEMY2.Battle_down:
						sprite_index = spr_kavkaz2_battle_down0;
						break;
						case PHASESE_ENEMY2.Battle_idle:
						sprite_index = spr_kavkaz2_battle_idle;	
						break;
						case PHASESE_ENEMY2.Idle:
						sprite_index = spr_kavkaz2_idle;	
						break;
						case PHASESE_ENEMY2.Defeat:
						sprite_index = spr_kavkaz2_defeat;	
						break;
						case PHASESE_ENEMY2.Defeat2:
						sprite_index = spr_kavkaz2_defeat_2;	
						break;
						case PHASESE_ENEMY2.Hit:
						sprite_index = spr_kavkaz2_battle_hit;	
						break;
					}
		break;
		case ENEMY.Narkomany:
			switch(phasese_enemy2){
						case PHASESE_ENEMY2.Battle:	
						sprite_index = spr_narkoman2_battle0;
						break;
						case PHASESE_ENEMY2.Battle_down:
						sprite_index = spr_narkoman2_battle_down0;
						break;
						case PHASESE_ENEMY2.Battle_idle:
						sprite_index = spr_narkoman2_battle_idle;	
						break;
						case PHASESE_ENEMY2.Idle:
						sprite_index = spr_narkoman2_idle;	
						break;
						case PHASESE_ENEMY2.Defeat:
						sprite_index = spr_narkoman2_defeat;	
						break;
						case PHASESE_ENEMY2.Defeat2:
						sprite_index = spr_narkoman2_defeat_2;	
						break;
						case PHASESE_ENEMY2.Hit:
						sprite_index = spr_narkoman2_battle_hit;	
						break;
					}
		break;
		case ENEMY.Sectants:
			switch(phasese_enemy2){
						case PHASESE_ENEMY2.Battle:	
						sprite_index = spr_sectant2_battle0;
						break;
						case PHASESE_ENEMY2.Battle_down:
						sprite_index = spr_sectant2_battle_down0;
						break;
						case PHASESE_ENEMY2.Battle_idle:
						sprite_index = spr_sectant2_battle_idle;	
						break;
						case PHASESE_ENEMY2.Idle:
						sprite_index = spr_sectant2_idle;	
						break;
						case PHASESE_ENEMY2.Defeat:
						sprite_index = spr_sectant2_defeat;	
						break;
						case PHASESE_ENEMY2.Defeat2:
						sprite_index = spr_sectant2_defeat_2;	
						break;
						case PHASESE_ENEMY2.Hit:
						sprite_index = spr_sectant2_battle_hit;	
						break;
					}
		break;
	}
}

function scr_enemy3_battle(){
	switch(obj_Battle_Interface.enemies){
		case ENEMY.Hopniki:
			switch(phasese_enemy3){
						case PHASESE_ENEMY3.Battle:	
						sprite_index = spr_hopnik3_battle0;
						break;
						case PHASESE_ENEMY3.Battle1:	
						sprite_index = spr_hopnik3_battle1;
						break;
						case PHASESE_ENEMY3.Battle2:	
						sprite_index = spr_hopnik3_battle2;
						break;
						case PHASESE_ENEMY3.Battle_down:
						sprite_index = spr_hopnik3_battle_down0;
						break;
						case PHASESE_ENEMY3.Battle_idle:
						sprite_index = spr_hopnik3_battle_idle;	
						break;
						case PHASESE_ENEMY3.Idle:
						sprite_index = spr_hopnik3_idle;	
						break;
						case PHASESE_ENEMY3.Defeat:
						sprite_index = spr_hopnik3_defeat;	
						break;
						case PHASESE_ENEMY3.Defeat2:
						sprite_index = spr_hopnik3_defeat_2;	
						break;
						case PHASESE_ENEMY3.Hit:
						sprite_index = spr_hopnik3_battle_hit;	
						break;
					}
		break;
		case ENEMY.Kavkazci:
			switch(phasese_enemy3){
						case PHASESE_ENEMY3.Battle:	
						sprite_index = spr_kavkaz3_battle0;
						break;
						case PHASESE_ENEMY3.Battle_down:
						sprite_index = spr_kavkaz3_battle_down0;
						break;
						case PHASESE_ENEMY3.Battle_idle:
						sprite_index = spr_kavkaz3_battle_idle;	
						break;
						case PHASESE_ENEMY3.Idle:
						sprite_index = spr_kavkaz3_idle;	
						break;
						case PHASESE_ENEMY3.Defeat:
						sprite_index = spr_kavkaz3_defeat;	
						break;
						case PHASESE_ENEMY3.Defeat2:
						sprite_index = spr_kavkaz3_defeat_2;	
						break;
						case PHASESE_ENEMY3.Hit:
						sprite_index = spr_kavkaz3_battle_hit;	
						break;
					}
		break;
		case ENEMY.Narkomany:
			switch(phasese_enemy3){
						case PHASESE_ENEMY3.Battle:	
						sprite_index = spr_narkoman3_battle0;
						break;
						case PHASESE_ENEMY3.Battle_down:
						sprite_index = spr_narkoman3_battle_down0;
						break;
						case PHASESE_ENEMY3.Battle_idle:
						sprite_index = spr_narkoman3_battle_idle;	
						break;
						case PHASESE_ENEMY3.Idle:
						sprite_index = spr_narkoman3_idle;	
						break;
						case PHASESE_ENEMY3.Defeat:
						sprite_index = spr_narkoman3_defeat;	
						break;
						case PHASESE_ENEMY3.Defeat2:
						sprite_index = spr_narkoman3_defeat_2;	
						break;
						case PHASESE_ENEMY3.Hit:
						sprite_index = spr_narkoman3_battle_hit;	
						break;
					}
		break;
		case ENEMY.Sectants:
			switch(phasese_enemy3){
						case PHASESE_ENEMY3.Battle:	
						sprite_index = spr_sectant3_battle0;
						break;
						case PHASESE_ENEMY3.Battle_down:
						sprite_index = spr_sectant3_battle_down0;
						break;
						case PHASESE_ENEMY3.Battle_idle:
						sprite_index = spr_sectant3_battle_idle;	
						break;
						case PHASESE_ENEMY3.Idle:
						sprite_index = spr_sectant3_idle;	
						break;
						case PHASESE_ENEMY3.Defeat:
						sprite_index = spr_sectant3_defeat;	
						break;
						case PHASESE_ENEMY3.Defeat2:
						sprite_index = spr_sectant3_defeat_2;	
						break;
						case PHASESE_ENEMY3.Hit:
						sprite_index = spr_sectant3_battle_hit;	
						break;
					}
		break;
	}
}


