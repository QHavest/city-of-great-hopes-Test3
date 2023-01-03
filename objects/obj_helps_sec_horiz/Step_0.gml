if (image_index = 9){
	instance_destroy();

	switch(obj_sects.val1){
	case 0 :
	 instance_create_depth(615,577,-300,obj_hrest);
	break;
	case 1 :
	instance_create_depth(720,577,-300,obj_hrest)
	break;
	case 2 :
	instance_create_depth(825,577,-400,obj_hrest);
	break;
	case 3 :
	instance_create_depth(930,577,-400,obj_hrest);
	break;
	case 4 :
	instance_create_depth(1035,577,-400,obj_hrest);
	break;
	case 5 :
	instance_create_depth(1140,577,-400,obj_hrest);
	break;
	case 6 :
	instance_create_depth(1245,577,-400,obj_hrest);
	break;
	
	case 7 :
	 instance_create_depth(615,990,-300,obj_hrest_horiz);
	break;
	case 8 :
	instance_create_depth(720,990,-300,obj_hrest_horiz)
	break;
	case 9 :
	instance_create_depth(825,990,-400,obj_hrest_horiz);
	break;
	case 10 :
	instance_create_depth(930,990,-400,obj_hrest_horiz);
	break;
	case 11 :
	instance_create_depth(1035,990,-400,obj_hrest_horiz);
	break;
	case 12 :
	instance_create_depth(1140,990,-400,obj_hrest_horiz);
	break;
	case 13 :
	instance_create_depth(1245,990,-400,obj_hrest_horiz);
	break;
	}
	
	}