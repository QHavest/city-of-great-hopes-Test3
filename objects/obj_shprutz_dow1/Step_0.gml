if (obj_shprutz_parent.moves_shprutz == true){	
x -= 5;
}
if(x < 280){
instance_destroy();
}



/*
if(keyboard_check_pressed(ord("C"))){ alarm[2] = 80; }

with (inst_6625367E){
if(alarm[2] = 80){ 
	alarm[1] = 80;
}

if(alarm[1] > 0){
	mp_linear_step(768, 841, 3, false);
	alarm[1] -= 1;
	alarm[2] -= 1;
}

if(alarm[1] < 2){
	mp_linear_step(768, 776, 3, false);
	alarm[2] += 1;
}
}

with (inst_5AE21B82){
if(alarm[2] = 80){ 
	alarm[1] = 80;
}

if(alarm[1] > 0){
	mp_linear_step(1344, 776, 3, false);
	alarm[1] -= 1;
	alarm[2] -= 1;
}

if(alarm[1] < 2){
	mp_linear_step(1344, 841, 3, false);
	alarm[2] += 1;
}
}
