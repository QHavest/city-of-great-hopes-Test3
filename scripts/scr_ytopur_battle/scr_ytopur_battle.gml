function scr_ytopur_battle(){
		switch(phasese){
					case PHASESE.Battle:	
					image_speed = 0;
					sprite_index = spr_ytopyr_kavkazci_battle;
					image_speed = 1;
					if (image_index >= image_number - 1){
					phasese = PHASESE.Battle_idle;
					image_speed = 0;
					}
					break;
					case PHASESE.Battle_down:
					image_speed = 0;
					sprite_index = spr_ytopyr_kavkazci_battle_down;
					image_speed = 1;
					if (image_index >= image_number - 1){
					phasese = PHASESE.Idle;
					image_speed = 0;
					}
					break;
					case PHASESE.Battle_idle:
					image_speed = 0;
					sprite_index = spr_ytopyr_kavkazci_battle_idle;	
					image_speed = 1;
					break;
					case PHASESE.Idle:
					image_speed = 0;
					sprite_index = spr_ytopyr_kavkazci_idle;	
					image_speed = 1;
					break;
				}
}


