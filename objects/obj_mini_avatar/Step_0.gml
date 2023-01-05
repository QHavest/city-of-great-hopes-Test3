image_index = index_avatar;
if (obj_Battle_Interface.mini_game = true and obj_Battle_Interface.enemies = ENEMY.Narkomany){
hInput = keyboard_check(vk_right) - keyboard_check(vk_left);
vInput = keyboard_check(vk_down) - keyboard_check(vk_up);

x += hInput * spd;
y += vInput * spd;

spd += grv
y += spd
x++
}
if (obj_Battle_Interface.mini_game = true and obj_Battle_Interface.enemies = ENEMY.Krus_mini){
hInput = keyboard_check(vk_right) - keyboard_check(vk_left);
vInput = keyboard_check(vk_down) - keyboard_check(vk_up);

x += hInput * 15;
y += vInput * 15;
}
#region ходьба по клітинкам СРСР Кавказці
if (obj_Battle_Interface.mini_game = true and obj_Battle_Interface.enemies = ENEMY.Kavkazci){

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
}
#endregion

#region ходьба по клітинкам Сектанти Хрести
if (obj_Battle_Interface.mini_game = true and obj_Battle_Interface.enemies = ENEMY.Sectants){

if place_snapped(G,G1){
speed=0//остановка игрока

if keyboard_check_pressed(vk_right) && Move[1,0]=true{  
//motion_set(90,S)//шагать наверх со скоростью S 
x += 105;
}

if keyboard_check_pressed(vk_left) && Move[1,1]=true{  
//motion_set(90,S)//шагать наверх со скоростью S 
x -= 105;
}

if keyboard_check_pressed(vk_down) && Move[1,2]=true{
//motion_set(270,S)//шагать вниз со скоростью S
y += 105;
}

if keyboard_check_pressed(vk_up) && Move[1,3]=true{  
//motion_set(90,S)//шагать наверх со скоростью S 
y -= 105;
}
}
}
#endregion

#region короткий рух головой Міні гра за утопирка захист
if (obj_Battle_Interface.mini_game = true and obj_Battle_Interface.enemies = ENEMY.Ytopurok_mini){
switch (keyboard_key)
{
	case vk_left:
    case ord("A"):
        mp_linear_step(928,748,5,false);
    break;

    case vk_right:
    case ord("D"):
        mp_linear_step(960,748,5,false);
    break;

    case vk_up:
    case ord("W"):
        mp_linear_step(945,736,5,false);
    break;

    case vk_down:
    case ord("S"):
        mp_linear_step(945,768,5,false);
    break;
	default:
	 mp_linear_step(945,748,5,false);
}
}
#endregion
if (keyboard_check_pressed(ord("W"))){
	spd = -10;
}

 alarm[1] -= 1;
 alarm[4] -= 1;
if(global.MaxHp > 0 and /*place_meeting(x, y, obj_shprutz_parent) or */place_meeting(x, y, obj_shprutz_dow1) or place_meeting(x, y, obj_sssrs) or place_meeting(x, y, obj_hrest) or place_meeting(x, y,obj_mini_krus)  and alarm[4] < 1){
	alarm[1] = 30;
	obj_Battle_Interface.light_bi = 1;
	if(global.MaxHp > 51){
	obj_Battle_Interface.hpYtopyrok -= damage;
	global.MaxHp = obj_Battle_Interface.hpKrys+obj_Battle_Interface.hpYtopyrok;
	take_damage = true;
	
	if (alarm[4] < 1){
	
	amount_hp = amount_hp - (damage/100*279);
	}
	alarm[4]=60;
	}
	else if(global.MaxHp > 0 and global.MaxHp < 51){
	obj_Battle_Interface.hpKrys -= damage;
	global.MaxHp = obj_Battle_Interface.hpKrys+obj_Battle_Interface.hpYtopyrok;
	take_damage = true;
	if (alarm[4] < 1){
	amount_hp = amount_hp - (damage/100*279);
	}
	alarm[4]=60;
	}
	take_damage = false;
} 


if(alarm[1] < 1){
	obj_Battle_Interface.light_bi = 0;
	}
