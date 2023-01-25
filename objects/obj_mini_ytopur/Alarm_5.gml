grushka = 0;

switch(grushka){
	case 0:

	alarm[0] -= 1;
	if (alarm[0] < 1){
	obj_grusha_sml_up.idx = 1;
	hits_grusha = true;
	}
	/*if(alarm[0] < 25){
	obj_grusha_sml_up.idx = 0;
	hits_grusha = false;
	}*/
	break;
	case 1:
	alarm[1] -= 1;
	if (alarm[1] < 1){
	obj_grusha_sml_down.idx = 1;
	hits_grusha = true;
	}
	
	
	break;
	case 2:
	alarm[2] -= 1;
	if (alarm[2] < 1){
	obj_grusha_right.idx = 1;
	hits_grusha = true;
	}
	
	
	break;
	case 3:
	alarm[3] -= 1;
	if (alarm[3] < 1){
	obj_grusha_left.idx = 1;
	hits_grusha = true;
	}
	
	break;
}

alarm[5] = 350;

