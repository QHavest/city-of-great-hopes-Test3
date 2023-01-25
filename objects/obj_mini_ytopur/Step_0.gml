instance_create_depth(941.5,887,-300,obj_grusha_sml_up);
instance_create_depth(941.5,577,-300,obj_grusha_sml_down);
instance_create_depth(1101,661,-300,obj_grusha_right);
instance_create_depth(782,661,-300,obj_grusha_left);
//Трикутні кнопки 
instance_create_depth(938.5,693,-300,obj_romb_up);
instance_create_depth(885,743.5,-300,obj_romb_left);
instance_create_depth(1016,743.5,-300,obj_romb_right);
instance_create_depth(938.5,818,-300,obj_romb_down);

//х945 у748 голова коорди
	alarm [4] -= 1
	if (alarm [4] < 1){
	grushka = irandom_range(0,3);
	switch(grushka){
			case 0:
			grushki = GRUSHKI.grushka_up
			break;
			case 1:
			grushki = GRUSHKI.grushka_down
			grushka_a = 1;
			break;
			case 2:
			grushki = GRUSHKI.grushka_right
			grushka_a = 2;
			break;
			case 3:
			grushki = GRUSHKI.grushka_left
			grushka_a = 3;
			break;
		}
	alarm [4] = 150;
	}
	
	switch(grushka){
	case 0:
	alarm[0] -= 1;
	if (alarm[0] < 1){
	obj_grusha_sml_up.idx = 1;
	hits_grusha = true;
	alarm[0] = 100;
	}
	if(alarm[0] < 70 and hits_grusha = true){
	obj_grusha_sml_up.idx = 0;
	hits_grusha = false;
	}
	break;
	
	case 1:
	alarm[0] -= 1;
	if (alarm[0] < 1){
	obj_grusha_sml_down.idx = 1;
	hits_grusha = true;
	alarm[0] = 100;
	}
	if(alarm[0]< 70 and hits_grusha = true){
	obj_grusha_sml_down.idx = 0;
	hits_grusha = false;
	}

	break;
	case 2:
	alarm[0] -= 1;
	if (alarm[0] < 1){
	obj_grusha_right.idx = 1;
	hits_grusha = true;
	alarm[0] = 100;
	}
	if(alarm[0] < 70 and hits_grusha = true){
	obj_grusha_right.idx = 0;
	hits_grusha = false;
	}

	break;
	case 3:
	alarm[0] -= 1;
	if (alarm[0] < 1){
	obj_grusha_left.idx = 1;
	hits_grusha = true;
	alarm[0] = 100;
	}
	if(alarm[0] < 70 and hits_grusha = true){
	obj_grusha_left.idx = 0;
	hits_grusha = false;

	}
	break;
}
randomize();/*
//якщо груша дозодить до 150+ секунд вмикати білу заливку
if (alarm[0] > random_range(100,150)){
obj_grusha_sml_up.idx = 1;
hits_grusha = true;
}
if (alarm[1] > random_range(100,150)){
obj_grusha_sml_down.idx = 1;
hits_grusha = true;
}

if (alarm[2] > random_range(100,150)){
obj_grusha_right.idx = 1;
hits_grusha = true;
}
if (alarm[3] > random_range(100,150)){
obj_grusha_left.idx = 1;
hits_grusha = true;
}
//якщо груша дозодить до 200+ секунд, вимикати білу заливку
if(alarm[0] > random_range(200,300)){
	obj_grusha_sml_up.idx = 0;
	alarm[0] = random_range(0,15)
	hits_grusha = false;
}
if(alarm[1] > random_range(200,300)){
	obj_grusha_sml_down.idx = 0;
	alarm[1] = random_range(0,15)
	hits_grusha = false;
}

if(alarm[2] > random_range(200,300)){
	obj_grusha_right.idx = 0;
	alarm[2] = random_range(0,15)
	hits_grusha = false;
}

if(alarm[3] > random_range(200,300)){
	obj_grusha_left.idx = 0;
	alarm[3] = random_range(0,15)
	hits_grusha = false;
}
*/
if (hits_grusha = true){

	if (keyboard_check_pressed(vk_down)){
	obj_grusha_sml_up.idx = 0;
	hits_grusha = false;
	instance_create_depth(1050, 940,-300,obj_score_ytopur);
	obj_score_ytopur.idxx = 0;
	alarm[0] = random_range(0,15)
	}
	
	if (keyboard_check_pressed(vk_up)){
	obj_grusha_sml_down.idx = 0;
	hits_grusha = false;
	instance_create_depth(1050, 605,-300,obj_score_ytopur);
	obj_score_ytopur.idxx = 0;
	alarm[1] = random_range(0,15)
	}
	
	if (keyboard_check_pressed(vk_right)){
	obj_grusha_right.idx = 0;
	hits_grusha = false;
	instance_create_depth(1215, 940,-300,obj_score_ytopur);
	obj_score_ytopur.idxx = 0;
	alarm[2] = random_range(0,15)
	}
	
	if (keyboard_check_pressed(vk_left)){
	obj_grusha_left.idx = 0;
	hits_grusha = false;
	instance_create_depth(710, 605,-300,obj_score_ytopur);
	obj_score_ytopur.idxx = 0;
	alarm[3] = random_range(0,15)
	}

} else if (hits_grusha = false){
	if(keyboard_check_pressed(vk_down)){
	obj_grusha_sml_up.idx = 0;
	instance_create_depth(1050, 940,-300,obj_score_min_ytopur);
	obj_score_min_ytopur.idxx = 0;
	}
	
	if(keyboard_check_pressed(vk_up)){
	obj_grusha_sml_down.idx = 0;
	instance_create_depth(1050, 605,-300,obj_score_min_ytopur);
	obj_score_min_ytopur.idxx = 0;
	}
	
	if(keyboard_check_pressed(vk_right)){
	obj_grusha_right.idx = 0;
	instance_create_depth(1215, 750,-300,obj_score_min_ytopur);
	obj_score_min_ytopur.idxx = 0;
	}
	
	if(keyboard_check_pressed(vk_left)){
	obj_grusha_left.idx = 0;
	instance_create_depth(710, 750,-300,obj_score_min_ytopur);
	obj_score_min_ytopur.idxx = 0;
	}
}



