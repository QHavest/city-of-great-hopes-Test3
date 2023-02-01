shprutz = irandom_range(0,1);

switch(shprutz){
	case 0:
	instance_create_depth(1280, 504, -300,obj_shprutz_up1);
	instance_create_depth(1280, 861.5, -300,obj_shprutz_dow1);
	break;
	case 1:
	instance_create_depth(1280, 504, -300,obj_shprutz_up1).sprite_index = spr_shprutz_up2;
	instance_create_depth(1280, 861.5, -300,obj_shprutz_dow1).sprite_index = spr_shprutz_dow2;;
	break;

}
alarm[0] = 150;