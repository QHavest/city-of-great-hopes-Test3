randomize();
var val1 = irandom_range(0,3);
var randomisers1 = irandom_range(0,3);
var strax1 = 1645;
switch(randomisers1){
	case 0 :
	randomisers1 = 682;
	break;
	case 1 :
	randomisers1 = 578;
	break;
	case 2 :
	randomisers1 = 894;
	break;
	case 3 :
	randomisers1 = 789;
	break;
	}
	
switch(val1){
	case 0 :
	instance_create_depth(strax1,randomisers1,-300,obj_sssrs);
	break;
	case 1 :
	instance_create_depth(strax1,randomisers1,-300,obj_sssrs);
	break;
	case 2 :
	 instance_create_depth(strax1,randomisers1,-300,obj_sssrs);
	break;
	case 3 :
	 instance_create_depth(strax1,randomisers1,-300,obj_sssrs)
	break;
	}
	
alarm[5] = 25;