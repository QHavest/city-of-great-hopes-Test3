#region weather

#region rain
if(raining == false and scr_rooms_variables(room, 3) == false and timer_rain == true)
{
	rain_chance = 80; // шанс дощу - 1 до 80 (кожен ігровий кадр)

	var rain_or_not = irandom_range(0, rain_chance);
	//show_debug_message("Number is" + string(rain_or_not))
	//var rain_or_not = 1;
	//if(keyboard_check_pressed(ord("X"))){rain_or_not = a/2}
	if(rain_or_not == rain_chance)
	{	
		emitter_rain = part_emitter_create(weather);
		raining = true;
		var duration = irandom_range(30, 120) // in sekonds
		//var intensivity_var = irandom_range(1,3); // інтенсивність дощу
		switch(intensivity_var)
		{
			case 1: 
			intensivity = 15;
			break;
		
			case 2: 
			intensivity = 25;
			break;
		
			case 3: 
			intensivity = 40;
			break;
		
		}
		var angle = irandom_range(260, 280) // in degrees
	
		// налаштування анімації дощу
		rain = part_type_create();

		// налаштування анімації дощу
		part_type_sprite(rain, spr_rain, 0, 0, 1);
		part_type_size(rain, 0.5, 0.5, 0, 0);
		part_type_direction(rain, angle, angle, 0, 0);
		part_type_speed(rain, 4, 4, 0, 0);
		//part_type_gravity(rain, 0.5, angle)
		part_type_life(rain, 200, 200);
		part_type_orientation(rain, angle, angle, 0, 0, 1);
		part_type_alpha1(rain, 0.6);

		// обчислення позиції
		y_start = camera_get_view_y(view_current);
		camera_width = camera_get_view_width(view_current);
		x_start = obj_dim_player1.x - camera_width/2;

		// запуск анімації
		part_emitter_region(weather, emitter_rain, x_start - 200, x_start + camera_width + 200, y_start, y_start, ps_shape_rectangle, ps_distr_linear);
		part_emitter_stream(weather, emitter_rain, rain, intensivity);
		alarm[0] = 40 * duration;
	}
}
#endregion

#region fog

if(num == percent) 
{
	alarm[3] = 1; 
	alarm[5] = time1 * 20; 
	show_debug_message("Fog is real");
	percent++;
	
}

if(fogNum > 350 and fog_or_not == true)
{
	fog_or_not = false;
	fogNum -= 70;
	alarm[4] = 60;
}

if(scr_rooms_variables(room, 3) == false)	part_system_depth(weather, -1000);
if(scr_rooms_variables(room, 3) == true)	part_system_depth(weather, 1000);

if(keyboard_check_pressed(ord("V"))){alarm[3] = 1; alarm[5] = time1 * 25;}

#endregion

#endregion
#region day_night

if(keyboard_check_pressed(ord("Z"))){time_pause = !time_pause;}
if(keyboard_check_pressed(ord("P"))){time_increment = 300;}
if(keyboard_check_pressed(ord("O"))){time_increment = 20;}
event_inherited()

if(time_pause) exit;
//збільошуємо час за секунду
seconds += time_increment;
minutes = seconds/60;
hours = minutes/60;
//darkness = hours/24;

