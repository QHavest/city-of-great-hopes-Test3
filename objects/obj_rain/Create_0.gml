//layer_create(-9999, "Rain");
//rain9 = part_system_create_layer("Rain", 0);
rain9 = part_system_create();
part_system_depth(rain9, 1000)//tp_rain9 = part_type_create();

em_rain = part_emitter_create(rain9);

//part_emitter_region(rain9, em_rain, 1300, 2300, -5, -10, ps_shape_rectangle, ps_distr_linear);
//part_emitter_stream(rain9, em_rain, tp_rain9, 1);

//a = part_emitter_exists(rain9, em_rain);


angle = 275;
rain = part_type_create();

		// налаштування анімації дощу
		part_type_sprite(rain, spr_rain, 0, 0, 1);
		part_type_size(rain, 0.5, 0.5, 0, 0);
		part_type_direction(rain, angle, angle, 0, 0);
		part_type_speed(rain, 5.5, 5.5, 0, 0);
		//part_type_gravity(rain, 0.5, angle)
		part_type_life(rain, 200, 200);
		part_type_orientation(rain, angle, angle, 0, 0, 1);
		part_type_alpha1(rain, 0.6);

		part_emitter_region(rain9, em_rain, 1300, 2300, -5,-5, ps_shape_rectangle, ps_distr_linear);
		part_emitter_stream(rain9, em_rain, rain, 30);
