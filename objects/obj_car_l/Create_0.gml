depth = -230;
audio_falloff_set_model(audio_falloff_linear_distance);
myEmitter = audio_emitter_create();
	  alarm[0] = 1;
	  
	var car_random = irandom(5);
	switch(car_random){
	case 0:
	sprite_index = spr_marder_black_001_L;;
	break;
	case 1:
	sprite_index = spr_deviatka_grey_L;
	break;
	case 2:
	sprite_index = spr_deviatka_red_L;
	break;
	case 3:
	sprite_index = spr_deviatka_white_L;
	break;
	case 4:
	sprite_index = spr_volga_black_001_L;
	break;
	default :
	sprite_index = spr_deviatka_blue_L;
	break;
	}