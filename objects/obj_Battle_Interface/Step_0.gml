//В степ івент треба внести всі умови при яких починається боротьба
global.MaxHp = hpKrys+hpYtopyrok
/*if(keyboard_check_pressed(ord("B"))){
	battle_start = true;
	enemies = ENEMY.Kavkazci
	scr_music_fon_change(Room61); //Музика фонова в бойовій системі
	room_goto(Room61);
}
if(keyboard_check_pressed(ord("C"))){
	battle_start = true;
	enemies = ENEMY.Narkomany
	//instance_create_depth(900,780,-300,obj_ytopur_battle).sprite_index = spr_ytopyr_kavkaz_idle;
	scr_music_fon_change(Room61); //Музика фонова в бойовій системі
	audio_play_sound(dor_sound,5,0,global.player_gain);
	room_goto(Room61);
}

if(keyboard_check_pressed(ord("P"))){
	battle_start = true;
	enemies = ENEMY.Sectants
	scr_music_fon_change(Room61); //Музика фонова в бойовій системі
	room_goto(Room61);
}
if(keyboard_check_pressed(ord("O"))){
	battle_start = true;

	enemies = ENEMY.Hopniki
	scr_music_fon_change(Room61); //Музика фонова в бойовій системі
	room_goto(Room61);
}*/



if(mini_game = true){
	dialogue_was = false;
}
if (!battle_start) exit;
if (battle_start = true and mini_game = false){
		}else if (battle_start = false and mini_game = false){
			instance_activate_object(obj_dim_player1);
			instance_activate_object(obj_dim_player2);
		}
/*if (battle_start = true and keyboard_check_pressed(ord("F")))
{		room_goto(target_rm);
		battle_start = false;
		instance_deactivate_object(obj_mini_avatar);
		//instance_activate_object(daycycle);
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
	}*/
	
//відповідає за потрібну кімнату в яку маєи повертатися
switch(enemies){
case ENEMY.Kavkazci:
target_rm = rm_center_left;
break;
case ENEMY.Narkomany:
target_rm = rm_street_second_side;
break;

}
alarm[1] -= 1;
alarm[2] -= 2;

if(alarm[2] > 1) exit;

//вимкнення інтерфейсу бойового по виходу алярма 2
if(battle_turn_down = true and alarm[2] < 1){
	battle_start = false;
	battle_turn_down = false;
}

if (mini_game = true and games = false){
		instance_deactivate_object(obj_mini_avatar);
		instance_deactivate_object(obj_wall_sect);
}
//mini-game
if (mini_game == true or game_over_mini = true){
	BDialogue = false;	
	
	for(i = 1; i < 5; i++){
	button[i] = "D";
	butt_invis = 0.5;
	dialogue_was = false;
	}
	
}
#region ЗАПУСК МІНІ ГРИ ПРИ ПЕРШОМУ ЗАПУСКУ
if (mini_game and games = false and battle_start and (keyboard_check_released(vk_enter) or keyboard_check_released(vk_up) or keyboard_check_released(vk_down))){
			hp_enemies = true;//включення хп полосок ворогів
			games = true;
			obj_ytopur_battle.image_index = 0;
			obj_ytopur_battle.image_speed = 0;
			obj_ytopur_battle.phasese = PHASESE.Battle;
			obj_krus_battle.image_index = 0;
			obj_krus_battle.image_speed = 0;
			obj_krus_battle.phasese_krus = PHASESE_KRUS.Battle;
			obj_enemy1_battle.image_index = 0;
			obj_enemy1_battle.image_speed = 0;
			obj_enemy1_battle.phasese_enemy1 = PHASESE_ENEMY1.Battle;
			obj_enemy2_battle.image_index = 0;
			obj_enemy2_battle.image_speed = 0;
			obj_enemy2_battle.phasese_enemy2 = PHASESE_ENEMY2.Battle;
			obj_enemy3_battle.image_index = 0;
			obj_enemy3_battle.image_speed = 0;
			obj_enemy3_battle.phasese_enemy3 = PHASESE_ENEMY3.Battle;
			aliens = ALIES.Noone;
			switch(global.LANGUAGE)
				{
					case "eng":
					instance_create_depth(466,570,-600,obj_screen_gamestart)
					break;
					case "ua":
					instance_create_depth(466,570,-600,obj_screen_gamestart).sprite_index = spr_gamestartUA;
					break;
				}
		}
#endregion
if(alarm[2] > 150) exit;

