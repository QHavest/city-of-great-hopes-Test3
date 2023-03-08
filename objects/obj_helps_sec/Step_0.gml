if (image_index >= image_number - 1){
	switch(obj_sects.phases){
		case 0:
		instance_create_depth(obj_helps_sec.xprevious+10,581,-300,obj_hrest);
		break;
		case 1:
		instance_create_depth(obj_helps_sec.xprevious+10,581,-300,obj_hrest);
		break;
		case 2:
		instance_create_depth(obj_helps_sec.xprevious+10,581,-300,obj_hrest);
		break;
	}
		instance_destroy();
	}