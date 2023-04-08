//if(obj_Battle_Interface.mini_game = false) exit;
image_index = index_avatar;

switch(obj_Battle_Interface.phase_battle){
	case PHASES.Atack:
		switch(obj_Battle_Interface.enemies){
			case ENEMY.Kavkazci :
			if (obj_ytopur_battle.phasese != PHASESE.Defeat2)
			{
				obj_mini_avatar.index_avatar = 2;
			} else {obj_mini_avatar.index_avatar = 3;}
			break;
			case ENEMY.Sectants :
			if (obj_ytopur_battle.phasese != PHASESE.Defeat2)
			{
				obj_mini_avatar.index_avatar = 4;
			} else {obj_mini_avatar.index_avatar = 5;}
			break;
			case ENEMY.Hopniki :
			obj_mini_avatar.index_avatar = 7;
			/*if (obj_ytopur_battle.phasese != PHASESE.Defeat2)
			{
				obj_mini_avatar.index_avatar = 6;
			} else {obj_mini_avatar.index_avatar = 7;}*/
			break;
			case ENEMY.Narkomany :
			if (obj_ytopur_battle.phasese != PHASESE.Defeat2)
			{
				obj_mini_avatar.index_avatar = 0;
			} else {obj_mini_avatar.index_avatar = 1;}
				
			break;
			}
	break;
	case PHASES.Defence:
		switch(obj_Battle_Interface.aliens){
			case ALIES.Krus_mini:
				obj_mini_avatar.index_avatar = 7;
			break;
			case ALIES.Ytopurok_mini:
				obj_mini_avatar.index_avatar = 6;
			break;	
			}	
	break;
}
		


if (obj_Battle_Interface.mini_game = true and obj_Battle_Interface.enemies = ENEMY.Narkomany and obj_Battle_Interface.phase_battle = PHASES.Atack){
	spd += grv
	y += spd;
	if (keyboard_check_pressed(vk_space)){
		spd = -10;
	}
	y = clamp(y,578,932)
}
if (obj_Battle_Interface.mini_game = true and obj_Battle_Interface.aliens = ALIES.Krus_mini and obj_Battle_Interface.phase_battle = PHASES.Defence){
hInput = keyboard_check(vk_right) - keyboard_check(vk_left);
x += hInput * 19;
x = clamp(x,486.5,1369.5)
}
#region ходьба по клітинкам СРСР Кавказці
if (obj_Battle_Interface.mini_game = true and obj_Battle_Interface.enemies = ENEMY.Kavkazci and obj_Battle_Interface.phase_battle = PHASES.Atack){

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
if (obj_Battle_Interface.mini_game = true and obj_Battle_Interface.enemies = ENEMY.Sectants and obj_Battle_Interface.phase_battle = PHASES.Atack){

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

#region ходьба по клітинкам Гопніки
if (obj_Battle_Interface.mini_game = true and obj_Battle_Interface.enemies = ENEMY.Hopniki){
hInput = keyboard_check(vk_right) - keyboard_check(vk_left);
vInput = keyboard_check(vk_down) - keyboard_check(vk_up);

x += hInput * 20;
y += vInput * 20;
}
#endregion

#region короткий рух головой Міні гра за утопирка захист
if (obj_Battle_Interface.mini_game = true and obj_Battle_Interface.aliens = ALIES.Ytopurok_mini and obj_Battle_Interface.phase_battle = PHASES.Defence){
switch (keyboard_key)
{
	case vk_left:
        mp_linear_step(908,748,5,false);
    break;

    case vk_right:
        mp_linear_step(940,748,5,false);
    break;

    case vk_up:
        mp_linear_step(925,736,5,false);
    break;

    case vk_down:
        mp_linear_step(925,768,5,false);
    break;
	default:
	 mp_linear_step(925,748,5,false);
}
}
#endregion

alarm[1] -= 1;
alarm[4] -= 1;
switch(obj_Battle_Interface.enemies){
	case ENEMY.Kavkazci :
	damage = 10;
	if (place_meeting(x, y, obj_sssrs))
	{
		scr_damage_mini_avatar();
	}
	break;
	case ENEMY.Sectants :
	damage = 10;
	if (place_meeting(x, y, obj_hrest) or place_meeting(x, y, obj_hrest_horiz))
	{
		scr_damage_mini_avatar();
	}
	break;
	case ENEMY.Hopniki :
	damage = 10;
	if (place_meeting(x, y, obj_nozh) or place_meeting(x, y, obj_nozh_vert))
	{
		scr_damage_mini_avatar();
	}
	break;
	case ENEMY.Narkomany :
	damage = 10;
	//damage = 20;
	if (place_meeting(x, y, obj_shprutz_dow1) or place_meeting(x, y, obj_shprutz_up1))
	{
		scr_damage_mini_avatar();
	}
	break;
}
switch (obj_Battle_Interface.phase_battle){
	case PHASES.Defence:
		switch (obj_Battle_Interface.aliens){
			case ALIES.Krus_mini:
				if (place_meeting(x,y,obj_positive_hit)){
					light_ambient = true;
					damage = 0;
					power_hit += 3;
					damage_enemy = 10;
					scr_damage_mini_avatar();
					} else if (place_meeting(x,y,obj_negative_hit)){
						light_ambient = false;
						damage = 5;
						damage_enemy = 0;
						scr_damage_mini_avatar();
						}
			break;
			case ALIES.Ytopurok_mini:
				if ((keyboard_check_pressed(vk_up) and obj_mini_ytopur.hits_grusha_up = true) or (keyboard_check_pressed(vk_down) and obj_mini_ytopur.hits_grusha_down = true) or (keyboard_check_pressed(vk_right) and obj_mini_ytopur.hits_grusha_right = true) or (keyboard_check_pressed(vk_left) and obj_mini_ytopur.hits_grusha_left = true)){
					light_ambient = true;
					damage = 0;
					damage_enemy = 15;
					//damage_enemy = 35;
					scr_damage_mini_avatar();
					} else if ((keyboard_check_pressed(vk_up) and obj_mini_ytopur.hits_grusha_up = false) or (keyboard_check_pressed(vk_down) and obj_mini_ytopur.hits_grusha_down = false) or (keyboard_check_pressed(vk_right) and obj_mini_ytopur.hits_grusha_right = false) or (keyboard_check_pressed(vk_left) and obj_mini_ytopur.hits_grusha_left = false)){
						light_ambient = false;
						damage = 5;
						damage_enemy = 0;
						scr_damage_mini_avatar();
						}
			break;
		}
	break;
}
 alarm[1] -= 1;
 alarm[4] -= 1;
//scr_damage_mini_avatar();

	if (take_damage == true){
	obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Hit;
	}
	
	if (global.MaxHp <= 50 and death_gg == 0){
		alarm[10] = 1;
	}else if (global.MaxHp <= 0 and death_gg == 1){
		alarm[11] = 1;
	}
if(alarm[1] < 1){
	obj_Battle_Interface.light_bi = 0;
	}
if (damage_timer > 0) {
    damage_timer -= 1;
}
