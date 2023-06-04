alarm[0] = 135;
obj_Battle_Interface.light_bi = 0;
obj_Battle_Interface.game_over_mini = true;
obj_Battle_Interface.mini_game = false;
//obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Defeat
switch(obj_Battle_Interface.enemies){
case ENEMY.Hopniki:
break;
case ENEMY.Kavkazci:
instance_destroy(obj_mini_ytopur);
instance_destroy(obj_mini_krus);
instance_deactivate_object(obj_mini_avatar);
obj_Battle_Interface.phase_battle = PHASES.Atack;
instance_destroy(obj_sssr);
instance_destroy(obj_sssrs);
//obj_Battle_Interface.lives_enemy_kavkaz = false; Mazur
break;
case ENEMY.Narkomany:
instance_destroy(obj_mini_ytopur);
instance_destroy(obj_mini_krus);
instance_destroy(obj_shprutz_dow1);
instance_destroy(obj_shprutz_up1);
instance_deactivate_object(obj_mini_avatar);
obj_Battle_Interface.phase_battle = PHASES.Atack;
instance_destroy(obj_shprutz_parent);
obj_Battle_Interface.lives_enemy = false;
break;
case ENEMY.Sectants:
instance_destroy(obj_mini_ytopur);
instance_destroy(obj_mini_krus);
instance_destroy(obj_sects);
instance_deactivate_object(obj_mini_avatar);
obj_Battle_Interface.phase_battle = PHASES.Atack;
instance_deactivate_object(obj_wall_sect);
break;
}
obj_Battle_Interface.hp_enemies = false;
var moneys = irandom(4);
switch(moneys)
{
	case 0:
	switch(global.LANGUAGE)
		{
		case "eng":
		instance_create_depth(506,101,0,obj_get_karb).sprite_index = spr_get2_eng;
		break;
		case "ua":
		instance_create_depth(506,101,0,obj_get_karb).sprite_index = spr_get2_ua;
		break;
		}
	global.money += 2;
	break;
	case 1:
	switch(global.LANGUAGE)
		{
		case "eng":
		instance_create_depth(506,101,0,obj_get_karb).sprite_index = spr_get4_eng;
		break;
		case "ua":
		instance_create_depth(506,101,0,obj_get_karb).sprite_index = spr_get4_ua;
		break;
		}
	global.money += 4;
	break;
	case 2:
	switch(global.LANGUAGE)
		{
		case "eng":
		instance_create_depth(506,101,0,obj_get_karb).sprite_index = spr_get6_eng;
		break;
		case "ua":
		instance_create_depth(506,101,0,obj_get_karb).sprite_index = spr_get6_ua;
		break;
		}
	global.money += 6;
	break;
	case 3:
	switch(global.LANGUAGE)
		{
		case "eng":
		instance_create_depth(506,101,0,obj_get_karb).sprite_index = spr_get8_eng;
		break;
		case "ua":
		instance_create_depth(506,101,0,obj_get_karb).sprite_index = spr_get8_ua;
		break;
		}
	global.money += 8;
	break;
	case 4:
	switch(global.LANGUAGE)
		{
		case "eng":
		instance_create_depth(506,101,0,obj_get_karb).sprite_index = spr_get10_eng;
		break;
		case "ua":
		instance_create_depth(506,101,0,obj_get_karb).sprite_index = spr_get10_ua;
		break;
		}
	global.money += 10;
	break;

}