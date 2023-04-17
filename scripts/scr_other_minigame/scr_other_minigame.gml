// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_battle_phases_enemy(){
	if (obj_enemy3_battle.phasese_enemy3 != PHASESE_ENEMY3.Defeat2){
			obj_enemy1_battle.image_index = 0;
			obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Battle;
			obj_enemy2_battle.image_index = 0;
			obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Battle;
			obj_enemy3_battle.image_index = 0;
			obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Battle;
			} else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat2 and obj_enemy1_battle.phasese_enemy1 != PHASESE_ENEMY1.Defeat2){
				obj_enemy1_battle.image_index = 0;
				obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Battle;
				obj_enemy2_battle.image_index = 0;
				obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Battle;
				}	else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat2 and obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat2 and obj_enemy2_battle.phasese_enemy2 != PHASESE_ENEMY2.Defeat2){
				obj_enemy2_battle.image_index = 0;
				obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Battle;
					}/*else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat and obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat and obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Defeat){
					obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Defeat
					obj_enemy2_battle.image_index = 0;
						}*/
}