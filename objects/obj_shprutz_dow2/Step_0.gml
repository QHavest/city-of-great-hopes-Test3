if(keyboard_check_pressed(ord("C"))){ alarm[2] = 80; }

with (inst_5F6B1D4A){
if(alarm[2] = 80){ 
	alarm[1] = 80;
}

if(alarm[1] > 0){
	mp_linear_step(803, 776, 3, false);
	alarm[1] -= 1;
	alarm[2] -= 1;
}

if(alarm[1] < 2){
	mp_linear_step(803, 905, 3, false);
	alarm[2] += 1;
}
}

with (inst_217E70D0){
if(alarm[2] = 80){ 
	alarm[1] = 80;
}

if(alarm[1] > 0){
	mp_linear_step(1026, 905, 3, false);
	alarm[1] -= 1;
	alarm[2] -= 1;
}

if(alarm[1] < 2){
	mp_linear_step(1026, 776, 3, false);
	alarm[2] += 1;
}
}

with (inst_34D9CAB3){
if(alarm[2] = 80){ 
	alarm[1] = 80;
}

if(alarm[1] > 0){
	mp_linear_step(1242, 905, 3, false);
	alarm[1] -= 1;
	alarm[2] -= 1;
}

if(alarm[1] < 2){
	mp_linear_step(1242, 776, 3, false);
	alarm[2] += 1;
}
}


