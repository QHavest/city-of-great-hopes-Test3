if(keyboard_check_pressed(ord("C"))){ alarm[2] = 80; }

with (inst_5F6B1D4A){
if(alarm[2] = 80){ 
	alarm[1] = 80;
}

if(alarm[1] > 0){
	mp_linear_step(1056, 806, 3, false);
	alarm[1] -= 1;
	alarm[2] -= 1;
}

if(alarm[1] < 2){
	mp_linear_step(1056, 841, 3, false);
	alarm[2] += 1;
}
}


