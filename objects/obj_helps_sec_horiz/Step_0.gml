if (image_index >= image_number - 1){
	switch(obj_sects.phases){
		case 0:
		instance_create_depth(obj_helps_sec_horiz.xprevious+10,987,-300,obj_hrest_horiz);
		break;
		case 1:
		instance_create_depth(obj_helps_sec_horiz.xprevious+10,987,-300,obj_hrest_horiz);
		break;
		case 2:
		instance_create_depth(obj_helps_sec_horiz.xprevious+10,987,-300,obj_hrest_horiz);
		break;
	}
	instance_destroy();
	}