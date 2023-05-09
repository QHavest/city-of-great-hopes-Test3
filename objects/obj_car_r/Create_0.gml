audio_falloff_set_model(audio_falloff_linear_distance);
myEmitter = audio_emitter_create();
	  alarm[0] = 1;
	  
	var car_random = irandom(5);
	switch(car_random){
	case 0:
	sprite_index = spr_marder_black_001_R;
	break;
	case 1:
	sprite_index = spr_deviatka_grey_R;
	break;
	case 2:
	sprite_index = spr_deviatka_red_R;
	break;
	case 3:
	sprite_index = spr_deviatka_white_R;
	break;
	case 4:
	sprite_index = spr_volga_black_001_R;
	break;
	default :
	sprite_index = spr_deviatka_blue_R;
	break;
	}