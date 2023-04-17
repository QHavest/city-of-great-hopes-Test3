audio_falloff_set_model(audio_falloff_linear_distance);
			myEmitter = audio_emitter_create();
	  alarm[0] = 1;
	  
	var car_random = irandom(4)
	switch(car_random){
	case 0:
	sprite_index = spr_car_grey;
	break;
	case 1:
	sprite_index = spr_car_grobovoz;
	break;
	case 2:
	sprite_index = spr_car_red;
	break;
	case 3:
	sprite_index = spr_car_white;
	break;
	default :
	sprite_index = spr_car_blue;
	break;
	}