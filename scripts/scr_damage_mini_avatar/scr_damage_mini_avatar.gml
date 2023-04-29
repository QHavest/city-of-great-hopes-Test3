// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_damage_mini_avatar(){
if(global.MaxHp > 0  and /*place_meeting(x, y, obj_shprutz_dow1) or place_meeting(x, y, obj_shprutz_up1) or place_meeting(x, y, obj_sssrs) or place_meeting(x, y, obj_hrest) or place_meeting(x, y, obj_hrest_horiz) or place_meeting(x,y,obj_bottle_mini) or place_meeting(x,y,obj_kirpich_mini) or place_meeting(x,y,obj_palka_mini) or place_meeting(x,y,obj_rock_mini) or place_meeting(x,y,obj_bottle_mini_1) or place_meeting(x,y,obj_kirpich_mini_2) or place_meeting(x,y,obj_palka_mini_3) or place_meeting(x,y,obj_rock_mini_4) or place_meeting(x, y, obj_nozh) or place_meeting(x, y, obj_nozh_vert)) or (keyboard_check_pressed(vk_up) and obj_mini_ytopur.hits_grusha_up = true) and*/ alarm[4] < 1)  {
	alarm[1] = 15;
	if (obj_Battle_Interface.phase_battle = PHASES.Atack){
	obj_Battle_Interface.light_bi = 1;
	alarm[5] = 3;
	}
	if(global.MaxHp > 51){
	take_damage = true;
	if (take_damage = true){
	obj_Battle_Interface.hpYtopyrok -= damage;
	audio_play_sound(snd_lose_XP,5,false,global.System_gain);
	global.MaxHp = obj_Battle_Interface.hpKrys+obj_Battle_Interface.hpYtopyrok;
	if (obj_Battle_Interface.phase_battle = PHASES.Atack){
	scr_enemy_hit();
	}
	}
	if (alarm[4] < 1){

	obj_Battle_Interface.amount_hp = obj_Battle_Interface.amount_hp - (damage/100*279);
		if (obj_Battle_Interface.phase_battle = PHASES.Atack)
		{
		alarm[7] = 2;
		alarm[8] = 7;
		}
		if (obj_Battle_Interface.phase_battle = PHASES.Defence and light_ambient == true){
		obj_Battle_Interface.amount_hp_enemy = obj_Battle_Interface.amount_hp_enemy - (damage_enemy/100*96);
		obj_Battle_Interface.light_bi = 3;
		alarm[6] = 5;
		scr_gg_hit();
		} else 
			{
			//obj_Battle_Interface.amount_hp = obj_Battle_Interface.amount_hp - (damage/100*279);
			obj_Battle_Interface.light_bi = 1;
			alarm[5] = 3;
			alarm[7] = 2;
			alarm[8] = 7;
			//scr_gg_hit();
			}
	}
	
	switch (obj_Battle_Interface.phase_battle){
		case PHASES.Atack:
			switch (obj_Battle_Interface.enemies){
				case ENEMY.Hopniki:
					alarm[4]=40;
				break;
				case ENEMY.Sectants:
					alarm[4]=65;
				break;
				case ENEMY.Kavkazci:
					alarm[4]=1;
				break;
				case ENEMY.Narkomany:
					alarm[4]=30;
				break;
			}
		break;
		case PHASES.Defence:
			switch (obj_Battle_Interface.aliens){
				case ALIES.Krus_mini:
					alarm[4]=1;
				break;
				case ALIES.Ytopurok_mini:
					alarm[4]=1;
				break;
			}
		break;
	}
	take_damage = false;
	}
	else if(global.MaxHp > 0 and global.MaxHp < 51){
		
	obj_Battle_Interface.hpKrys -= damage;
	audio_play_sound(snd_lose_XP,5,false,global.System_gain);
	global.MaxHp = obj_Battle_Interface.hpKrys+obj_Battle_Interface.hpYtopyrok;
	if (obj_Battle_Interface.phase_battle = PHASES.Atack){
	scr_enemy_hit();
	}
	take_damage = true;
	if (alarm[4] < 1){
		obj_Battle_Interface.amount_hp = obj_Battle_Interface.amount_hp - (damage/100*279);
		if (obj_Battle_Interface.phase_battle = PHASES.Atack)
		{
		alarm[7] = 2;
		alarm[8] = 7;
		}
		if (obj_Battle_Interface.phase_battle = PHASES.Defence and light_ambient == true){
		obj_Battle_Interface.amount_hp_enemy = obj_Battle_Interface.amount_hp_enemy - (damage_enemy/100*96);
		obj_Battle_Interface.light_bi = 3;
		alarm[6] = 5;
		scr_gg_hit();
		} else {
			//obj_Battle_Interface.amount_hp = obj_Battle_Interface.amount_hp - (damage/100*279);
			obj_Battle_Interface.light_bi = 1;
			alarm[5] = 3;
			alarm[7] = 2;
			alarm[8] = 7;
			//scr_gg_hit();
			}
	}
	switch (obj_Battle_Interface.phase_battle){
		case PHASES.Atack:
			switch (obj_Battle_Interface.enemies){
				case ENEMY.Hopniki:
					alarm[4]=20;
				break;
				case ENEMY.Sectants:
					alarm[4]=65;
				break;
				case ENEMY.Kavkazci:
					alarm[4]=1;
				break;
				case ENEMY.Narkomany:
					alarm[4]=30;
				break;
			}
		break;
		case PHASES.Defence:
			switch (obj_Battle_Interface.aliens){
				case ALIES.Krus_mini:
					alarm[4]=1;
				break;
				case ALIES.Ytopurok_mini:
					alarm[4]=1;
				break;
			}
		break;
	}
	}
	take_damage = false;
} else if (global.MaxHp = 0){
	if (global.MaxHp <= 0 and obj_krus_battle.phasese_krus != PHASESE_KRUS.Defeat){
		obj_krus_battle.image_index = 0;
		obj_krus_battle.phasese_krus = PHASESE_KRUS.Defeat;
		}
	if (obj_krus_battle.death_krus == true){
	instance_create_depth(506,101,0,obj_screen_up_destr)
	}
	audio_play_sound(snd_defeat_sound,5,false);
	switch(global.LANGUAGE)
		{
			case "eng":
			instance_create_depth(466,570,-600,obj_gameover);
			break;
			case "ua":
			instance_create_depth(466,570,-600,obj_gameover).sprite_index = spr_gameoverUA;
			break;
		}
	instance_destroy(obj_shprutz_dow1);
	instance_destroy(obj_shprutz_up1);
	instance_deactivate_object(obj_mini_avatar);
	instance_deactivate_object(wall);
	instance_destroy(obj_shprutz_parent);
	obj_Battle_Interface.mini_game = false;

	//global.MaxHp = 100;
}
}