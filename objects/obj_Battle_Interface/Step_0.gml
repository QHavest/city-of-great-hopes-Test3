//В степ івент треба внести всі умови при яких починається боротьба
if(keyboard_check_pressed(ord("B"))){
	battle_start = !battle_start;
}

if (!battle_start) exit;


alarm[1] -= 1;
alarm[2] -= 2;

if(alarm[2] > 1) exit;

//вимкнення інтерфейсу бойового по виходу алярма 2
if(battle_turn_down = true and alarm[2] < 1){
	battle_start = false;
	battle_turn_down = false;
}

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


//mini-game
if (mini_game == true){
BDialogue = false;	
	for(i = 1; i < 5; i++){
	button[i] = "D";
	butt_invis = 0.5;
	}
}


//button
if(system == 0 and mini_game == false and BDialogue == false){
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
	if(button[1] = "L" and keyboard_check_released(vk_enter) or  keyboard_check_released(ord("E"))){
	system = 1;
	} 
	if(button[2] = "L" and keyboard_check_released(vk_enter) or  keyboard_check_released(ord("E"))){
	//!!!!!!!!!!!!!!!!Тут будуть розписані шанси на втечу!!!!!!!!!!!!!!!!!!!!!111
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
	BDialogue = true;
	button_c = 1;
	varcol[1] = c_orange;
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
		system = 0;
		// почалася бійка за Утопирка
	} 
	if(button[2] = "L" and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
		mini_game = true;
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
		button[button_c] = "L";
		button[4] = "D";
	}
	///////ШАНСИ НА РІШЕННЯ В ДІАЛОЗІ
	//якщо торчки!!!!!!!!!!!!!

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
						battle_turn_down = true;
			}	
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
				//персонажі отримують збільшене пошкодження по собі 15%!
			} else{
				//Далі повертає в попереднє меню й в у персонажів збільщений шанс до втечі. В разі продовження бою, персонажі маютьзбільшений пошкодження по ворогу.
				system = 0;
				screen = 0;
				BDialogue = false;
				butt_invis = 1;
				button_c = 1;
				button[button_c] = "L";
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
			} else {
				system = 0;
				screen = 0;
				BDialogue = false;
				butt_invis = 1;
				button_c = 1;
				button[button_c] = "L";
			}
		}
		
		
	////якщо гопніки!!!!!!!!!!!!!
	//	if(button_c = 1 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
	//		luck = irandom_range(0,100);
	//		alarm[2] = 200;
	//		if(luck > 29){
	//			//(Гопніки відберають 70% грошей у персонажей та йдуть. Бій закінчується). В демці не працює
	//			//global.money = global.money * 0.7;
	//			//battle_turn_down = true;
	//			}
	//		} else {
	//			//починається міні-гра
	//			mini_game = true;
	//			system = 0;
	//		} 
			
	//	if(button_c = 2 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
	//		luck = irandom_range(0,100);
	//		alarm[2] = 200;
	//		answer = 2;
	//		if(luck > 29){
	//			mini_game = true;
	//			//персонажі отримують збільшене пошкодження по собі!
	//		} else{
	//			//Далі повертає в попереднє меню й в у персонажів збільщений шанс до втечі. В разі продовження бою, персонажі мають на одну атаку збільшене пошкодження по ворогу.
	//			system = 0;
	//			screen = 0;
	//			BDialogue = false;
	//			butt_invis = 1;
	//			button_c = 1;
	//			button[button_c] = "L";
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
	//		} else if(luck < 11){
	//			//(Герой до кінця міні-гри буде повільнішим на 15%)
	//			system = 0;
	//			screen = 0;
	//			BDialogue = false;
	//			butt_invis = 1;
	//			button_c = 1;
	//			button[button_c] = "L";
	//		} else {
	//			system = 0;
	//			screen = 0;
	//			BDialogue = false;
	//			butt_invis = 1;
	//			button_c = 1;
	//			button[button_c] = "L";
	//		}
	//	}
		
		
		
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
	//			global.MaxHp = global.MaxHp + (global.MaxHp*0.15)
	//		} else if(luck < 11){
	//			//(Герой до кінця міні-гри буде повільнішим на 15%)
	//			system = 0;
	//			screen = 0;
	//			BDialogue = false;
	//			butt_invis = 1;
	//			button_c = 1;
	//			button[button_c] = "L";
	//		} else {
	//			system = 0;
	//			screen = 0;
	//			BDialogue = false;
	//			butt_invis = 1;
	//			button_c = 1;
	//			button[button_c] = "L";
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
	//		} else if(luck < 11){
	//			//(Герой до кінця міні-гри буде повільнішим на 15%)
	//			system = 0;
	//			screen = 0;
	//			BDialogue = false;
	//			butt_invis = 1;
	//			button_c = 1;
	//			button[button_c] = "L";
	//		} else {
	//			system = 0;
	//			screen = 0;
	//			BDialogue = false;
	//			butt_invis = 1;
	//			button_c = 1;
	//			button[button_c] = "L";
	//		}
	//	}		
} 
	

