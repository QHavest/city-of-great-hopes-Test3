if (image_index = 9){
	instance_destroy();

	if(instance_exists(obj_sects)){
	switch(obj_sects.val1){
	case 0 :
	 instance_create_depth(625,581,-300,obj_hrest);
	break;
	case 1 :
	instance_create_depth(733,581,-300,obj_hrest)
	break;
	case 2 :
	instance_create_depth(836,581,-400,obj_hrest);
	break;
	case 3 :
	instance_create_depth(943,581,-400,obj_hrest);
	break;
	case 4 :
	instance_create_depth(1047,581,-400,obj_hrest);
	break;
	case 5 :
	instance_create_depth(1152,581,-400,obj_hrest);
	break;
	case 6 :
	instance_create_depth(1257,581,-400,obj_hrest);
	break;
	}
	}
	
	if(instance_exists(obj_sects) and obj_sects.phases = 1){
	switch(obj_sects.val2){
	case 0 :
	 instance_create_depth(625,581,-300,obj_hrest);
	break;
	case 1 :
	instance_create_depth(733,581,-300,obj_hrest)
	break;
	case 2 :
	instance_create_depth(836,581,-400,obj_hrest);
	break;
	case 3 :
	instance_create_depth(943,581,-400,obj_hrest);
	break;
	case 4 :
	instance_create_depth(1047,581,-400,obj_hrest);
	break;
	case 5 :
	instance_create_depth(1152,581,-400,obj_hrest);
	break;
	case 6 :
	instance_create_depth(1257,581,-400,obj_hrest);
	break;
		}
	}
	}