image_index = 0;

/*hInput = keyboard_check(vk_right) - keyboard_check(vk_left);
vInput = keyboard_check(vk_down) - keyboard_check(vk_up);

x += hInput * spd;
y += vInput * spd;*/

/*spd += grv
y += spd
x++*/
#region ходьба по клітинкам

if place_snapped(G,G1){
speed=0//остановка игрока

if keyboard_check_pressed(vk_down) && Move[1,0]=true{
//motion_set(270,S)//шагать вниз со скоростью S
y += 105;
}

if keyboard_check_pressed(vk_up) && Move[1,1]=true{  
//motion_set(90,S)//шагать наверх со скоростью S 
y -= 105;
}
}

#endregion


if (keyboard_check_pressed(ord("W"))){
	spd = -10;
}

 alarm[1] -= 1;
 alarm[4] -= 1;
if(global.MaxHp > 0 and place_meeting(x, y, obj_shprutz_parent) and alarm[4] < 1){
	alarm[1] = 30;
	light_bi = 1;
	if(global.MaxHp > 51){
	global.MaxHp = hpKrys+hpYtopyrok;
	take_damage = true;
	if (alarm[4] < 1){
	hpYtopyrok -= damage;
	amount_hp = amount_hp - (damage/100*279);
	}
	alarm[4]=60;
	}
	else if(global.MaxHp > 0 and global.MaxHp < 51){
	global.MaxHp = hpKrys+hpYtopyrok;
	take_damage = true;
	if (alarm[4] < 1){
	hpKrys -= damage;
	amount_hp = amount_hp - (damage/100*279);
	}
	alarm[4]=60;
	}
	take_damage = false;
} 


if(alarm[1] < 1){
	light_bi = 0;
	}
