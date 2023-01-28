//if (keyboard_check_pressed(ord("K"))){
//instance_create_depth(570,618,-300,obj_bottle_mini)
//}

alarm[0] -= 1;

if (alarm[0] < 1){
	randomize();
alarm[0] = random_range(30,120);
val = irandom_range(0,3);
valx = random_range(550,1410);
strax = 1570;

switch(val){
	case 0 :
	 instance_create_depth(valx,500,-300,obj_bottle_mini);
	 if (obj_bottle_mini.im=1){
	 obj_mini_avatar.damage = 5;
	 } if (obj_bottle_mini.im=0){
	 obj_mini_avatar.damage = 0; 
	 }
	break;
	case 1 :
	 instance_create_depth(valx,500,-300,obj_kirpich_mini);
	 if (obj_kirpich_mini.im=1){
	 obj_mini_avatar.damage = 5;
	 }  if (obj_kirpich_mini.im=0){
	 obj_mini_avatar.damage = 0; 
	 }
	break;
	case 2 :
	 instance_create_depth(valx,500,-300,obj_palka_mini);
	 if (obj_palka_mini.im=1){
	 obj_mini_avatar.damage = 5;
	 } if (obj_palka_mini.im=0){
	 obj_mini_avatar.damage = 0; 
	 }
	break;
	case 3 :
	instance_create_depth(valx,500,-300,obj_rock_mini);
	if (obj_rock_mini.im=1){
	 obj_mini_avatar.damage = 5;
	 } if (obj_rock_mini.im=0){
	 obj_mini_avatar.damage = 0; 
	 }
	break;
}

}
