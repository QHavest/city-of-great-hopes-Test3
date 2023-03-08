randomize();
var shprutz = irandom_range(0,2);
var shprutz_height = irandom_range(0,135);
//var x_start = 1480;
var x_start = 1700;
switch(shprutz){
	case 0:
	instance_create_depth(x_start, 437+shprutz_height, -300,obj_shprutz_up1);
	instance_create_depth(x_start, 794.5+shprutz_height, -300,obj_shprutz_dow1);
	break;
	case 1:
	instance_create_depth(x_start, 437+shprutz_height, -300,obj_shprutz_up1).sprite_index = spr_shprutz_up2;
	instance_create_depth(x_start, 794.5+shprutz_height, -300,obj_shprutz_dow1).sprite_index = spr_shprutz_dow2;
	break;
	case 2:
	instance_create_depth(x_start, 437+shprutz_height, -300,obj_shprutz_up1).sprite_index = spr_shprutz_mega_up1;
	instance_create_depth(x_start, 794.5+shprutz_height, -300,obj_shprutz_dow1).sprite_index = spr_shprutz_mega_dow1;
	break;
}
moves_shprutz = true;
alarm[0] = 30;

