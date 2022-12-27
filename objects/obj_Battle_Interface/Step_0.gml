//В степ івент треба внести всі умови при яких починається боротьба
if(keyboard_check_pressed(ord("B"))){
	battle_start = !battle_start;
	enemies = ENEMY.Kavkazci
	room_goto(Room61);

} else if (!battle_start = battle_start)
{room_goto(rm_south);}
//alarm[1] -= 1;
	
if (!battle_start) exit;
if (battle_start = true and mini_game = false){
		instance_deactivate_object(obj_mini_avatar);
		instance_deactivate_object(obj_sssr);
		instance_deactivate_object(obj_background_mini);
		} /*else if (mini_game = true and battle_start = true){
		instance_activate_object(obj_mini_avatar);
		obj_mini_avatar.index_avatar = 0;
		instance_activate_object(obj_sssr);
		}*/
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

//mini-game
if (mini_game = true)
for(i = 1; i < 5; i++){
button[i] = "D";
butt_invis = 0.5;
}


//button
if(system = 0 and mini_game = false){
	if(keyboard_check_pressed(ord("S")) ||  keyboard_check_pressed(vk_down)){
		button_c++;
		if(button_c = 5){ button[4] = "D";}
		if(button_c = 5){ button_c = 1}	
		button[button_c] = "L";
		button[button_c-1] = "D";
	}
	//To left
	if(keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)){
		button_c--;
		if(button_c = 0){ button[1] = "D"}	
		if(button_c = 0){ button_c = 4}	
		button[button_c] = "L";	
		button[button_c+1] = "D";
	}
	if(button[1] = "L" and keyboard_check_released(vk_enter) or  keyboard_check_released(ord("E"))){
	system = 1;
	} 
	if(button[2] = "L" and keyboard_check_released(vk_enter) or  keyboard_check_released(ord("E"))){
	//!!!!!!!!!!!!!!!!Тут будуть розписані шанси на втечу!!!!!!!!!!!!!!!!!!!!!111
	//draw_sprite(spr_successENG, 0,  gui_W/4.918, gui_H/1.928);
	if(global.LANGUAGE = "eng"){
	obj_background_mini.index_minigame_back = 2;
	} else if(global.LANGUAGE = "ua"){
	obj_background_mini.index_minigame_back = 3;
	}
	} 
	if(button[3] = "L" and keyboard_check_released(vk_enter) or  keyboard_check_released(ord("E"))){
	button_c = 1;
	button[1] = "L";
	button[3] = "D";
	system = 2;
	} 
	if(button[4] = "L" and keyboard_check_released(vk_enter) or  keyboard_check_released(ord("E"))){
	butt_invis = 0.5;
	screen = 1;
	mini_game = true;
	} 
}

if(system = 1) {
	if(keyboard_check_pressed(ord("S")) ||  keyboard_check_pressed(vk_down)){
		button_c++;
		button[button_c-1] = "D";
		if(button_c = 3){ button_c = 1}	
		button[button_c] = "L";
	}
	//To left
	if(keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)){
		button_c--;
		if(button_c = 0){ button[1] = "D"}
		if(button_c = 0){ button_c = 2}		
		button[button_c] = "L";	
		button[button_c+1] = "D";
	}
	if(button[1] = "L" and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
		mini_game = true;
		if (mini_game = true and battle_start = true){
		instance_activate_object(obj_background_mini);
		instance_activate_object(obj_mini_avatar);
		obj_mini_avatar.index_avatar = 1;
		instance_activate_object(obj_sssr);
		}
		system = 0;
		// почалася бійка за Утопирка
	} 
	if(button[2] = "L" and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
		mini_game = true;
		/*if (mini_game = true){
		instance_activate_object(obj_mini_avatar);
		obj_mini_avatar.index_avatar = 2;
		instance_activate_object(obj_sssr);
		}*/
		if (mini_game = true and battle_start = true){
		instance_activate_object(obj_background_mini);
		instance_activate_object(obj_mini_avatar);
		obj_mini_avatar.index_avatar = 2;
		instance_activate_object(obj_sssr);
		}
		system = 0;
		// почалася бійка за Криса
	} 
	if (keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("Q"))){
		system = 0;
	}
}	

if(system = 2) {
	if(keyboard_check_pressed(ord("S")) ||  keyboard_check_pressed(vk_down)){
		button_c++;
		button[button_c-1] = "D";
		if(button_c = 3){ button_c = 1}	
		button[button_c] = "L";
	}
	//To left
	if(keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)){
		button_c--;
		if(button_c = 0){ button[1] = "D"}
		if(button_c = 0){ button_c = 2}		
		button[button_c] = "L";	
		button[button_c+1] = "D";
	}
	if(button[1] = "L" and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
		button[1] = "L";
		system = 1;
	} 
	if(button[2] = "L" and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
		//!!!!!!!!!!! Віддаєш, скільки запрошує карбованців
	} 
	if (keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("Q"))){
		system = 0;
	}
}	



