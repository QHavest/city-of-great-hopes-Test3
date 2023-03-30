 alarm[0] -= 1;
 alarm[6] -= 1;
//////////////////////////////////////////////////////////////////////////////////////////

if(!instance_exists(obj_nozh) and !instance_exists(obj_nozh_vert) and turn = 0){
	instance_create_depth(1504, 608, 150, obj_nozh);
	turn += 1;
}else if(instance_exists(obj_nozh) and turn = 1){
	obj_nozh.x -= knife_spd;
}

if(!instance_exists(obj_nozh) and !instance_exists(obj_nozh_vert) and turn = 1){
	instance_create_depth(32, 896, 150, obj_nozh);
	turn += 1;
	obj_nozh.image_index = 1; 
}else if(instance_exists(obj_nozh) and turn = 2){
	obj_nozh.x += knife_spd;
}

if(!instance_exists(obj_nozh) and !instance_exists(obj_nozh_vert) and turn = 2){
	instance_create_depth(736, 1088, 150, obj_nozh_vert);
	instance_create_depth(1152, 1088, 150, obj_nozh_vert);
	turn += 1;
}else if(instance_exists(obj_nozh_vert) and turn = 3){
	obj_nozh_vert.y -= knife_spd;
}

if(!instance_exists(obj_nozh) and !instance_exists(obj_nozh_vert) and turn = 3){
	instance_create_depth(576, 64, 150, obj_nozh_vert);
	instance_create_depth(928, 64, 150, obj_nozh_vert);
	instance_create_depth(1280, 64, 150, obj_nozh_vert);
	obj_nozh_vert.image_index = 3;
	turn += 1;
}else if(instance_exists(obj_nozh_vert) and turn = 4){
	obj_nozh_vert.y += knife_spd;
}

if(!instance_exists(obj_nozh) and !instance_exists(obj_nozh_vert) and turn = 4){
	instance_create_depth(1440, 448, 150, obj_nozh);
	obj_nozh.image_angle = point_direction(1440, 448, 1760, 768);
	turn += 1;
}else if(instance_exists(obj_nozh) and turn = 5){
	obj_nozh.x -= knife_spd;
	obj_nozh.y += knife_spd/2;
}

if(!instance_exists(obj_nozh) and !instance_exists(obj_nozh_vert) and turn = 5){
	instance_create_depth(608, 480, 150, obj_nozh);
	obj_nozh.image_angle = point_direction(608, 480, 352, 768);
	obj_nozh.image_index = 3;
	turn += 1;
	alarm[0] = 30;
}else if(instance_exists(obj_nozh) and turn = 6){
	obj_nozh.x += knife_spd;
	obj_nozh.y += knife_spd/2;
}

////////////////////////////////////////////////////////////////////////////////////////////////

if(!instance_exists(obj_nozh) and !instance_exists(obj_nozh_vert) and turn = 6 and alarm[0] < 1){
	knife_spd = 40;
	first = instance_create_depth(1248, 312, 150, obj_nozh);
	second = instance_create_depth(310, 1200, 150, obj_nozh);
	third = instance_create_depth(1504, 800, 150, obj_nozh_vert);
	forth = instance_create_depth(416, 362, 150, obj_nozh_vert);
	first_id = instance_id_get(first);
	turn += 1;
	alarm[6] = 100;
}else if((instance_exists(obj_nozh_vert)) and turn = 7){
with(first){
	y += knife_spd;
	}
with(second){
	image_index = 3;
	y -= knife_spd;
	}
with(third){
	image_index = 1;
	if(x > 1071){ mp_linear_step_object(1070, 800, 30, obj_nozh_vert); }
	if(x = 1070){ mp_linear_step_object(1070, 0, 30, obj_nozh_vert); }
	}
with(forth){
	image_index = 2;
	if(x < 863){ mp_linear_step_object(864, 362, 30, obj_nozh_vert); }
	if(x = 864){ mp_linear_step_object(864, 1200, 30, obj_nozh_vert); }
	}
}

if(turn = 7 and !instance_exists(obj_nozh_vert)){
randomiser = true;	
}

////////////////////////////////////////////////////////////////////////////

if(randomiser = true){
if(!instance_exists(obj_nozh) and !instance_exists(obj_nozh_vert)){
	knife_spd = 40;
	random_attack = irandom_range(1, 6);
}

if (random_attack = 1){
	if(!instance_exists(obj_nozh) and !instance_exists(obj_nozh_vert)){
		instance_create_depth(1504, 608, 150, obj_nozh);
		}else if(instance_exists(obj_nozh)){
		obj_nozh.x -= knife_spd;
		}
		
}
if (random_attack = 2){
	if(!instance_exists(obj_nozh) and !instance_exists(obj_nozh_vert)){
		instance_create_depth(32, 896, 150, obj_nozh);
		turn += 1;
		obj_nozh.image_index = 1; 
	}else if(instance_exists(obj_nozh)){
		obj_nozh.x += knife_spd;
	}
}

if (random_attack = 3){
	if(!instance_exists(obj_nozh) and !instance_exists(obj_nozh_vert)){
		instance_create_depth(736, 1088, 150, obj_nozh_vert);
		instance_create_depth(1152, 1088, 150, obj_nozh_vert);
		}else if(instance_exists(obj_nozh_vert)){
			obj_nozh_vert.y -= knife_spd;
		}
}

if (random_attack = 4){
	if(!instance_exists(obj_nozh) and !instance_exists(obj_nozh_vert)){
	instance_create_depth(576, 64, 150, obj_nozh_vert);
	instance_create_depth(928, 64, 150, obj_nozh_vert);
	instance_create_depth(1248, 64, 150, obj_nozh_vert);
	obj_nozh_vert.image_index = 3;
	}else if(instance_exists(obj_nozh_vert)){
	obj_nozh_vert.y += knife_spd;
}
}

if (random_attack = 5){
	if(!instance_exists(obj_nozh) and !instance_exists(obj_nozh_vert)){
		instance_create_depth(1440, 448, 150, obj_nozh);
		obj_nozh.image_angle = point_direction(1440, 448, 1760, 768);
	}else if(instance_exists(obj_nozh)){
		obj_nozh.x -= knife_spd;
		obj_nozh.y += knife_spd/2;
	}
}
if (random_attack = 5){
if(!instance_exists(obj_nozh) and !instance_exists(obj_nozh_vert)){
	instance_create_depth(608, 480, 150, obj_nozh);
	obj_nozh.image_angle = point_direction(608, 480, 352, 768);
	obj_nozh.image_index = 3;
}else if(instance_exists(obj_nozh)){
	obj_nozh.x += knife_spd;
	obj_nozh.y += knife_spd/2;
}
}
}