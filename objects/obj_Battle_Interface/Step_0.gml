//В степ івент треба внести всі умови при яких починається боротьба

if(keyboard_check_pressed(ord("B"))){
	battle_start = !battle_start;
	enemies = ENEMY.Kavkazci
	scr_music_fon_change(Room61); //Музика фонова в бойовій системі
	room_goto(Room61);
}
if(keyboard_check_pressed(ord("C"))){
	battle_start = true;;
	enemies = ENEMY.Narkomany
	scr_music_fon_change(Room61); //Музика фонова в бойовій системі
	audio_play_sound(dor_sound,5,0,global.player_gain);
	room_goto(Room61);
}

if(keyboard_check_pressed(ord("P"))){
	battle_start = !battle_start;
	enemies = ENEMY.Sectants
	scr_music_fon_change(Room61); //Музика фонова в бойовій системі
	room_goto(Room61);
}
if(keyboard_check_pressed(ord("O"))){
	battle_start = !battle_start;
	enemies = ENEMY.Hopniki
	scr_music_fon_change(Room61); //Музика фонова в бойовій системі
	room_goto(Room61);
}

if(mini_game = true){
	dialogue_was = false;
}
if (!battle_start) exit;
if (battle_start = true and mini_game = false){
		}else if (battle_start = false and mini_game = false){
			instance_activate_object(obj_dim_player1);
			instance_activate_object(obj_dim_player2);
		}
if (battle_start = true and keyboard_check_pressed(ord("F")))
{		room_goto(target_rm);
		battle_start = false;
		if obj_dim_player1.status = STATUS.ACTIVE
		{
			target_x = obj_dim_player1.x;
			target_y = obj_dim_player1.y;
		}
		else
		{
			target_x = obj_dim_player2.x;
			target_y = obj_dim_player2.y;
		}
	}
	
	

alarm[1] -= 1;
alarm[2] -= 2;

if(alarm[2] > 1) exit;

//вимкнення інтерфейсу бойового по виходу алярма 2
if(battle_turn_down = true and alarm[2] < 1){
	battle_start = false;
	battle_turn_down = false;
}


if(alarm[1] < 1){
	light_bi = 0;
	}
if (mini_game = true and games = false){
		//instance_deactivate_object(obj_dim_player1);
		//instance_deactivate_object(obj_dim_player2);
		instance_deactivate_object(obj_mini_avatar);
		instance_deactivate_object(obj_sssr);
		//instance_deactivate_object(obj_background_mini);
		//instance_deactivate_object(obj_shprutz_parent);
		instance_deactivate_object(obj_sects);
		instance_deactivate_object(wall);
		instance_deactivate_object(obj_wall_sect);
		//instance_deactivate_object(obj_mini_ytopur);
		//instance_deactivate_object(obj_mini_krus);
		instance_deactivate_object(obj_hopnik);
}
//mini-game
if (mini_game == true){
	BDialogue = false;	
	
	for(i = 1; i < 5; i++){
	button[i] = "D";
	butt_invis = 0.5;
	dialogue_was = false;
	}
	
} /*else if(mini_game == false and instance_exists(obj_wait)){
	
	button[button_c] = "L";
}
*/
if (mini_game = true and games = false and battle_start = true and /*enemies = ENEMY.Narkomany and*/ keyboard_check_released(ord("W"))/* or keyboard_check_released(vk_enter)*/){
			games = true;
			instance_create_depth(490,570,-600,obj_screen_gamestart)
		}
