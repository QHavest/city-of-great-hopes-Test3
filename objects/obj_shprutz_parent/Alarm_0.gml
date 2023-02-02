shprutz = irandom_range(0,2);
shprutz_height = irandom_range(0,135);
switch(shprutz){
	case 0:
	instance_create_depth(1480, 437+shprutz_height, -300,obj_shprutz_up1);
	instance_create_depth(1480, 794.5+shprutz_height, -300,obj_shprutz_dow1);
	break;
	case 1:
	instance_create_depth(1480, 437+shprutz_height, -300,obj_shprutz_up1).sprite_index = spr_shprutz_up2;
	instance_create_depth(1480, 794.5+shprutz_height, -300,obj_shprutz_dow1).sprite_index = spr_shprutz_dow2;
	break;
	case 2:
	instance_create_depth(1480, 437+shprutz_height, -300,obj_shprutz_up1).sprite_index = spr_shprutz_mega_up1;
	instance_create_depth(1480, 794.5+shprutz_height, -300,obj_shprutz_dow1).sprite_index = spr_shprutz_mega_dow1;
	break;
}
alarm[0] = 50;