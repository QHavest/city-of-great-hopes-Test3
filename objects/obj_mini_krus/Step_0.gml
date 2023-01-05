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
	break;
	case 1 :
	 instance_create_depth(valx,500,-300,obj_kirpich_mini);
	break;
	case 2 :
	 instance_create_depth(valx,500,-300,obj_palka_mini);
	break;
	case 3 :
	instance_create_depth(valx,500,-300,obj_rock_mini);
	break;
}

}
