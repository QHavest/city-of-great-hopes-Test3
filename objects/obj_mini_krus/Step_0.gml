//if (keyboard_check_pressed(ord("K"))){
//instance_create_depth(570,618,-300,obj_bottle_mini)
//}

alarm[0] -= 1;

if (alarm[0] < 1){
	randomize();
//alarm[0] = random_range(20,25);
//alarm[0] = random_range(40,55);



if (etap_phigures <= 20)
	{
	phases = 1;
	} else if (etap_phigures >= 21 and etap_phigures <= 22){
	phases = 2;
	} else if (etap_phigures >= 23 and etap_phigures <= 30){
	phases = 0;
	} else if (etap_phigures >= 31){
	phases = 2;
	}
//strax = 1570;
switch(phases){
	case 0:
	alarm[0] = 60;
	var phigures = irandom(4);
	etap_phigures++;
		switch(phigures){
			case 0://діагональні фігури
			var valx = random_range(500,1150);
				instance_create_depth(valx,500,150,obj_negative_hit);
				instance_create_depth(valx+50,500-40,150,obj_negative_hit);
				instance_create_depth(valx+50,500-110,150,obj_positive_hit);
				instance_create_depth(valx+100,500-70,150,obj_negative_hit);
				instance_create_depth(valx+150,500-100,150,obj_negative_hit);
				instance_create_depth(valx+200,500-130,150,obj_negative_hit);
			break;
			case 1://діагональні фігури
			var valx = random_range(750,1400);
				instance_create_depth(valx,500,150,obj_negative_hit);
				instance_create_depth(valx-50,500-40,150,obj_negative_hit);
				instance_create_depth(valx-50,500-110,150,obj_positive_hit);
				instance_create_depth(valx-100,500-70,150,obj_negative_hit);
				instance_create_depth(valx-150,500-100,150,obj_negative_hit);
				instance_create_depth(valx-200,500-130,150,obj_negative_hit);
			break;
			case 2://горизонтальні фігури
			var valx = random_range(500,1150);
				instance_create_depth(valx,500,150,obj_negative_hit);
				instance_create_depth(valx+65,500,150,obj_negative_hit);
				instance_create_depth(valx+120,500,150,obj_negative_hit);
				instance_create_depth(valx+170,500,150,obj_negative_hit);
				instance_create_depth(valx+220,500,150,obj_negative_hit);
	
				instance_create_depth(valx+80,500-60,150,obj_positive_hit);
				instance_create_depth(valx+160,500-60,150,obj_positive_hit);
			break;
			case 3://стрілка вліво
			var valx = random_range(500,1150);
				instance_create_depth(valx,500,150,obj_negative_hit);
				instance_create_depth(valx+50,500-40,150,obj_negative_hit);
				instance_create_depth(valx+100,500-70,150,obj_negative_hit);
				instance_create_depth(valx+150,500-100,150,obj_negative_hit);
				instance_create_depth(valx+200,500-130,150,obj_negative_hit);
				instance_create_depth(valx+50,500+40,150,obj_negative_hit);
				instance_create_depth(valx+100,500+70,150,obj_negative_hit);
				instance_create_depth(valx+150,500+100,150,obj_negative_hit);
				instance_create_depth(valx+200,500+130,150,obj_negative_hit);
	
				instance_create_depth(valx+120,500,150,obj_positive_hit);
				instance_create_depth(valx+180,500+48,150,obj_positive_hit);
				instance_create_depth(valx+180,500-48,150,obj_positive_hit);
			break;
			case 4://стрілка вправо
			var valx = random_range(750,1400);
				instance_create_depth(valx,400,150,obj_negative_hit);
				instance_create_depth(valx-50,400-40,150,obj_negative_hit);
				instance_create_depth(valx-100,400-70,150,obj_negative_hit);
				instance_create_depth(valx-150,400-100,150,obj_negative_hit);
				instance_create_depth(valx-200,400-130,150,obj_negative_hit);
				instance_create_depth(valx-50,400+40,150,obj_negative_hit);
				instance_create_depth(valx-100,400+70,150,obj_negative_hit);
				instance_create_depth(valx-150,400+100,150,obj_negative_hit);
				instance_create_depth(valx-200,400+130,150,obj_negative_hit);
	
				instance_create_depth(valx-120,400,150,obj_positive_hit);
				instance_create_depth(valx-180,400+48,150,obj_positive_hit);
				instance_create_depth(valx-180,400-48,150,obj_positive_hit);
			break;
		}
	break;
	case 1:
		alarm[0] = random_range(20,25);
		var val = irandom(1);
		var valx = random_range(500,1400);
		etap_phigures++;
		switch(val){
			case 0 :
			 instance_create_depth(valx,500,150,obj_positive_hit);
			break;
			case 1 :
			 instance_create_depth(valx,500,150,obj_negative_hit);
			break;
		}
	break;
	case 2:
	alarm[0] = room_speed;
	etap_phigures++;
	break;
}

}
if (etap_phigures >=32){
	etap_phigures = 0;
}
