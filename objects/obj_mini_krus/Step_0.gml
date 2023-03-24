//if (keyboard_check_pressed(ord("K"))){
//instance_create_depth(570,618,-300,obj_bottle_mini)
//}

alarm[0] -= 1;

if (alarm[0] < 1){
	randomize();
//alarm[0] = random_range(20,25);
alarm[0] = random_range(40,55);
//var val = irandom_range(0,7);
var valx = random_range(500,1400);
var phigures = irandom(4);
//strax = 1570;
switch(phigures){
	case 0://діагональні фігури
	instance_create_depth(valx,500,150,obj_negative_hit);
	instance_create_depth(valx+30,500-30,150,obj_negative_hit);
	instance_create_depth(valx+30,500-100,150,obj_positive_hit);
	instance_create_depth(valx+60,500-60,150,obj_negative_hit);
	instance_create_depth(valx+90,500-90,150,obj_negative_hit);
	instance_create_depth(valx+120,500-120,150,obj_negative_hit);
	break;
	case 1://діагональні фігури
	instance_create_depth(valx,500,150,obj_negative_hit);
	instance_create_depth(valx-30,500-30,150,obj_negative_hit);
	instance_create_depth(valx-30,500-100,150,obj_positive_hit);
	instance_create_depth(valx-60,500-60,150,obj_negative_hit);
	instance_create_depth(valx-90,500-90,150,obj_negative_hit);
	instance_create_depth(valx-120,500-120,150,obj_negative_hit);
	break;
	case 2://горизонтальні фігури
	instance_create_depth(valx,500,150,obj_negative_hit);
	instance_create_depth(valx+30,500,150,obj_negative_hit);
	instance_create_depth(valx+60,500,150,obj_negative_hit);
	instance_create_depth(valx+90,500,150,obj_negative_hit);
	instance_create_depth(valx+120,500,150,obj_negative_hit);
	break;
	case 3://стрілка вліво
	instance_create_depth(valx,500,150,obj_negative_hit);
	instance_create_depth(valx+30,500-30,150,obj_negative_hit);
	instance_create_depth(valx+60,500-60,150,obj_negative_hit);
	instance_create_depth(valx+90,500-90,150,obj_negative_hit);
	instance_create_depth(valx+120,500-120,150,obj_positive_hit);
	instance_create_depth(valx+30,500+30,150,obj_negative_hit);
	instance_create_depth(valx+60,500+60,150,obj_negative_hit);
	instance_create_depth(valx+90,500+90,150,obj_negative_hit);
	instance_create_depth(valx+120,500+120,150,obj_negative_hit);
	
	instance_create_depth(valx+75,500,150,obj_positive_hit);
	instance_create_depth(valx+120,500+35,150,obj_positive_hit);
	instance_create_depth(valx+120,500-35,150,obj_positive_hit);
	break;
	case 4://стрілка вправо
	instance_create_depth(valx,400,150,obj_negative_hit);
	instance_create_depth(valx-30,400-30,150,obj_negative_hit);
	instance_create_depth(valx-60,400-60,150,obj_negative_hit);
	instance_create_depth(valx-90,400-90,150,obj_negative_hit);
	instance_create_depth(valx-120,400-120,150,obj_negative_hit);
	instance_create_depth(valx-30,400+30,150,obj_negative_hit);
	instance_create_depth(valx-60,400+60,150,obj_negative_hit);
	instance_create_depth(valx-90,400+90,150,obj_negative_hit);
	instance_create_depth(valx-120,400+120,150,obj_negative_hit);
	
	instance_create_depth(valx-75,400,150,obj_positive_hit);
	instance_create_depth(valx-120,400+35,150,obj_positive_hit);
	instance_create_depth(valx-120,400-35,150,obj_positive_hit);
	break;
}
/*switch(val){
	case 0 :
	 instance_create_depth(valx,500,150,obj_bottle_mini);
	break;
	case 1 :
	 instance_create_depth(valx,500,150,obj_kirpich_mini);
	break;
	case 2 :
	 instance_create_depth(valx,500,150,obj_palka_mini);
	break;
	case 3 :
	instance_create_depth(valx,500,150,obj_rock_mini);
	break;
	case 4 :
	 instance_create_depth(valx,500,150,obj_bottle_mini_1);
	break;
	case 5 :
	 instance_create_depth(valx,500,150,obj_kirpich_mini_2);
	break;
	case 6 :
	 instance_create_depth(valx,500,150,obj_palka_mini_3);
	break;
	case 7 :
	instance_create_depth(valx,500,150,obj_rock_mini_4);
	break;
}*/

}
