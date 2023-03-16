if (global.MaxHp >= 51 and obj_ytopur_battle.phasese != PHASESE.Defeat2){
		obj_ytopur_battle.image_index = 0;
		obj_ytopur_battle.phasese = PHASESE.Battle_down;
	}
obj_krus_battle.phasese_krus = PHASESE_KRUS.Battle_down;

if (obj_enemy3_battle.phasese_enemy3 != PHASESE_ENEMY3.Defeat2){
	obj_enemy1_battle.image_index = 0;
	obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Battle_down;
	obj_enemy2_battle.image_index = 0;
	obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Battle_down;
	obj_enemy3_battle.image_index = 0;
	obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Battle_down;
	} else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat2 and obj_enemy1_battle.phasese_enemy1 != PHASESE_ENEMY1.Defeat2){
		obj_enemy1_battle.image_index = 0;
		obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Battle_down;
		obj_enemy2_battle.image_index = 0;
		obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Battle_down;
		}	else if (obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Defeat2 and obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Defeat2 and obj_enemy2_battle.phasese_enemy2 != PHASESE_ENEMY2.Defeat2){
			obj_enemy2_battle.image_index = 0;
			obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Battle_down;
			}
/*obj_enemy1_battle.image_index = 0;
obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Battle_down;
obj_enemy2_battle.image_index = 0;
obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Battle_down;
obj_enemy3_battle.image_index = 0;
obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Battle_down;*/