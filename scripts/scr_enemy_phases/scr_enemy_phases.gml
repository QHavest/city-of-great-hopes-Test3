// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy1_phases(){
	
				switch(phasese_enemy1){
						case PHASESE_ENEMY1.Battle:	
						image_speed = 0;
						scr_enemy1_battle();
						image_speed = 1;
						if (image_index >= image_number - 1){
						phasese_enemy1 = PHASESE_ENEMY1.Battle_idle;
						image_speed = 0;
						}
						break;
						case PHASESE_ENEMY1.Battle_down:
						image_speed = 0;
						scr_enemy1_battle();
						image_speed = 1;
						if (image_index >= image_number - 1){
						phasese_enemy1 = PHASESE_ENEMY1.Idle;
						image_speed = 0;
						}
						break;
						case PHASESE_ENEMY1.Battle_idle:
						image_speed = 0;
						scr_enemy1_battle();
						image_speed = 1;
						break;
						case PHASESE_ENEMY1.Idle:
						image_speed = 0;
						scr_enemy1_battle();
						image_speed = 1;
						break;
						case PHASESE_ENEMY1.Defeat:
						image_speed = 0;
						scr_enemy1_battle();
						image_speed = 1;
						if (image_index >= image_number - 1){
						image_speed = 0;
						}
						break;
					}
}

function scr_enemy2_phases(){
	
				switch(phasese_enemy2){
						case PHASESE_ENEMY2.Battle:	
						image_speed = 0;
						scr_enemy2_battle();
						image_speed = 1;
						if (image_index >= image_number - 1){
						phasese_enemy2 = PHASESE_ENEMY2.Battle_idle;
						image_speed = 0;
						}
						break;
						case PHASESE_ENEMY2.Battle_down:
						image_speed = 0;
						scr_enemy2_battle();
						image_speed = 1;
						if (image_index >= image_number - 1){
						phasese_enemy2 = PHASESE_ENEMY2.Idle;
						image_speed = 0;
						}
						break;
						case PHASESE_ENEMY2.Battle_idle:
						image_speed = 0;
						scr_enemy2_battle();
						image_speed = 1;
						break;
						case PHASESE_ENEMY2.Idle:
						image_speed = 0;
						scr_enemy2_battle();
						image_speed = 1;
						break;
						case PHASESE_ENEMY2.Defeat:
						image_speed = 0;
						scr_enemy2_battle();	
						image_speed = 1;
						if (image_index >= image_number - 1){
						image_speed = 0;
						}
						break;
					}
}

function scr_enemy3_phases(){
	
				switch(phasese_enemy3){
						case PHASESE_ENEMY3.Battle:	
						image_speed = 0;
						scr_enemy3_battle();
						image_speed = 1;
						if (image_index >= image_number - 1){
						phasese_enemy3 = PHASESE_ENEMY3.Battle_idle;
						image_speed = 0;
						}
						break;
						case PHASESE_ENEMY3.Battle_down:
						image_speed = 0;
						scr_enemy3_battle();
						image_speed = 1;
						if (image_index >= image_number - 1){
						phasese_enemy3 = PHASESE_ENEMY3.Idle;
						image_speed = 0;
						}
						break;
						case PHASESE_ENEMY3.Battle_idle:
						image_speed = 0;
						scr_enemy3_battle();
						image_speed = 1;
						break;
						case PHASESE_ENEMY3.Idle:
						image_speed = 0;
						scr_enemy3_battle();
						image_speed = 1;
						break;
						case PHASESE_ENEMY3.Defeat:
						image_speed = 0;
						scr_enemy3_battle();	
						image_speed = 1;
						if (image_index >= image_number - 1){
						image_speed = 0;
						}
						break;
					}
}