var shprutz = 0;
var sprite_shprutz = 0
/*switch(sprite_shprutz){
case 0:
break;
case 0:
break;
case 0:
break;
}*/

switch(sprite_shprutz){
	case 0:
	randomize();
	var shprutz_height1 = irandom_range(0,135);
	var shprutz_height2 = irandom_range(0,135);
	var shprutz_height3 = irandom_range(0,135);
	var shprutz_height4 = irandom_range(0,135);
	var shprutz_height5 = irandom_range(0,135);
	instance_create_depth(800, 437+shprutz_height1, -300,obj_shprutz_up1);
	instance_create_depth(800, 794.5+shprutz_height1, -300,obj_shprutz_dow1);
	instance_create_depth(980, 437+shprutz_height2, -300,obj_shprutz_up1);
	instance_create_depth(980, 794.5+shprutz_height2, -300,obj_shprutz_dow1);
	instance_create_depth(1160, 437+shprutz_height3, -300,obj_shprutz_up1);
	instance_create_depth(1160, 794.5+shprutz_height3, -300,obj_shprutz_dow1);
	instance_create_depth(1340, 437+shprutz_height4, -300,obj_shprutz_up1);
	instance_create_depth(1340, 794.5+shprutz_height4, -300,obj_shprutz_dow1);
	instance_create_depth(1520, 437+shprutz_height5, -300,obj_shprutz_up1);
	instance_create_depth(1520, 794.5+shprutz_height5, -300,obj_shprutz_dow1);
	break;
}

alarm[2] = -1;