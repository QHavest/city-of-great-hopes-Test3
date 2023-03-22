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
		if (obj_Battle_Interface.phase_battle = PHASES.Defence){
		obj_Battle_Interface.amount_hp_enemy = obj_Battle_Interface.amount_hp_enemy - (damage_enemy/100*96);
		obj_Battle_Interface.light_bi = 3;
		alarm[6] = 5;
		scr_gg_hit();
		}
	}
	alarm[4]=40;
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
		if (obj_Battle_Interface.phase_battle = PHASES.Defence and take_damage != true){
		obj_Battle_Interface.amount_hp_enemy = obj_Battle_Interface.amount_hp_enemy - (damage_enemy/100*96);
		obj_Battle_Interface.light_bi = 3;
		alarm[6] = 5;
		scr_gg_hit();
		}
	}
	alarm[4]=40;
	}
	take_damage = false;
} else if (global.MaxHp = 0){
	if (global.MaxHp <= 0 and obj_krus_battle.phasese_krus != PHASESE_KRUS.Defeat){
		obj_krus_battle.image_index = 0;
		obj_krus_battle.phasese_krus = PHASESE_KRUS.Defeat;
		}
	audio_play_sound(snd_defeat_sound,5,false);
	instance_create_depth(466,570,-600,obj_gameover);
	instance_destroy(obj_shprutz_dow1);
	instance_destroy(obj_shprutz_up1);
	instance_deactivate_object(obj_mini_avatar);
	instance_deactivate_object(wall);
	instance_destroy(obj_shprutz_parent);
	obj_Battle_Interface.mini_game = false;

	//global.MaxHp = 100;
}
}