if(system == 0 and mini_game == false and BDialogue == false and game_over_mini == false){
	butt_invis = 1;
	button[button_c] = "L";
		if( keyboard_check_pressed(vk_down)){
			button_c++;
			if(button_c == 4){ button[3] = "D";}////<<<<тут потрібно button_c == 5 і button[4], щоб вибрати варіант діалоги
			if(button_c == 4){ button_c = 1}	////<<<<тут потрібно встановити button_c == 5 , щоб вибрати варіант діалоги
			button[button_c] = "L";
			button[button_c-1] = "D";
		}
		if(keyboard_check_pressed(vk_up)){
			button_c--;
			if(button_c == 0){ button[1] = "D"}	
			if(button_c == 0){ button_c = 3}////<<<<тут потрібно встановити (4), щоб вибрати варіант діалоги
			button[button_c] = "L";	
			button[button_c+1] = "D";
		}
	if(button[1] = "L" and keyboard_check_released(vk_enter)){
		
		switch(phase_battle)
		{
			case PHASES.Atack:
				alarm[5] = 3;//start_fight
			break;
			case PHASES.Defence:
				alarm[3] = 3;//system = 1;
			break;
		}
	} 
	if(button[2] = "L" and keyboard_check_released(vk_enter)){
	//!!!!!!!!!!!!!!!!Тут будуть розписані шанси на втечу!!!!!!!!!!!!!!!!!!!!!111
	// Визначення значень шансів	
   // var chance = true
		var random_number = random(100);
		var chance_option1 = random_number < 15;
		var chance_option2 = random_number < 100;
		//var chance_option3 = 20;
		switch (random_number < 100) {
		    case (chance_option1)://ВТЕЧА ВДАЛАСЯ

				instance_destroy(obj_wait);
				switch(global.LANGUAGE)
				{
					case "eng":
					instance_create_depth(466,570,-600,obj_success);
					break;
					case "ua":
					instance_create_depth(466,570,-600,obj_success).sprite_index = spr_successUA;
					break;
				}
				
				instance_destroy(obj_shprutz_dow1);
				instance_destroy(obj_shprutz_up1);
				instance_deactivate_object(obj_mini_avatar);
				instance_deactivate_object(wall);
				instance_destroy(obj_shprutz_parent);
				mini_game = false;
		        break;
		    case (chance_option2)://ЙДЕМО БИТИСЯ
				mini_game = true;
				games = true;
				phase_battle = PHASES.Atack;
				//aliens = ALIES.Ytopurok_mini;
				instance_destroy(obj_wait);
				if (global.MaxHp >= 51 and obj_ytopur_battle.phasese != PHASESE.Defeat2){
					obj_ytopur_battle.image_index = 0;
					obj_ytopur_battle.phasese = PHASESE.Battle;
					}
				aliens = ALIES.Noone;
				obj_krus_battle.image_index = 0;
				obj_krus_battle.phasese_krus = PHASESE_KRUS.Battle;
					scr_battle_phases_enemy();//відповідає за перехід в бойову стійку ворогів
				switch(global.LANGUAGE)
				{
					case "eng":
					instance_create_depth(466,570,-600,obj_failed)
					break;
					case "ua":
					instance_create_depth(466,570,-600,obj_failed).sprite_index = spr_failedUA;
					break;
				}
		        break;
		}
	} 
	if(button[3] = "L" and keyboard_check_released(vk_enter)){
	button_c = 1;
	button[1] = "L";
	button[3] = "D";
	alarm[4] = 1;//system = 2;
	} 
	if(button[4] = "L" and keyboard_check_released(vk_enter)){
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

switch(system)
{
	case 1:
	if (obj_ytopur_battle.phasese != PHASESE.Defeat2){
		if( keyboard_check_pressed(vk_down)){
			button_c++;
			button[button_c-1] = "D";
			if(button_c = 3){ button_c = 1}	//button_c = 1
			button[button_c] = "L";
		}
		if(keyboard_check_pressed(vk_up)){
			button_c--;
			if(button_c = 0){ button[1] = "D"}
			if(button_c = 0){ button_c = 2}		
			button[button_c] = "L";	
			button[button_c+1] = "D";
		}
	} else 
		{
				button[2] = "L";
		}
		//кнопка відповідає за запуск міні гри за утопирка//
		if(button[1] = "L" and keyboard_check_released(vk_enter)){
			mini_game = true;
			games = true;
			instance_destroy(obj_wait);
		
			if (global.MaxHp >= 51 and obj_ytopur_battle.phasese != PHASESE.Defeat2){
			obj_ytopur_battle.image_index = 0;
			obj_ytopur_battle.phasese = PHASESE.Battle;
			}
			scr_battle_phases_enemy();//відповідає за перехід в бойову стійку ворогів
			obj_krus_battle.phasese_krus = PHASESE_KRUS.Battle;
			switch(phase_battle)
			{
				case PHASES.Atack:
						aliens = ALIES.Noone;
						switch(global.LANGUAGE)
						{
							case "eng":
							instance_create_depth(466,570,-600,obj_screen_gamestart)
							break;
							case "ua":
							instance_create_depth(466,570,-600,obj_screen_gamestart).sprite_index = spr_gamestartUA;
							break;
						}	
						
				break;
				case PHASES.Defence:
					aliens = ALIES.Ytopurok_mini;
					switch(global.LANGUAGE)
				{
					case "eng":
					instance_create_depth(466,570,-600,obj_screen_gamestart)
					break;
					case "ua":
					instance_create_depth(466,570,-600,obj_screen_gamestart).sprite_index = spr_gamestartUA;
					break;
				}
				break;
			}
			system = 0;
			// почалася бійка за Утопирка
		} 
		if(button[2] = "L" and keyboard_check_released(vk_enter)){
			mini_game = true;
			games = true;
			instance_destroy(obj_wait);
			if (global.MaxHp >= 51 and obj_ytopur_battle.phasese != PHASESE.Defeat2){
			obj_ytopur_battle.image_index = 0;
			obj_ytopur_battle.phasese = PHASESE.Battle;
			}
			
			scr_battle_phases_enemy()
						
			obj_krus_battle.phasese_krus = PHASESE_KRUS.Battle;
			
			switch(phase_battle){
				case PHASES.Atack:
						aliens = ALIES.Noone;
						switch(global.LANGUAGE)
						{
							case "eng":
							instance_create_depth(466,570,-600,obj_screen_gamestart)
							break;
							case "ua":
							instance_create_depth(466,570,-600,obj_screen_gamestart).sprite_index = spr_gamestartUA;
							break;
						}
				break;
				case PHASES.Defence:
					aliens = ALIES.Krus_mini;
					switch(global.LANGUAGE)
						{
							case "eng":
							instance_create_depth(466,570,-600,obj_screen_gamestart)
							break;
							case "ua":
							instance_create_depth(466,570,-600,obj_screen_gamestart).sprite_index = spr_gamestartUA;
							break;
						}	
				break;
				}
		
		
			system = 0;
			// почалася бійка за Криса
		} 
		if (keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("Q"))){
			system = 0;
			button[button_c] = "L";	
		}
	break;
	case 2:
			if( keyboard_check_pressed(vk_down)){
				button_c++;
				button[button_c-1] = "D";
				if(button_c = 3){ button_c = 1}	
				button[button_c] = "L";
			}
			if(keyboard_check_pressed(vk_up)){
				button_c--;
				if(button_c = 0){ button[1] = "D"}
				if(button_c = 0){ button_c = 2}		
				button[button_c] = "L";	
				button[button_c+1] = "D";
			}
		if(button[1] = "L" and keyboard_check_released(vk_enter)){
			button[1] = "L";
			switch(phase_battle)
			{
			case PHASES.Atack:
				alarm[5] = 3;//start_fight
			break;
			case PHASES.Defence:
				alarm[3] = 3;//system = 1;
			break;
			}
		} 
		if(button[2] = "L" and keyboard_check_released(vk_enter)){
			//!!!!!!!!!!! Віддаєш, скільки запрошує карбованців
			if (pay < global.money){
			instance_destroy(obj_wait);
			mini_game = false;
			system = 0;
			switch(global.LANGUAGE)
				{
					case "eng":
					instance_create_depth(466,570,-600,obj_goodbyemoney);
					break;
					case "ua":
					instance_create_depth(466,570,-600,obj_goodbyemoney).sprite_index = spr_goodbyemoneyUA;
					break;
				}
			} else 
				{
					mini_game = true;
					games = true;
					phase_battle = PHASES.Atack;
					//aliens = ALIES.Ytopurok_mini;
					instance_destroy(obj_wait);
					if (global.MaxHp >= 51 and obj_ytopur_battle.phasese != PHASESE.Defeat2){
						obj_ytopur_battle.image_index = 0;
						obj_ytopur_battle.phasese = PHASESE.Battle;
						}
					aliens = ALIES.Noone;
					obj_krus_battle.image_index = 0;
					obj_krus_battle.phasese_krus = PHASESE_KRUS.Battle;
						scr_battle_phases_enemy();//відповідає за перехід в бойову стійку ворогів
					switch(global.LANGUAGE)
					{
						case "eng":
						instance_create_depth(466,570,-600,obj_failed)
						break;
						case "ua":
						instance_create_depth(466,570,-600,obj_failed).sprite_index = spr_failedUA;
						break;
					}	
			        system = 0;
				}
		} 
		if (keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("Q"))){
			system = 0;
		}
	break;
}
#region ///////ДІАЛОГИ, ТУТ ЖЕ ПРОПИСАНІ І ШАНСИ
/*
if(BDialogue = true){
	instance_destroy(obj_wait);
	if(keyboard_check_pressed(vk_down) and alarm[2] < 1){
		button_c++;
		varcol[button_c-1] = c_gray;
		if(button_c = 4){ button_c = 1 }	
		varcol[button_c] = c_orange;
	}
	//To left
	if(keyboard_check_pressed(vk_up) and alarm[2] < 1){
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
			if(luck >= 31){
			repeat(7){
				for(var i = 0; i < 11; i++){
					if(!global.ds_inventory[# 0, i] = 0){
					global.ds_inventory[# 0, i] = 0;
					break;
					}
				}
			}	
			battle_start = false;
			global.money -= 30;
		room_goto(obj_Battle_Interface.target_rm);
		//battle_start = false;
		battle_turn_down = true;
		battle_start = false;
		game_over_mini = false;
		mini_game = true
		games = false
		hpKrys = 50;
		hpYtopyrok = 50;
		amount_hp_enemy = 96;
		instance_activate_object(obj_dim_player1);
		instance_activate_object(obj_dim_player2);
		if obj_dim_player1.status = STATUS.ACTIVE
		{
			obj_dim_player1.x = 1795
			obj_dim_player1.y = 260
			obj_dim_player2.x = 1795
			obj_dim_player2.y = 260
		}
		else
		{
			obj_dim_player1.x = 1795
			obj_dim_player1.y = 260
			obj_dim_player2.x = 1795
			obj_dim_player2.y = 260
		}
				
			} else if (luck > 9 and luck <= 30){
				//починається міні-гра
				mini_game = true;
				system = 0;
			} else{
				//бійка закінчується
					battle_turn_down = true;
					battle_start = false;
					game_over_mini = false;
					mini_game = true
					games = false
					hpKrys = 50;
					hpYtopyrok = 50;
					amount_hp_enemy = 96;
					instance_activate_object(obj_dim_player1);
					instance_activate_object(obj_dim_player2);
					if obj_dim_player1.status = STATUS.ACTIVE
					{
						obj_dim_player1.x = 1795
						obj_dim_player1.y = 260
						obj_dim_player2.x = 1795
						obj_dim_player2.y = 260
					}
					else
					{
						obj_dim_player1.x = 1795
						obj_dim_player1.y = 260
						obj_dim_player2.x = 1795
						obj_dim_player2.y = 260
					}
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
		
		
	if(enemies = ENEMY.Sectants){	
	//якщо сектанти!!!!!!!!!!!!!
		if(button_c = 1 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
			alarm[2] = 200;
			luck = irandom_range(30,100);
			if(luck > 29){
				mini_game = true;
			}	
			else if (luck > 9 and luck < 30){
				//завжди потрібно давати людям шанс
				//бійка закінчується
				battle_turn_down = true;
				system = 0;
			} else{
				//бійка закінчується
				battle_turn_down = true;
				system = 0;
			}
		}
		if(button_c = 2 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
			answer = 2;
			alarm[2] = 200;
			luck = irandom_range(0,100);
			if(luck > 29){
				//Далі повертає в попереднє меню й в у персонажів збільщений шанс до втечі. В разі продовження бою, персонажі мають на одну атаку збільшене пошкодження по ворогу.)
				system = 0;
				screen = 0;
				BDialogue = false;
				butt_invis = 1;
				button_c = 1;
				button[button_c] = "L";
				button[4] = "D";
				button[3] = "D";
				button[2] = "D";
			} else{
				//Далі повертає в попереднє меню й бій продовжується. Персонажі отримують на одну атаку збільшене пошкодження по по собі.
				mini_game = true;
				system = 0;
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
				button[4] = "D";
				button[3] = "D";
				button[2] = "D";
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
				button[4] = "D";
				button[3] = "D";
				button[2] = "D";
			}
		}
		
	}
	if(enemies = ENEMY.Kavkazci){
	////якщо кавказці!!!!!!!!!!!!!!1
		if(button_c = 1 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
			alarm[2] = 200;
			luck = irandom_range(30,100);
			if(luck > 89){
				mini_game = true;
				system = 0;
			} else {
				//бійка закінчується
				battle_turn_down = true;
			}
		}
		if(button_c = 2 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E")))){
			answer = 2;
			alarm[2] = 200;
			luck = irandom_range(0,100);
			if(luck > 50){
				//Далі повертає в попереднє меню й в у персонажів збільшений шанс до втечі. В разі продовження бою, персонажі мають на одну атаку збільшене пошкодження по ворогу.)
				system = 0;
				screen = 0;
				BDialogue = false;
				butt_invis = 1;
				button_c = 1;
				button[button_c] = "L";
				button[4] = "D";
				button[3] = "D";
				button[2] = "D";
			} else{
				//Далі повертає в попереднє меню й бій продовжується. Персонажі отримують на одну атаку збільшене пошкодження по собі.
				mini_game = true;
				system = 0;
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
				button[4] = "D";
				button[3] = "D";
				button[2] = "D";
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
				button[4] = "D";
				button[3] = "D";
				button[2] = "D";
			}
		}
	}
}*/
#endregion
	

