hInput = keyboard_check(vk_right) - keyboard_check(vk_left);
vInput = keyboard_check(vk_down) - keyboard_check(vk_up);

x += hInput * spd;
y += vInput * spd;
 alarm[1] -= 1;
if(global.MaxHp > 0 and place_meeting(x, y, obj_shprutz_up1)){
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

if(alarm[1] < 1){
	light_bi = 0;
	}
