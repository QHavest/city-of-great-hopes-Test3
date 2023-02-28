// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ytopur_phases(){
				switch(phasese){
						case PHASESE.Battle:	
						image_speed = 0;
						scr_ytopur_battle()
						image_speed = 1;
						if (image_index >= image_number - 1){
						phasese = PHASESE.Battle_idle;
						image_speed = 0;
						}
						break;
						case PHASESE.Battle_down:
						image_speed = 0;
						scr_ytopur_battle()
						image_speed = 1;
						if (image_index >= image_number - 1){
						phasese = PHASESE.Idle;
						image_speed = 0;
						}
						break;
						case PHASESE.Battle_idle:
						image_speed = 0;
						scr_ytopur_battle()	
						image_speed = 1;
						break;
						case PHASESE.Idle:
						image_speed = 0;
						scr_ytopur_battle()	
						image_speed = 1;
						break;
						case PHASESE.Defeat:
						image_speed = 0;
						scr_ytopur_battle()	
						image_speed = 1;
						if (image_index >= image_number - 1){
						image_speed = 0;
						}
						break;
					}
}