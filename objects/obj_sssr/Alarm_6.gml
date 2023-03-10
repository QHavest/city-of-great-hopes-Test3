randomize();
var val2 = irandom_range(0,3);
var randomisers2 = irandom_range(0,3);
var strax2 = 1760;
switch(randomisers2){
	case 0 :
	randomisers2 = 578;
	break;
	case 1 :
	randomisers2 = 682;
	break;
	case 2 :
	randomisers2 = 789;
	break;
	case 3 :
	randomisers2 = 894;
	break;
	}
	
switch(val2){
	case 0 :
	instance_create_depth(strax2,randomisers2,-300,obj_sssrs);
	break;
	case 1 :
	instance_create_depth(strax2,randomisers2,-300,obj_sssrs);
	break;
	case 2 :
	 instance_create_depth(strax2,randomisers2,-300,obj_sssrs);
	break;
	case 3 :
	 instance_create_depth(strax2,randomisers2,-300,obj_sssrs)
	break;
	}
	
alarm[6] = 20;