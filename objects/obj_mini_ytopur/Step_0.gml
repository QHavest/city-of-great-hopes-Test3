instance_create_depth(941.5,577,-300,obj_grusha_sml_up);
instance_create_depth(941.5,887,-300,obj_grusha_sml_down);
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
	grush = irandom_range(0,2);
	alarm [4] = 150;
	
	switch(grushka){
			case 0:
			grushki = GRUSHKI.grushka_up
			obj_grusha_sml_up.idx = 1;
		//	hits_grusha = true;
			hits_grusha_up = true;
			break;
			case 1:
			grushki = GRUSHKI.grushka_down
			obj_grusha_sml_down.idx = 1;
			//hits_grusha = true;
			hits_grusha_down = true;
			break;
			case 2:
			grushki = GRUSHKI.grushka_right
			obj_grusha_right.idx = 1;
			//hits_grusha = true;
			hits_grusha_right = true;
			break;
			case 3:
			grushki = GRUSHKI.grushka_left
			obj_grusha_left.idx = 1;
			//hits_grusha = true;
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
			//hits_grusha = true;
			hits_grusha_down = true;
			break;
			case 1:
			obj_grusha_right.idx = 1;
			//hits_grusha = true;
			hits_grusha_right = true;
			break;
			case 2:
			obj_grusha_left.idx = 1;
			//hits_grusha = true;
			hits_grusha_left = true;
			break;
			}
		break;
		
		case GRUSHKI.grushka_down:
			switch (grush){
			case 0:
			obj_grusha_sml_up.idx = 1;
			//hits_grusha = true;
			hits_grusha_up = true;
			break;
			case 1:
			obj_grusha_right.idx = 1;
			//hits_grusha = true;
			hits_grusha_right = true;
			break;
			case 2:
			obj_grusha_left.idx = 1;
			//hits_grusha = true;
			hits_grusha_left = true;
			break;
			}
		break;
		
		case GRUSHKI.grushka_right:
			switch (grush){
			case 0:
			obj_grusha_sml_up.idx = 1;
			//hits_grusha = true;
			hits_grusha_up = true;
			break;
			case 1:
			obj_grusha_sml_down.idx = 1;
			//hits_grusha = true;
			hits_grusha_down = true;
			break;
			case 2:
			obj_grusha_left.idx = 1;
			//hits_grusha = true;
			hits_grusha_left = true;
			break;
			}
		break;
		
		case GRUSHKI.grushka_left:
			switch (grush){
			case 0:
			obj_grusha_sml_up.idx = 1;
			//hits_grusha = true;
			hits_grusha_up = true;
			break;
			case 1:
			obj_grusha_sml_down.idx = 1;
			//hits_grusha = true;
			hits_grusha_down = true;
			break;
			case 2:
			obj_grusha_right.idx = 1;
			//hits_grusha = true;
			hits_grusha_right = true;
			break;
			}
		break;
	}
	}


//if (hits_grusha = true){
//alarm [7] -= 1;
//alarm [8] -= 1;
//alarm [9] -= 1;
//alarm [10] -= 1;
//if (hits_grusha_up = true or hits_grusha_down = true or hits_grusha_left = true or hits_grusha_right = true){
	if (keyboard_check_pressed(vk_down) and hits_grusha_down = true) {
	obj_grusha_sml_down.idx = 0;
	//hits_grusha = false;
	instance_create_depth(1050, 940,-300,obj_score_ytopur);
	//instance_create_depth(1050, 940,-300,obj_score_min_ytopur);
	obj_score_ytopur.idxx = 0;
	//obj_score_min_ytopur.idxx = 1;
	//alarm [7] = 10;

	hits_grusha_down = false;
	
	} else if(keyboard_check_pressed(vk_down) and hits_grusha_down = false and !instance_exists(obj_score_ytopur)){
	obj_grusha_sml_down.idx = 0;
	instance_create_depth(1050, 940,-300,obj_score_min_ytopur);
	obj_score_min_ytopur.idxx = 0;
	//alarm [1] = 25;
	}
	
	if (keyboard_check_pressed(vk_up) and hits_grusha_up = true){
	obj_grusha_sml_up.idx = 0;
	//hits_grusha = false;
	instance_create_depth(1050, 605,-300,obj_score_ytopur);
	//instance_create_depth(1050, 605,-300,obj_score_min_ytopur);
	obj_score_ytopur.idxx = 0;
	//obj_score_min_ytopur.idxx = 1;
	//alarm [8] = 10;
	hits_grusha_up = false;
	
	} else if(keyboard_check_pressed(vk_up) and hits_grusha_up = false and !instance_exists(obj_score_ytopur)){

	obj_grusha_sml_up.idx = 0;
	instance_create_depth(1050, 605,-300,obj_score_min_ytopur);
	obj_score_min_ytopur.idxx = 0;
	//alarm [1] = 25;
	}
	
	
	if (keyboard_check_pressed(vk_right) and hits_grusha_right = true){
	obj_grusha_right.idx = 0;
	//hits_grusha = false;
	instance_create_depth(1215, 940,-300,obj_score_ytopur);
	//instance_create_depth(1215, 750,-300,obj_score_min_ytopur);
	obj_score_ytopur.idxx = 0;
//	obj_score_min_ytopur.idxx = 1;
	//alarm [9] = 10;
	hits_grusha_right = false;
	
	} else if(keyboard_check_pressed(vk_right) and hits_grusha_right = false and !instance_exists(obj_score_ytopur)){

	obj_grusha_right.idx = 0;
	instance_create_depth(1215, 750,-300,obj_score_min_ytopur);
	obj_score_min_ytopur.idxx = 0;
	//alarm [1] = 25;
	}
	
	
	if (keyboard_check_pressed(vk_left) and hits_grusha_left = true){
	obj_grusha_left.idx = 0;
	//hits_grusha = false;
	instance_create_depth(710, 605,-300,obj_score_ytopur);
	//instance_create_depth(710, 750,-300,obj_score_min_ytopur);
	obj_score_ytopur.idxx = 0;
	//obj_score_min_ytopur.idxx = 1;
	//alarm [10] = 10;
	hits_grusha_left = false;
	
	}else if(keyboard_check_pressed(vk_left) and hits_grusha_left = false and !instance_exists(obj_score_ytopur)){

	obj_grusha_left.idx = 0;
	instance_create_depth(710, 750,-300,obj_score_min_ytopur);
	obj_score_min_ytopur.idxx = 0;
	//alarm [1] = 25;
	}
//} if (hits_grusha_up = false or hits_grusha_down = false or hits_grusha_left = false or hits_grusha_right = false)
//{
	
	
	
	
	
//}
//}