if(alarm[2] > 150) exit;
/*if (battle_start = true){
amount_hp_enemy = amount_hp_enemy - (damage_enemy/100*279);
}*/
//button
if(system == 0 and mini_game == false and BDialogue == false){
	//instance_activate_object(obj_background_mini);
	//obj_background_mini.index_minigame_back = 2;
	butt_invis = 1;

	if(keyboard_check_pressed(ord("S")) ||  keyboard_check_pressed(vk_down)){
		button_c++;
		if(button_c == 5){ button[4] = "D";}
		if(button_c == 5){ button_c = 1}	
		button[button_c] = "L";
		button[button_c-1] = "D";
	}
	if(keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)){
		button_c--;
		if(button_c == 0){ button[1] = "D"}	
		if(button_c == 0){ button_c = 4}	
		button[button_c] = "L";	
		button[button_c+1] = "D";
	}
	if(button[1] = "L" and keyboard_check_pressed(vk_enter) or  keyboard_check_pressed(ord("E"))){
	system = 1;
	} 
	if(button[2] = "L" and keyboard_check_pressed(vk_enter) or  keyboard_check_pressed(ord("E"))){
	//!!!!!!!!!!!!!!!!Тут будуть розписані шанси на втечу!!!!!!!!!!!!!!!!!!!!!111
	//draw_sprite(spr_successENG, 0,  gui_W/4.918, gui_H/1.928);
	if(global.LANGUAGE = "eng"){
	obj_background_mini.index_minigame_back = 2;
	} else if(global.LANGUAGE = "ua"){
	obj_background_mini.index_minigame_back = 3;
	}
	} 
	if(button[3] = "L" and keyboard_check_pressed(vk_enter) or  keyboard_check_pressed(ord("E"))){
	button_c = 1;
	button[1] = "L";
	button[3] = "D";
	system = 2;
	} 
	if(button[4] = "L" and keyboard_check_pressed(vk_enter) or  keyboard_check_pressed(ord("E"))){
		if(dialogue_was = false){
			butt_invis = 0.5;
			screen = 1;
			BDialogue = true;
			button_c = 1;
			varcol[1] = c_orange;
			dialogue_was = true;
		}
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
	if(button[1] = "L" and (keyboard_check_pressed(vk_alt) or keyboard_check_pressed(ord("E")))){
		mini_game = true;
		games = true;
		instance_destroy(obj_wait);
		switch(phase_battle){
			case PHASES.Atack:
				switch(enemies){
					case ENEMY.Narkomany :
					aliens = ALIES.Noone;
					instance_create_depth(490,570,-600,obj_screen_gamestart)	
					break;
					case ENEMY.Kavkazci :
					aliens = ALIES.Noone;
					instance_create_depth(490,570,-600,obj_screen_gamestart)	
					break;
					case ENEMY.Sectants :
					aliens = ALIES.Noone;
					instance_create_depth(490,570,-600,obj_screen_gamestart)	
					break;
					case ENEMY.Hopniki :
					aliens = ALIES.Noone;
					instance_create_depth(490,570,-600,obj_screen_gamestart)	
					break;
					}
			break;
			case PHASES.Defence:
				aliens = ALIES.Ytopurok_mini;
				instance_create_depth(490,570,-600,obj_screen_gamestart)
			break;
			}
		system = 0;
		// почалася бійка за Утопирка
	} 
	if(button[2] = "L" and (keyboard_check_pressed(vk_alt) or keyboard_check_pressed(ord("E")))){
		mini_game = true;
		games = true;
		instance_destroy(obj_wait);
		switch(phase_battle){
			case PHASES.Atack:
				switch(enemies){
					case ENEMY.Narkomany :
					aliens = ALIES.Noone;
					instance_create_depth(490,570,-600,obj_screen_gamestart)	
					break;
					case ENEMY.Kavkazci :
					aliens = ALIES.Noone;
					instance_create_depth(490,570,-600,obj_screen_gamestart)	
					break;
					case ENEMY.Sectants :
					aliens = ALIES.Noone;
					instance_create_depth(490,570,-600,obj_screen_gamestart)	
					break;
					case ENEMY.Hopniki :
					aliens = ALIES.Noone;
					instance_create_depth(490,570,-600,obj_screen_gamestart)	
					break;
					}
			break;
			case PHASES.Defence:
				aliens = ALIES.Krus_mini;
				instance_create_depth(490,570,-600,obj_screen_gamestart)
			break;
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

///////ДІАЛОГИ, ТУТ ЖЕ ПРОПИСАНІ І ШАНСИ

if(BDialogue = true){
	instance_destroy(obj_wait);
	if(keyboard_check_pressed(ord("S")) ||  keyboard_check_pressed(vk_down) and alarm[2] < 1){
		button_c++;
		varcol[button_c-1] = c_gray;
		if(button_c = 4){ button_c = 1 }	
		varcol[button_c] = c_orange;
	}
	//To left
	if(keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) and alarm[2] < 1){
		button_c--;
		if(button_c = 0){ varcol[1] = c_gray }
		if(button_c = 0){ button_c = 3 }
		varcol[button_c+1] = c_gray;
		varcol[button_c] = c_orange;
	}
	if (keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("Q")) and alarm[2] < 1){
		system = 0;
		screen = 0;
		BDialogue = false;
		butt_invis = 1;
		button_c = 1;
		button[1] = "L";
		button[4] = "D";
		button[3] = "D";
		button[2] = "D";
	}
	///////ШАНСИ НА РІШЕННЯ В ДІАЛОЗІ
	if(enemies = ENEMY.Narkomany){
		if(button_c = 1 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
			luck = irandom_range(0,100);
			alarm[2] = 200;
			//(Торчки відберають всю їжу у персонажей та йдуть. Бій закінчується).
			if(luck > 29){
			repeat(7){
				for(var i = 0; i < 11; i++){
					if(!global.ds_inventory[# 0, i] = 0){
					global.ds_inventory[# 0, i] = 0;
					break;
					}
				}
			}	
				battle_turn_down = true;
			} else if (luck > 9 and luck < 30){
				//починається міні-гра
				mini_game = true;
				system = 0;
			} else{
				//бійка закінчується
				battle_turn_down = true;
				}
			}
		if(button_c = 2 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
			answer = 2;
			luck = irandom_range(0,100);
			alarm[2] = 200;
			if(luck > 29){
				mini_game = true;
				system = 0;
				//персонажі отримують збільшене пошкодження по собі 15%!
			} else{
				//Далі повертає в попереднє меню й в у персонажів збільщений шанс до втечі. В разі продовження бою, персонажі маютьзбільшений пошкодження по ворогу.
				system = 0;
				screen = 0;
				BDialogue = false;
				butt_invis = 1;
				button_c = 1;
				button[button_c] = "L";
				button[4] = "D";
				button[3] = "D";
				button[2] = "D";
			}	
		}
		if(button_c = 3 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
			dialogue_was = true;
			luck = irandom_range(0,100);
			if(luck > 50){
				system = 0;
				screen = 0;
				butt_invis = 1;
				button_c = 1;
				button[button_c] = "L";
				button[4] = "D";
				button[3] = "D";
				button[2] = "D";
				global.MaxHp = global.MaxHp + (global.MaxHp*0.15)
				BDialogue = false;
			} else if(luck < 11){
				//(Герой до кінця міні-гри буде повільнішим на 15%)
				system = 0;
				screen = 0;
				butt_invis = 1;
				button_c = 1;
				button[button_c] = "L";
				button[4] = "D";
				button[3] = "D";
				button[2] = "D";
				BDialogue = false;
			} else {
				system = 0;
				screen = 0;
				butt_invis = 1;
				button_c = 1;
				button[button_c] = "L";
				button[4] = "D";
				button[3] = "D";
				button[2] = "D";
				BDialogue = false;
			}
		}
	}
		
		
	if(enemies = ENEMY.Hopniki){
		if(button_c = 1 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
			luck = irandom_range(0,100);
			alarm[2] = 200;
			if(luck > 29){
				//(Гопніки відберають 70% грошей у персонажей та йдуть. Бій закінчується). В демці не працює
				//global.money = global.money * 0.7;
				//battle_turn_down = true;
				mini_game = true;
				system = 0;
				}
			} else {
				//починається міні-гра
				mini_game = true;
				system = 0;
			} 
			
		if(button_c = 2 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
			luck = irandom_range(0,100);
			alarm[2] = 200;
			answer = 2;
			if(luck > 29){
				mini_game = true;
				//персонажі отримують збільшене пошкодження по собі!
			} else{
				//Далі повертає в попереднє меню й в у персонажів збільщений шанс до втечі. В разі продовження бою, персонажі мають на одну атаку збільшене пошкодження по ворогу.
				system = 0;
				screen = 0;
				BDialogue = false;
				butt_invis = 1;
				button_c = 1;
				button[button_c] = "L";
				button[4] = "D";
				button[3] = "D";
				button[2] = "D";
			}	
		}
		if(button_c = 3 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
			luck = irandom_range(0,100);
			if(luck > 50){
				system = 0;
				screen = 0;
				BDialogue = false;
				butt_invis = 1;
				button_c = 1;
				button[button_c] = "L";
				global.MaxHp = global.MaxHp + (global.MaxHp*0.15)
			} else if(luck < 11){
				//(Герой до кінця міні-гри буде повільнішим на 15%)
				system = 0;
				screen = 0;
				BDialogue = false;
				butt_invis = 1;
				button_c = 1;
				button[button_c] = "L";
				button[4] = "D";
				button[3] = "D";
				button[2] = "D";
			} else {
				system = 0;
				screen = 0;
				BDialogue = false;
				butt_invis = 1;
				button_c = 1;
				button[button_c] = "L";
			}
		}
	}
		
		
		
	////якщо сектанти!!!!!!!!!!!!!
	//	if(button_c = 1 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
	//		alarm[2] = 200;
	//		luck = irandom_range(30,100);
	//		if(luck > 29){
	//			mini_game = true;
	//		}	
	//		else if (luck > 9 and luck < 30){
	//			//завжди потрібно давати людям шанс
	//			//бійка закінчується
	//			battle_turn_down = true;
	//			system = 0;
	//		} else{
	//			//бійка закінчується
	//			battle_turn_down = true;
	//			system = 0;
	//		}
	//	}
	//	if(button_c = 2 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
	//		answer = 2;
	//		alarm[2] = 200;
	//		luck = irandom_range(0,100);
	//		if(luck > 29){
	//			//Далі повертає в попереднє меню й в у персонажів збільщений шанс до втечі. В разі продовження бою, персонажі мають на одну атаку збільшене пошкодження по ворогу.)
	//			system = 0;
	//			screen = 0;
	//			BDialogue = false;
	//			butt_invis = 1;
	//			button_c = 1;
	//			button[button_c] = "L";
				//button[4] = "D";
				//button[3] = "D";
				//button[2] = "D";
	//		} else{
	//			//Далі повертає в попереднє меню й бій продовжується. Персонажі отримують на одну атаку збільшене пошкодження по по собі.
	//			mini_game = true;
	//			system = 0;
	//		}	
	//	}
	//	if(button_c = 3 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
	//		luck = irandom_range(0,100);
	//		if(luck > 50){
	//			system = 0;
	//			screen = 0;
	//			BDialogue = false;
	//			butt_invis = 1;
	//			button_c = 1;
	//			button[button_c] = "L";
				//button[4] = "D";
				//button[3] = "D";
				//button[2] = "D";
	//			global.MaxHp = global.MaxHp + (global.MaxHp*0.15)
	//		} else if(luck < 11){
	//			//(Герой до кінця міні-гри буде повільнішим на 15%)
	//			system = 0;
	//			screen = 0;
	//			BDialogue = false;
	//			butt_invis = 1;
	//			button_c = 1;
	//			button[button_c] = "L";
				//button[4] = "D";
				//button[3] = "D";
				//button[2] = "D";
	//		} else {
	//			system = 0;
	//			screen = 0;
	//			BDialogue = false;
	//			butt_invis = 1;
	//			button_c = 1;
	//			button[button_c] = "L";
				//button[4] = "D";
				//button[3] = "D";
				//button[2] = "D";
	//		}
	//	}
		
		
	////якщо кавказці!!!!!!!!!!!!!!1
	//	if(button_c = 1 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
	//		alarm[2] = 200;
	//		luck = irandom_range(30,100);
	//		if(luck > 89){
	//			mini_game = true;
	//			system = 0;
	//		} else {
	//			//бійка закінчується
	//			battle_turn_down = true;
	//		}
	//	}
	//	if(button_c = 2 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
	//		answer = 2;
	//		alarm[2] = 200;
	//		luck = irandom_range(0,100);
	//		if(luck > 50){
	//			//Далі повертає в попереднє меню й в у персонажів збільшений шанс до втечі. В разі продовження бою, персонажі мають на одну атаку збільшене пошкодження по ворогу.)
	//			system = 0;
	//			screen = 0;
	//			BDialogue = false;
	//			butt_invis = 1;
	//			button_c = 1;
	//			button[button_c] = "L";
				//button[4] = "D";
				//button[3] = "D";
				//button[2] = "D";
	//		} else{
	//			//Далі повертає в попереднє меню й бій продовжується. Персонажі отримують на одну атаку збільшене пошкодження по собі.
	//			mini_game = true;
	//			system = 0;
	//		}	
	//	}
	//	if(button_c = 3 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
	//		luck = irandom_range(0,100);
	//		if(luck > 50){
	//			system = 0;
	//			screen = 0;
	//			BDialogue = false;
	//			butt_invis = 1;
	//			button_c = 1;
	//			button[button_c] = "L";
	//			global.MaxHp = global.MaxHp + (global.MaxHp*0.15)
				//button[4] = "D";
				//button[3] = "D";
				//button[2] = "D";
	//		} else if(luck < 11){
	//			//(Герой до кінця міні-гри буде повільнішим на 15%)
	//			system = 0;
	//			screen = 0;
	//			BDialogue = false;
	//			butt_invis = 1;
	//			button_c = 1;
	//			button[button_c] = "L";
				//button[4] = "D";
				//button[3] = "D";
				//button[2] = "D";
	//		} else {
	//			system = 0;
	//			screen = 0;
	//			BDialogue = false;
	//			butt_invis = 1;
	//			button_c = 1;
	//			button[button_c] = "L";
				//button[4] = "D";
				//button[3] = "D";
				//button[2] = "D";
	//		}
	//	}		
} 
	

