/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("C"))){ alarm[2] = 80; }

with (inst_198CDF67){
if(alarm[2] = 80){ 
	alarm[1] = 80;
}

if(alarm[1] > 0){
	mp_linear_step(768, 520, 3, false);
	alarm[1] -= 1;
	alarm[2] -= 1;
}

if(alarm[1] < 2){
	mp_linear_step(768, 453, 3, false);
	alarm[2] += 1;
}
}

with (inst_5812145A){
if(alarm[2] = 80){ 
	alarm[1] = 80;
}

if(alarm[1] > 0){
	mp_linear_step(1344, 453, 3, false);
	alarm[1] -= 1;
	alarm[2] -= 1;
}

if(alarm[1] < 2){
	mp_linear_step(1344, 520, 3, false);
	alarm[2] += 1;
}
}
