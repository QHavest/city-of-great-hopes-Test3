//В степ івент треба внести всі умови при яких починається боротьба
if(keyboard_check_pressed(ord("B"))){
	battle_start = !battle_start;
	room_goto(Room61);
} else if (!battle_start = battle_start)
{room_goto(rm_south);}
//alarm[1] -= 1;
//отримання пошкодження
/*if(keyboard_check_pressed(ord("V")) and global.MaxHp > 0 and place_meeting(x, y, obj_mini_avatar)){
	alarm[1] = 30;
	light_bi = 1;
	if(global.MaxHp > 50){
	hpYtopyrok -= damage;
	global.MaxHp = hpKrys+hpYtopyrok;
	take_damage = true;
	amount_hp = amount_hp - (279/damage);
	}
	else if(global.MaxHp > 0){
	hpKrys -= damage;
	global.MaxHp = hpKrys+hpYtopyrok;
	take_damage = true;
	amount_hp = amount_hp - (279/damage);
	}
	take_damage = false;
}
//мерехтілка
if(alarm[1] < 1){
	light_bi = 0;
	}*/