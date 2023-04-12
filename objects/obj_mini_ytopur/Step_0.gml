	if (obj_ytopur_battle.phasese == PHASESE.Defeat)
	{
		alarm[9] = 1;
	}
	alarm [4] -= 1
	if (alarm [4] < 1){
	
	//var phases = irandom_range(0,2);
	if (etap_grushki <= 3)
	{
	phases = irandom_range(0,1);
	} else if (etap_grushki >= 4 and etap_grushki <= 5){
	phases = 3;
	} else if (etap_grushki >= 6 and etap_grushki <= 9){
	phases = 2;
	} else if (etap_grushki >= 10){
	phases = 3;
	}
	//alarm [4] = 40;
	
	switch(phases){
		case 0:
			alarm [4] = 50;
			grushka = irandom_range(0,3);
			grush = irandom_range(0,2);
			etap_grushki += 1;
			alarm[5] = 30;
				switch(grushka){
					case 0:
					grushki = GRUSHKI.grushka_up
					obj_grusha_sml_up.idx = 1;
					hits_grusha_up = true;
					break;
					case 1:
					grushki = GRUSHKI.grushka_down
					obj_grusha_sml_down.idx = 1;
					hits_grusha_down = true;
					break;
					case 2:
					grushki = GRUSHKI.grushka_right
					obj_grusha_right.idx = 1;
					hits_grusha_right = true;
					break;
					case 3:
					grushki = GRUSHKI.grushka_left
					obj_grusha_left.idx = 1;
					hits_grusha_left = true;
					break;
				}
			switch (grushki){
				case GRUSHKI.grushka_noone:
					obj_grusha_sml_up.idx = 0;
					obj_grusha_sml_down.idx = 0;
					obj_grusha_right.idx = 0;
					obj_grusha_left.idx = 0;
					hits_grusha = false;
					hits_grusha_up = false;
					hits_grusha_down = false;
					hits_grusha_left = false;
					hits_grusha_right = false;
				break;
				case GRUSHKI.grushka_up:
					switch (grush){
					case 0:
					obj_grusha_sml_down.idx = 1;
					hits_grusha_down = true;
					break;
					case 1:
					obj_grusha_right.idx = 1;
					hits_grusha_right = true;
					break;
					case 2:
					obj_grusha_left.idx = 1;
					hits_grusha_left = true;
					break;
					}
				break;
		
				case GRUSHKI.grushka_down:
					switch (grush){
					case 0:
					obj_grusha_sml_up.idx = 1;
					hits_grusha_up = true;
					break;
					case 1:
					obj_grusha_right.idx = 1;
					hits_grusha_right = true;
					break;
					case 2:
					obj_grusha_left.idx = 1;
					hits_grusha_left = true;
					break;
					}
				break;
		
				case GRUSHKI.grushka_right:
					switch (grush){
					case 0:
					obj_grusha_sml_up.idx = 1;
					hits_grusha_up = true;
					break;
					case 1:
					obj_grusha_sml_down.idx = 1;
					hits_grusha_down = true;
					break;
					case 2:
					obj_grusha_left.idx = 1;
					hits_grusha_left = true;
					break;
					}
				break;
		
				case GRUSHKI.grushka_left:
					switch (grush){
					case 0:
					obj_grusha_sml_up.idx = 1;
					hits_grusha_up = true;
					break;
					case 1:
					obj_grusha_sml_down.idx = 1;
					hits_grusha_down = true;
					break;
					case 2:
					obj_grusha_right.idx = 1;
					hits_grusha_right = true;
					break;
					}
				break;
			}
		break;
		case 1:
		alarm [4] = 50;
		alarm[5] = 30;
			grushka = irandom_range(0,3);
			etap_grushki += 1;
				switch(grushka){
					case 0:
					grushki = GRUSHKI.grushka_up
					obj_grusha_sml_up.idx = 1;
					hits_grusha_up = true;
					break;
					case 1:
					grushki = GRUSHKI.grushka_down
					obj_grusha_sml_down.idx = 1;
					hits_grusha_down = true;
					break;
					case 2:
					grushki = GRUSHKI.grushka_right
					obj_grusha_right.idx = 1;
					hits_grusha_right = true;
					break;
					case 3:
					grushki = GRUSHKI.grushka_left
					obj_grusha_left.idx = 1;
					hits_grusha_left = true;
					break;
				}
		break
		case 2:
		alarm [4] = 20;
		etap_grushki += 1;
		alarm[5] = 17;
			var grushka1 = irandom(3);
				switch(grushka1){
					case 0:
					grushki = GRUSHKI.grushka_up
					obj_grusha_sml_up.idx = 1;
					hits_grusha_up = true;
					break;
					case 1:
					grushki = GRUSHKI.grushka_down
					obj_grusha_sml_down.idx = 1;
					hits_grusha_down = true;
					break;
					case 2:
					grushki = GRUSHKI.grushka_right
					obj_grusha_right.idx = 1;
					hits_grusha_right = true;
					break;
					case 3:
					grushki = GRUSHKI.grushka_left
					obj_grusha_left.idx = 1;
					hits_grusha_left = true;
					break;
				}
		break
		case 3:
		alarm [4] = room_speed;
		etap_grushki += 1;
		break
	}
	
	
	}


	if (keyboard_check_pressed(vk_down) and hits_grusha_down = true) {
	obj_grusha_sml_down.idx = 0;
	instance_create_depth(1015, 900,-300,obj_score_ytopur);
	obj_score_ytopur.idxx = 0;
	obj_mini_avatar.damage_enemy = 5;
	hits_grusha_down = false;
	//power_hit += 5;
	} else if(keyboard_check_pressed(vk_down) and hits_grusha_down = false and !instance_exists(obj_score_ytopur)){
	obj_grusha_sml_down.idx = 0;
	instance_create_depth(1015, 900,-300,obj_score_min_ytopur);
	obj_score_min_ytopur.idxx = 0;
	//power_hit -= 1;
	}
	
	if (keyboard_check_pressed(vk_up) and hits_grusha_up = true){
	obj_grusha_sml_up.idx = 0;
	instance_create_depth(1005, 595,-300,obj_score_ytopur);
	obj_score_ytopur.idxx = 0;
	obj_mini_avatar.damage_enemy = 5;
	hits_grusha_up = false;
	//power_hit += 5;
	} else if(keyboard_check_pressed(vk_up) and hits_grusha_up = false and !instance_exists(obj_score_ytopur)){
	//power_hit -= 1;
	obj_grusha_sml_up.idx = 0;
	instance_create_depth(1005, 595,-300,obj_score_min_ytopur);
	obj_score_min_ytopur.idxx = 0;
	}
	
	
	if (keyboard_check_pressed(vk_right) and hits_grusha_right = true){
	obj_grusha_right.idx = 0;
	instance_create_depth(1170, 750,-300,obj_score_ytopur);
	obj_score_ytopur.idxx = 0;
	obj_mini_avatar.damage_enemy = 5;
	hits_grusha_right = false;
	//power_hit += 5;
	} else if(keyboard_check_pressed(vk_right) and hits_grusha_right = false and !instance_exists(obj_score_ytopur)){
	//power_hit -= 1;
	obj_grusha_right.idx = 0;
	instance_create_depth(1170, 750,-300,obj_score_min_ytopur);
	obj_score_min_ytopur.idxx = 0;
	}
	
	
	if (keyboard_check_pressed(vk_left) and hits_grusha_left = true){
	obj_grusha_left.idx = 0;
	instance_create_depth(655, 750,-300,obj_score_ytopur);
	obj_score_ytopur.idxx = 0;
	obj_mini_avatar.damage_enemy = 5;
	hits_grusha_left = false;
	//power_hit += 5;
	}else if(keyboard_check_pressed(vk_left) and hits_grusha_left = false and !instance_exists(obj_score_ytopur)){
	//power_hit -= 1;
	obj_grusha_left.idx = 0;
	instance_create_depth(655, 750,-300,obj_score_min_ytopur);
	obj_score_min_ytopur.idxx = 0;
	}
	
	if (etap_grushki >= 12){
	 etap_grushki = 0;
	}
	/*if (power_hit < 1)
	{
		power_hit = 0;
	}
	
	
	