if (draw_daylight){

	#region Фази дня
	var darks, colours, pstart, pend;
	//lighting_surface = surface_create(guiWidth, guiHeight);
	//var lay_id = layer_get_id("Instances_obj");
	//var visib = layer_get_visible(lay_id);
	
	 if (hours > phase.nighttime1 and hours <= phase.sunrise /*and visability = true*/){//Схід
		darks = [max_darkness, 1];
		colours = [merge_color(c_black,c_black, 1)];
		pstart = phase.nighttime1;
		pend = phase.sunrise;
		/*
		layer_set_visible("Background", true);
		layer_set_visible("Backgrounds_night", false);
		
		activate_obj_day();
		deactivate_obj_night();
		global.darknes = 1;
		image_index += 1;/*/
	 }
	else if (hours > phase.sunrise and hours <= phase.daytime /*and visability = true*/){//Схід
		//darks = [max_darkness, 0.2];
		darks = [0.2, 0, 0, 0, 0];
		//colours = [merge_color(c_black,c_navy, 0.3), c_orange];
		colours = [ merge_color(c_black,c_navy, 0.1)];
		pstart = phase.sunrise;
		pend = phase.daytime;

		layer_set_visible("Background", true);
		layer_set_visible("Backgrounds_night", false);
		
		global.day = 1;
		if !audio_is_playing(scr_rooms_variables(room,1)) scr_music_fon_change(room);
		
		activate_obj_day();
		deactivate_obj_night();
		global.darknes = 0;
		image_index += 1;
		
		
	}else if (hours > phase.daytime and hours <= phase.sunset /*and visability = true*/){//день
		darks = [0, 0, 0, 0, 0.2];
		//colours = [c_orange, c_orange, c_white, c_orange, c_orange];
		colours = [ merge_color(c_black,c_navy, 0.3),c_orange];
		pstart = phase.daytime;
		pend = phase.sunset;
		
	
		layer_set_visible("Background", true);
		layer_set_visible("Backgrounds_night", false);
		
		global.day = 1;
		//scr_music_fon_change(room);
		
		activate_obj_day();
		deactivate_obj_night();
		global.darknes = 0;
		
		image_index += 1;
		
	}else if (hours > phase.sunset and hours <= phase.sunset1 /*and visability = true*/){//захід
		darks = [0.2, max_darkness]; 
		colours = [c_orange, c_navy, merge_color(c_black,c_navy, 0.3)];
		pstart = phase.sunset;
		pend = phase.sunset1;
		layer_set_visible("Background", true);
		layer_set_visible("Backgrounds_night", false);
		
		global.day = 1;
		//scr_music_fon_change(room);
		
		activate_obj_day();
		deactivate_obj_night();
		global.darknes = 0;
		image_index += 1;
		
	}else if (hours > phase.sunset1 and hours <= phase.nighttime /*and visability = true*/){//захід
		darks = [max_darkness, 1];
		colours = [merge_color(c_black,c_black, 1)];
		pstart = phase.sunset1;
		pend = phase.nighttime;
		/*layer_set_visible("Background", true);
		layer_set_visible("Backgrounds_night", false);
		
		activate_obj_day();
		deactivate_obj_night();
		global.darknes = 0;
		image_index += 1;
		*/
	} else {
		//visability = true
		//obj1 = true
		darks = [max_darkness];
		colours = [merge_color(c_black,c_navy, 0)];
		pstart = phase.nighttime;
		pend = phase.nighttime2;

		layer_set_visible("Background", false);
		layer_set_visible("Backgrounds_night", true);
		
		global.day = 0;
		if !audio_is_playing(scr_rooms_variables(room,1)) scr_music_fon_change(room);

		activate_obj_night();
		deactivate_obj_day()
		global.darknes = .5
		/*surface_set_target(lighting_surface);
		draw_clear_alpha(c_black,0.1);
		with(obj_lamp_night_container){
			gpu_set_blendmode(bm_subtract)
			draw_sprite_ext(sprite_index, image_index, x,y, image_xscale, image_yscale, 0, c_white,1)
			gpu_set_blendmode(bm_normal);
		}
		surface_reset_target();
		draw_surface(lighting_surface, 0,0);*/
		
		image_index += 1;
	
	}
	/*if (!object_get_visible(obj_container) and phase.nighttime)
	{
		object_set_visible(obj_container, true)
	}*/
	#endregion
	//-------------------------------
	#region Зміна глубини темного
	//COlours
	if (pstart == phase.nighttime){ light_colour = colours[0];}
	else {
		var cc = ((hours - pstart) / (pend - pstart))*(array_length_1d(colours)-1);
		var c1 = colours[floor(cc)];
		var c2 = colours[ceil(cc)];
	
		light_colour = merge_color(c1, c2, cc-floor(cc));
	}
	//Drakness
	if (pstart == phase.nighttime){ darkness = darks[0];}
	else {
		var dd = ((hours - pstart) / (pend - pstart))*(array_length_1d(darks)-1);
		var d1 = darks[floor(dd)];
		var d2 = darks[ceil(dd)];
	
		darkness = scr_merge_number(d1,d2,dd-floor(dd));
	}
	#endregion
	
}
		
/*var text_id = layer_get_id("text_ukr")
var visability = layer_get_visible(text_id)

if visability = true{
	
	layer_set_visible("text_ukr", false)
	layer_set_visible("text_eng", true)
	image_index += 1
	
}*/
#region Перевірка циклу
if (hours >= 24){
	seconds = 0;
	day += 1;
	
	if (day > 30) {
		day = 1;
		season += 1;
		
		if (season> 4){
			season = 1;
			year += 1;
		}
	}
}
#endregion

#endregion
