instance_create_depth(941.5,887,-300,obj_grusha_sml_up);
instance_create_depth(941.5,577,-300,obj_grusha_sml_down);
instance_create_depth(1101,661,-300,obj_grusha_right);
instance_create_depth(782,661,-300,obj_grusha_left);
alarm[0] += 1;
alarm[1] += 1;
alarm[2] += 1;
alarm[3] += 1;
randomize();
if (alarm[0] > irandom_range(100,150)){
obj_grusha_sml_up.idx = 1;
hits_grusha = true;
}
if (alarm[1] > irandom_range(100,150)){
obj_grusha_sml_down.idx = 1;
hits_grusha = true;
}

if (alarm[2] > irandom_range(100,150)){
obj_grusha_right.idx = 1;
hits_grusha = true;
}
if (alarm[3] > irandom_range(100,150)){
obj_grusha_left.idx = 1;
hits_grusha = true;
}

if(alarm[0] > 300){
	obj_grusha_sml_up.idx = 0;
	alarm[0] = 0
	hits_grusha = false;
}
if(alarm[1] > 300){
	obj_grusha_sml_down.idx = 0;
	alarm[1] = 0
	hits_grusha = false;
}

if(alarm[2] > 300){
	obj_grusha_right.idx = 0;
	alarm[2] = 0
	hits_grusha = false;
}

if(alarm[3] > 300){
	obj_grusha_left.idx = 0;
	alarm[3] = 0
	hits_grusha = false;
}

if (hits_grusha = true){
	if (keyboard_check_pressed(vk_down)){
	obj_grusha_sml_up.idx = 0;
	hits_grusha = false;
	instance_create_depth(1050, 940,-300,obj_score_ytopur);
	obj_score_ytopur.idxx = 0;
	alarm[0] = 0
	}
	
	if (keyboard_check_pressed(vk_up)){
	obj_grusha_sml_down.idx = 0;
	hits_grusha = false;
	instance_create_depth(1050, 605,-300,obj_score_ytopur);
	obj_score_ytopur.idxx = 0;
	alarm[1] = 0
	}
	
	if (keyboard_check_pressed(vk_right)){
	obj_grusha_right.idx = 0;
	hits_grusha = false;
	instance_create_depth(1215, 940,-300,obj_score_ytopur);
	obj_score_ytopur.idxx = 0;
	alarm[2] = 0
	}
	
	if (keyboard_check_pressed(vk_left)){
	obj_grusha_left.idx = 0;
	hits_grusha = false;
	instance_create_depth(710, 605,-300,obj_score_ytopur);
	obj_score_ytopur.idxx = 0;
	alarm[3] = 0
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



