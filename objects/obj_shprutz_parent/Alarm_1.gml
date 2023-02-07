instance_create_depth(490,570,-600,obj_wait);
instance_destroy(obj_shprutz_dow1);
instance_destroy(obj_shprutz_up1);
instance_deactivate_object(obj_mini_avatar);
instance_deactivate_object(wall);
obj_Battle_Interface.phase_battle = PHASES.Defence;
obj_Battle_Interface.enemies = ENEMY.Krus_mini;