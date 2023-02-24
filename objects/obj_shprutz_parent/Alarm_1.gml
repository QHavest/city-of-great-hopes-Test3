instance_create_depth(490,570,-600,obj_wait);
instance_destroy(obj_shprutz_dow1);
instance_destroy(obj_shprutz_up1);
instance_deactivate_object(obj_mini_avatar);
instance_deactivate_object(wall);
obj_Battle_Interface.phase_battle = PHASES.Defence;
instance_destroy(obj_shprutz_parent);
obj_ytopur_battle.phasese = PHASESE.Battle_down;
//obj_Battle_Interface.enemies = ENEMY.Noname;