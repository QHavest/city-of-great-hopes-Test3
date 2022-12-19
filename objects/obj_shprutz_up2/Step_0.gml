/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("C"))){ alarm[2] = 80; }

with (inst_4F588A8F){
if(alarm[2] = 80){ 
	alarm[1] = 80;
}

if(alarm[1] > 0){
	mp_linear_step(803, 453, 3, false);
	alarm[1] -= 1;
	alarm[2] -= 1;
}

if(alarm[1] < 2){
	mp_linear_step(803, 569, 3, false);
	alarm[2] += 1;
}
}

with (inst_5F3E18E){
if(alarm[2] = 80){ 
	alarm[1] = 80;
}

if(alarm[1] > 0){
	mp_linear_step(1026, 453, 3, false);
	alarm[1] -= 1;
	alarm[2] -= 1;
}

if(alarm[1] < 2){
	mp_linear_step(1026, 569, 3, false);
	alarm[2] += 1;
}
}

with (inst_4884328E){
if(alarm[2] = 80){ 
	alarm[1] = 80;
}

if(alarm[1] > 0){
	mp_linear_step(1242, 569, 3, false);
	alarm[1] -= 1;
	alarm[2] -= 1;
}

if(alarm[1] < 2){
	mp_linear_step(1242, 453, 3, false);
	alarm[2] += 1;
}
}

with (inst_635548C9){
if(alarm[2] = 80){ 
	alarm[1] = 80;
}

if(alarm[1] > 0){
	mp_linear_step(1358, 453, 3, false);
	alarm[1] -= 1;
	alarm[2] -= 1;
}

if(alarm[1] < 2){
	mp_linear_step(1358, 569, 3, false);
	alarm[2] += 1;
}
}



