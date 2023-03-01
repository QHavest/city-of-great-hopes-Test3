// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_krus_phases(){
				switch(phasese_krus){
						case PHASESE_KRUS.Battle:	
						image_speed = 0;
						scr_krus_battle();
						image_speed = 1;
						if (image_index >= image_number - 1){
						phasese_krus = PHASESE_KRUS.Battle_idle;
						image_speed = 0;
						}
						break;
						case PHASESE_KRUS.Battle_down:
						image_speed = 0;
						scr_krus_battle();
						image_speed = 1;
						if (image_index >= image_number - 1){
						phasese_krus = PHASESE_KRUS.Idle;
						image_speed = 0;
						}
						break;
						case PHASESE_KRUS.Battle_idle:
						image_speed = 0;
						scr_krus_battle();
						image_speed = 1;
						break;
						case PHASESE_KRUS.Idle:
						image_speed = 0;
						scr_krus_battle();
						image_speed = 1;
						break;
						case PHASESE_KRUS.Defeat:
						image_speed = 0;
						scr_krus_battle();
						image_speed = 1;
						if (image_index >= image_number - 1){
						image_speed = 0;
						}
						break;
					}
}