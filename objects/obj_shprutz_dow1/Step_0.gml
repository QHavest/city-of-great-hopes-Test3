if (place_meeting(x,y,obj_mini_avatar)){
obj_mini_avatar.damage = 5;}
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
