//alarm[0] = 100;
alarm[0] = 200;
target_x = 0;
target_y = 0;
obj_Battle_Interface.hp_enemies = false;
//obj_ytopur_battle.phasese = PHASESE.Defeat;
//	obj_krus_battle.phasese_krus = PHASESE_KRUS.Battle;
obj_Battle_Interface.game_over_mini = true;
var moneys = irandom(4);
switch(moneys)
{
	case 0:
	switch(global.LANGUAGE)
		{
		case "eng":
		instance_create_depth(506,101,0,obj_loose_karb).sprite_index = spr_loose2_eng;
		break;
		case "ua":
		instance_create_depth(506,101,0,obj_loose_karb).sprite_index = spr_loose2_ua;
		break;
		}
	global.money -= 2;
	break;
	case 1:
	switch(global.LANGUAGE)
		{
		case "eng":
		instance_create_depth(506,101,0,obj_loose_karb).sprite_index = spr_loose4_eng;
		break;
		case "ua":
		instance_create_depth(506,101,0,obj_loose_karb).sprite_index = spr_loose4_ua;
		break;
		}
	global.money -= 4;
	break;
	case 2:
	switch(global.LANGUAGE)
		{
		case "eng":
		instance_create_depth(506,101,0,obj_loose_karb).sprite_index = spr_loose6_eng;
		break;
		case "ua":
		instance_create_depth(506,101,0,obj_loose_karb).sprite_index = spr_loose6_ua;
		break;
		}
	global.money -= 6;
	break;
	case 3:
	switch(global.LANGUAGE)
		{
		case "eng":
		instance_create_depth(506,101,0,obj_loose_karb).sprite_index = spr_loose8_eng;
		break;
		case "ua":
		instance_create_depth(506,101,0,obj_loose_karb).sprite_index = spr_loose8_ua;
		break;
		}
	global.money -= 8;
	break;
	case 4:
	switch(global.LANGUAGE)
		{
		case "eng":
		instance_create_depth(506,101,0,obj_loose_karb).sprite_index = spr_loose10_eng;
		break;
		case "ua":
		instance_create_depth(506,101,0,obj_loose_karb).sprite_index = spr_loose10_ua;
		break;
		}
	global.money -= 10;
	break;

}