alarm[0] = 150;
obj_Battle_Interface.game_over_mini = true;
obj_Battle_Interface.mini_game = false;
//obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Defeat
switch(obj_Battle_Interface.enemies){
case ENEMY.Hopniki:
break;
case ENEMY.Kavkazci:
instance_deactivate_object(obj_mini_avatar);
obj_Battle_Interface.phase_battle = PHASES.Defence;
instance_destroy(obj_sssr);
instance_destroy(obj_sssrs);
break;
case ENEMY.Narkomany:
instance_destroy(obj_shprutz_dow1);
instance_destroy(obj_shprutz_up1);
instance_deactivate_object(obj_mini_avatar);
obj_Battle_Interface.phase_battle = PHASES.Atack;
instance_destroy(obj_shprutz_parent);
break;
case ENEMY.Sectants:
instance_destroy(obj_sects);
instance_deactivate_object(obj_mini_avatar);
obj_Battle_Interface.phase_battle = PHASES.Atack;
instance_deactivate_object(obj_wall_sect);
break;
}