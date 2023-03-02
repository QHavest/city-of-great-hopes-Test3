// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_hit(){
	if (obj_enemy3_battle.phasese_enemy3 != PHASESE_ENEMY3.Defeat){
		obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Hit;
		obj_enemy3_battle.image_index = 0;
	} else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat){
		obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Hit;
		obj_enemy1_battle.image_index = 0;
		}	else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat and obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Defeat){
			obj_enemy2_battle.phasese_enemy1 = PHASESE_ENEMY2.Hit;
			obj_enemy2_battle.image_index = 0;
			}
}

function scr_gg_hit(){

}