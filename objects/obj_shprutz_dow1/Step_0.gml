if(keyboard_check_pressed(ord("C"))){ alarm[2] = 80; }

with (inst_6625367E){
if(alarm[2] = 80){ 
	alarm[1] = 80;
}

if(alarm[1] > 0){
	mp_linear_step(695, 905, 3, false);
	alarm[1] -= 1;
	alarm[2] -= 1;
}

if(alarm[1] < 2){
	mp_linear_step(695, 776, 3, false);
	alarm[2] += 1;
}
}

with (inst_5AE21B82){
if(alarm[2] = 80){ 
	alarm[1] = 80;
}

if(alarm[1] > 0){
	mp_linear_step(919, 776, 3, false);
	alarm[1] -= 1;
	alarm[2] -= 1;
}

if(alarm[1] < 2){
	mp_linear_step(919, 905, 3, false);
	alarm[2] += 1;
}
}

with (inst_35959864){
if(alarm[2] = 80){ 
	alarm[1] = 80;
}

if(alarm[1] > 0){
	mp_linear_step(1147, 905, 3, false);
	alarm[1] -= 1;
	alarm[2] -= 1;
}

if(alarm[1] < 2){
	mp_linear_step(1147, 776, 3, false);
	alarm[2] += 1;
}
}


with (inst_5BAD83A0){
if(alarm[2] = 80){ 
	alarm[1] = 80;
}

if(alarm[1] > 0){
	mp_linear_step(1358, 776, 3, false);
	alarm[1] -= 1;
	alarm[2] -= 1;
}

if(alarm[1] < 2){
	mp_linear_step(1358, 905, 3, false);
	alarm[2] += 1;
}
}