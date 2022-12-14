//В степ івент треба внести всі умови при яких починається боротьба
if(keyboard_check_pressed(ord("B"))){
	battle_start = !battle_start;
	spr_krus_zelen.y = lerp(y,mouse_y,0.1)
}
alarm[1] -= 1;
//отримання пошкодження
if(keyboard_check_pressed(ord("V")) and global.MaxHp > 0){
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
	}