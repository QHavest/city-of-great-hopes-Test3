
//if(!global.pause) exit;
esc_pau = keyboard_check_pressed(vk_escape);

if (global.pause){
//draw_sprite_ext(spr_fones_pause,0,0,0,1,1,0,c_white,1);
draw_sprite_ext(spr_fones_pause,0,0,0,1.3,1.3,0,c_white,1);
//draw_sprite(screenshot, 0, 0, 0);
var gwidth = global.res_width/2, gheight = global.res_height/2;
//var gwidth2 = camera_get_view_width(camera_get_active());
//var gheight2 = camera_get_view_height(camera_get_active());

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

var ds_grid2 = ds_menu_main, ds_height2 = ds_grid_height(ds_grid2);

var y_buffer = 65, x_buffer = 16; //Відступ (у)знизу зверху та (х) по бокам

var y_buffer_menu = 56;

var start_y = (gheight/3.9) - ((((ds_height-1)/2) * y_buffer)) + 15, start_x = gwidth/3.5;
var start_y2 = (gheight/3.9) - ((((ds_height2-1)/2) * y_buffer))


//Малювання меню паузи
/*var pause_spr = 0;
switch(global.task)
{
	case 0:
	if(global.LANGUAGE = "eng") pause_spr = spr_task1_eng;
	if(global.LANGUAGE = "ua") pause_spr = spr_s
	break;
	case 1: 
	if(global.LANGUAGE = "eng") pause_spr = spr_task1_eng;
	if(global.LANGUAGE = "ua") pause_spr = spr_task1_ukr
	break;
	case 2: 
	if(global.LANGUAGE = "eng") pause_spr = spr_task2_eng;
	if(global.LANGUAGE = "ua") pause_spr = spr_task2_ukr;
	break;
	case 3: 
	if(global.LANGUAGE = "eng") pause_spr = spr_task3_eng;
	if(global.LANGUAGE = "ua") pause_spr = spr_task3_ukr;
	break;
}*/

switch(global.LANGUAGE)
{
	case "eng":
		switch(global.task)
		{
			case 0:
				obj_task_pause.sprite_index = spr_tasks1_eng;
			break;
			case 1: 
				obj_task_pause.sprite_index = spr_tasks1_eng;
			break;
			case 2: 
				obj_task_pause.sprite_index = spr_tasks2_eng;
			break;
			case 3: 
				obj_task_pause.sprite_index = spr_tasks3_eng;
			break;
		}
	break;
	case "ua":
		switch(global.task)
		{
			case 0:
				obj_task_pause.sprite_index = spr_tasks1_ukr;
			break;
			case 1: 
				obj_task_pause.sprite_index = spr_tasks1_ukr;
			break;
			case 2: 
				obj_task_pause.sprite_index = spr_tasks2_ukr;
			break;
			case 3: 
				obj_task_pause.sprite_index = spr_tasks3_ukr;
			break;
		}
	break;
}

//draw_sprite(pause_spr, 0, global.screen_width/2, global.screen_height/2);
//draw_sprite_ext(pause_spr, 0, gwidth, gheight,global.scale_x,global.scale_y,0,c_white,1);
var c = c_black;
//draw_rectangle_color(0,0,gwidth,gheight, c,c,c,c, false);

draw_set_valign(fa_middle);
draw_set_halign(fa_middle);

var ltx = start_x - x_buffer + 37, lty; //Розташування на екрані


//draw_set_alpha(0.25);
//draw_rectangle_color(-50, -50, gwidth + 50, gheight + 50, c_black, c_black, c_black, c_black, 0);
//draw_set_alpha(1);

if(menu_pages[page] == ds_settings or menu_pages[page] == ds_savings) settings_savings = false;
else settings_savings = true;

switch(menu_pages[page])
{
	case ds_menu_main: 
	//obj_pause_settings.visible = 0;
	obj_manager_settings_pause.visible = 0;
	
	obj_saving_settings.visible = 0;
	switch(global.LANGUAGE)
		{
			case "eng":
			obj_savings.sprite_index = spr_savings_eng_d1;
			obj_settings.sprite_index = spr_settings_eng_d1;
				if (menu_option[page] == 0){
					obj_continues.sprite_index = spr_continue_eng_l;
				} else {obj_continues.sprite_index = spr_continue_eng_d; }
				if (menu_option[page] == 1){
					obj_savings.sprite_index = spr_savings_eng_d1;
					if (input_down_p){
					menu_option[page]++
					menu_option[page]++
					}
				}/*else {obj_savings.sprite_index = spr_savings_ukr_d;}*/
				if (menu_option[page] == 2){
					obj_settings.sprite_index = spr_settings_eng_d1;
					if (input_up_p){
						menu_option[page]--
						menu_option[page]--
						}
				}/*else {obj_settings.sprite_index = spr_settings_ukr_d;}*/
				if (menu_option[page] == 3){
					obj_main_menus.sprite_index = spr_main_menu_eng_l;
				}else {obj_main_menus.sprite_index = spr_main_menu_eng_d;}
				if (menu_option[page] == 4){
					obj_exits.sprite_index = spr_exit_eng_l;
				}else {obj_exits.sprite_index = spr_exit_eng_d;}
			break;
			case "ua":
			obj_savings.sprite_index = spr_savings_ukr_d1;
			obj_settings.sprite_index = spr_settings_ukr_d1;
				if (menu_option[page] == 0){
					obj_continues.sprite_index = spr_continue_ukr_l;
				} else {obj_continues.sprite_index = spr_continue_ukr_d; }
				if (menu_option[page] == 1){
					obj_savings.sprite_index = spr_savings_ukr_d1;
					if (input_down_p){
					menu_option[page]++
					menu_option[page]++
					}
					//menu_option[page]++
				}/*else {obj_savings.sprite_index = spr_savings_ukr_d;}*/
				if (menu_option[page] == 2){
					obj_settings.sprite_index = spr_settings_ukr_d1;
					if (input_up_p){
						menu_option[page]--
						menu_option[page]--
						}
					//menu_option[page]++
				}/*else {obj_settings.sprite_index = spr_settings_ukr_d;}*/
				if (menu_option[page] == 3){
					obj_main_menus.sprite_index = spr_main_menu_ukr_l;
				}else {obj_main_menus.sprite_index = spr_main_menu_ukr_d;}
				if (menu_option[page] == 4){
					obj_exits.sprite_index = spr_exit_ukr_l;
				}else {obj_exits.sprite_index = spr_exit_ukr_d;}
			break;
		}
		

	var yy = 0; repeat (ds_height){
	
		var a = ds_grid[# 0, yy];
	
		lty = start_y + (yy*y_buffer_menu);
		//xo = 0;
		
		if( yy = menu_option[page]){
			//xo = -(x_buffer/2);
			a = scr_buttons(ds_grid[# 0, yy], 1);
			//a = ds_grid[# 0, yy];
			//c = c_black;
		}
		draw_sprite_ext(a,0,455/*-90*/, lty+279,global.scale_x,global.scale_y,0,c_white,1); //кнопки
		//draw_text_color(ltx+242, lty+319, a, c,c,c,c,1);
		
		yy++;
		
	}
	
	break;
	case ds_settings:
		if (menu_option[page] == 0){//загальне аудіо
			obj_audio2_head_settings.sprite_index = spr_audio2_l_new;
		} else {obj_audio2_head_settings.sprite_index = spr_audio2_ukr_d; }
		if (menu_option[page] == 1){
			obj_sounds_head_settings.sprite_index = spr_audio2_l_new;
		} else {obj_sounds_head_settings.sprite_index = spr_sounds_ukr_d; }
		if (menu_option[page] == 2){
			obj_music_head_settings.sprite_index = spr_audio2_l_new;
		} else {obj_music_head_settings.sprite_index = spr_music_ukr_d; }
		
		if (menu_option[page] == 3){//розширення екрану
			obj_music_head_settings.sprite_index = spr_audio2_l_new;
		} else {obj_music_head_settings.sprite_index = spr_music_ukr_d; }
		if (menu_option[page] == 4){
			obj_music_head_settings.sprite_index = spr_audio2_l_new;
		} else {obj_music_head_settings.sprite_index = spr_music_ukr_d; }
		if (menu_option[page] == 5){
			obj_music_head_settings.sprite_index = spr_audio2_l_new;
		} else {obj_music_head_settings.sprite_index = spr_music_ukr_d; }
	gg = sprite_get_xoffset(pause_spr)
	obj_manager_settings_pause.visible = 1;
	//obj_pause_settings.visible = 1;
	//show_debug_message(start_y);
	if(global.LANGUAGE == "ua")
	{
		draw_sprite_ext(spr_bg_settings, 0, gg+150, 55+345,global.scale_x,global.scale_y, 0, c_white, 1); // bg settings
		draw_sprite_ext(spr_audio_ukr, 0, ltx+910, 55+390-18, global.scale_x,global.scale_y, 0, c_white, 1); // напис "Аудіо"
		draw_sprite_ext(spr_graphics_ukr, 0, ltx+910, 55+650-18, global.scale_x,global.scale_y, 0, c_white, 1); // напис "Графіка"
		draw_sprite_ext(spr_rezolution_ukr, 0, ltx+910, 55+680-18,global.scale_x,global.scale_y, 0, c_white, 1); // напис "Розширення екрану"
		draw_sprite_ext(spr_screen_ukr, 0, ltx+910, 55+775-18, global.scale_x,global.scale_y, 0, c_white, 1); // напис "Режим екрану"
	}
	if(global.LANGUAGE == "eng")
	{
		draw_sprite_ext(spr_bg_settings, 0, ltx+715, 55+345, 1, 1, 0, c_white, 1); // bg settings
		draw_sprite_ext(spr_audio_eng, 0, ltx+910, 55+390-18, 1, 1, 0, c_white, 1); // напис "Аудіо"
		draw_sprite_ext(spr_graphics_eng, 0, ltx+910, 55+650-18, 1, 1, 0, c_white, 1); // напис "Графіка"
		draw_sprite_ext(spr_rezolution_eng, 0, ltx+910, 55+680-18, 1, 1, 0, c_white, 1); // напис "Розширення екрану"
		draw_sprite_ext(spr_screen_eng2, 0, ltx+910, 55+775-18, 1, 1, 0, c_white, 1); // напис "Режим екрану"
	}
	var yy = 0; repeat (ds_height){
		c = make_color_rgb(68, 68, 46);
		var a = ds_grid[# 0, yy];
	
		lty = start_y + (yy*y_buffer)
		var xP = 0, yP = 0;
		//if(ds_grid[# 0, yy] == spr_rez1_l or ds_grid[# 0, yy] == spr_rez1_d) 
		//if(ds_grid[# 0, yy] == "1280х1024") 
		if(yy = 3)
		{
			xP = 1070; yP = 763; // координати
			//make_color_rgb(145, 48, 61);
			if(rez_act == 1) 
			{
				//ds_grid[# 0, yy] = spr_rez1_d;
				//ds_grid[# 0, yy+1] = spr_rez2_l;
				//ds_grid[# 0, yy+2] = spr_rez3_l;
					obj_res1_settings_l.sprite_index = spr_rez1_d;

				c = make_color_rgb(36, 34, 17);
			}else {obj_res1_settings_l.sprite_index = spr_rez1_l2; }
		}
		
		//if(ds_grid[# 0, yy] == "1680х1050")
		if(yy == 4)
		{
			xP = 1070; yP = 788; // координати
			if(rez_act == 2) 
			{
				c = make_color_rgb(36, 34, 17);
				//ds_grid[# 0, yy] = spr_rez2_d;
				//ds_grid[# 0, yy-1] = spr_rez1_l;
				//ds_grid[# 0, yy+1] = spr_rez3_l;
			}
		}
		
		//if(ds_grid[# 0, yy] == "1920х1080")
		if(yy == 5)
		{
			xP = 1265; yP = 763; // координати
			//c = make_color_rgb(145, 48, 61);
			if(rez_act == 3) 
			{
				c = make_color_rgb(36, 34, 17);
				//ds_grid[# 0, yy] = spr_rez3_d;
				//ds_grid[# 0, yy-1] = spr_rez2_l;
				//ds_grid[# 0, yy-2] = spr_rez1_l;
			}
		}
		
		//if(global.LANGUAGE == "ua")
		//{
		//	//if(ds_grid[# 0, yy] == spr_fullscreen_ukr_l or ds_grid[# 0, yy] == spr_fullscreen_ukr_d)
		//	if(ds_grid[# 0, yy] == "Повноекранний режим")
		//	{
		//		xP = 955; yP = 845; // координати
		//		if(fullscreen == true) 
		//		{
		//			ds_grid[# 0, yy] = spr_fullscreen_ukr_d;
		//			ds_grid[# 0, yy+1] = spr_windowmode_ukr_l;
		//		}
			
		//	}
		
		//	//if(ds_grid[# 0, yy] == spr_windowmode_ukr_l or ds_grid[# 0, yy] == spr_windowmode_ukr_d)
		//	if(ds_grid[# 0, yy] == "Віконний режим")
		//	{
		//		xP = 955; yP = 865; // координати
		//		if(fullscreen == false) 
		//		{
		//			ds_grid[# 0, yy] = spr_windowmode_ukr_d;
		//			ds_grid[# 0, yy-1] = spr_fullscreen_ukr_l;
		//		}
		//	}
		
		//	if(ds_grid[# 0, yy] != spr_rez1_l and ds_grid[# 0, yy] != spr_rez1_d and ds_grid[# 0, yy] != spr_rez2_l and ds_grid[# 0, yy] != spr_rez2_d
		//	   and ds_grid[# 0, yy] != spr_rez3_l and ds_grid[# 0, yy] != spr_rez3_d and ds_grid[# 0, yy] != spr_fullscreen_ukr_l and ds_grid[# 0, yy] != spr_fullscreen_ukr_d
		//	   and ds_grid[# 0, yy] != spr_windowmode_ukr_l and ds_grid[# 0, yy] != spr_windowmode_ukr_d)
		//	{
		//		xP = ltx + 908; yP = lty + 590; // 430
		//	}
		//}
		
		//if(global.LANGUAGE == "eng")
		//{
			//if(ds_grid[# 0, yy] == spr_fullscreen_eng_l or ds_grid[# 0, yy] == spr_fullscreen_eng_d)
			//if(ds_grid[# 0, yy] == "Fullscreen")
			if(yy == 6)
			{
				xP = 1080; yP = 845; // координати
				if(fullscreen == true) 
				{
					//ds_grid[# 0, yy] = spr_fullscreen_eng_d;
					//ds_grid[# 0, yy+1] = spr_windowmode_eng_l;
					c = make_color_rgb(36, 34, 17);
				}
				
				if(global.LANGUAGE == "ua")
				{
					xP = 1164; yP = 845;
				}
			
			}
		
			//if(ds_grid[# 0, yy] == spr_windowmode_eng_l or ds_grid[# 0, yy] == spr_windowmode_eng_d)
			//if(ds_grid[# 0, yy] == "In window")
			if(yy == 7)
			{
				xP = 1070; yP = 870; // координати
				if(fullscreen == false) 
				{
					//ds_grid[# 0, yy] = spr_windowmode_eng_d;
					//ds_grid[# 0, yy-1] = spr_fullscreen_eng_l;
					c = make_color_rgb(36, 34, 17);
				}

				if(global.LANGUAGE == "ua")
				{
					xP = 1120; yP = 870;
				}
				
			}
		
			//if(ds_grid[# 0, yy] != spr_rez1_l and ds_grid[# 0, yy] != spr_rez1_d and ds_grid[# 0, yy] != spr_rez2_l and ds_grid[# 0, yy] != spr_rez2_d
			//   and ds_grid[# 0, yy] != spr_rez3_l and ds_grid[# 0, yy] != spr_rez3_d and ds_grid[# 0, yy] != spr_fullscreen_eng_l and ds_grid[# 0, yy] != spr_fullscreen_eng_d
			//   and ds_grid[# 0, yy] != spr_windowmode_eng_l and ds_grid[# 0, yy] != spr_windowmode_eng_d)
			if(yy != 3 and yy != 4 and yy != 5 and yy != 6 and yy != 7)
			{
				xP = ltx + 912; yP = lty + 560; // 430
			}
		//}
		
		draw_set_font(Font_for_draw_mazur3);
		if( yy = menu_option[page]){
			//a = scr_buttons(ds_grid[# 0, yy], 2);
			//a = ds_grid[# 0, yy]
			//c = c_black;
			//show_debug_message(ds_grid[# 0, yy]);
			
			var b = scr_buttons(ds_grid[# 0, yy], 2);
			draw_sprite_ext(b,0,xP,yP-18,1,1,0,c_white,1);
		}
		//draw_sprite_ext(a,0,xP,yP,1,1,0,c_white,1); //кнопки settings
		//draw_text_color(xP, yP, a, c, c, c, c, 1);

		draw_text_ext_transformed_color(xP, yP-18, a, 0, 5000, 0.13, 0.13, 0, c, c, c, c, 1);
		yy++;
	}
	
	break;
	
	case ds_savings:
	obj_saving_settings.visible = 1;
	draw_sprite_ext(spr_bg_savings, 0, ltx+715, 55+355, 1, 1, 0, c_white, 1); // bg savings
	
	draw_set_font(Font_for_draw_mazur2);

	
	with(obj_loading)
	{
		var saveHour2 = saveHour;
		var saveMin2 = saveMin;
		var saveDay2 = saveDay;
		var saveMonth2 = saveMonth;
	}
	
	
	if (saveMonth2 != 0)
	{
		c = make_color_rgb(98, 98, 77);
		draw_text_color(ltx+805, 55+380, "AutoS", c, c, c, c, 1);
		draw_text_color(ltx+1060, 55+380, string(saveHour2) + ":" + string(saveMin2), c, c, c, c, 1);
		draw_text_color(ltx+935, 55+380, string(saveDay2) + "." + string(saveMonth2), c, c, c, c, 1);
	}
	
	break;
}

if(menu_pages[page] == ds_savings)
{
		var yy2 = 0; repeat (ds_height2){
		lty = start_y2 + (yy2*y_buffer_menu);
		if(yy2 == 1) {a = scr_buttons(ds_grid2[# 0, yy2], 1);}
		else {a = ds_grid2[# 0, yy2];}
		draw_sprite_ext(a,0,ltx+242,lty+294,1,1,0,c_white,1); //кнопки menu
		yy2++;

	}
}

if(menu_pages[page] == ds_settings)
{
		var yy2 = 0; repeat (ds_height2){
		lty = start_y2 + (yy2*y_buffer_menu);
		if(yy2 == 2) {a = scr_buttons(ds_grid2[# 0, yy2], 1);}
		else {a = ds_grid2[# 0, yy2];}
		draw_sprite_ext(a,0,ltx+242,lty+294,1,1,0,c_white,1); //кнопки menu
		yy2++;

	}
}

//малювання елементів справа екрану
draw_set_halign(fa_left);

var rtx = start_x + x_buffer+550, rty; //Розташування на екрані

yy = 0; repeat(ds_height){
	rty = start_y + (yy*y_buffer+450);
	
	switch(ds_grid[# 1, yy]){
	case menu_element_type.shift:
		var current_val = ds_grid[# 3, yy];
		var current_array = ds_grid[# 4, yy];
		var left_shift = "<< ";
		var right_shift = ">> ";
		c= c_white;
		
		if(current_val == 0) left_shift = "";
		if(current_val == array_length_1d(ds_grid[# 4, yy])-1) right_shift = "";
		
		if(inputting and yy == menu_option[page]){ c = c_yellow; }
		draw_text_color(rtx, rty, left_shift+current_array[current_val]+right_shift, c,c,c,c, 1)
		break;
		
	case menu_element_type.slider:
		var len = 320; 
		var current_val = ds_grid[# 3, yy];
		var current_array = ds_grid[# 4, yy];
		var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0]));
		c = c_white;
		
		if(inputting and yy == menu_option[page]){ c = c_yellow; }
		//draw_line_width(rtx, rty, rtx +len, rty, 2);
		//draw_circle_color(rtx + (circle_pos*len), rty, 4, c,c, false);
		draw_sprite_ext(spr_slider1, 0, rtx + 203, rty + 143-18, 1, 1, 0, c_white, 1);
		draw_sprite_ext(spr_slider_mini, 0, rtx + 203 + (circle_pos*len), rty + 143-18, 1, 1, 0, c_white, 1);
		
		//draw_text_color(rtx + (len * 1.2), rty,string(floor(circle_pos*100))+"%", c,c,c,c, 1);
	break;
	
	case menu_element_type.toggle:
	var current_val = ds_grid[# 3, yy];
	var c1, c2;
	c = c_white;
	if(inputting and yy == menu_option[page]){ c = c_yellow; }
	if(current_val == 0) { c1 = c; c2 = c_dkgray; }
	else				 { c1 = c_dkgray; c2 = c; }
		draw_text_color(rtx,rty, "On ", c1,c1,c1,c1, 1);
		draw_text_color(rtx + 32,rty, " Off", c2,c2,c2,c2, 1);
	break;
	
	/*case menu_element_type.input:
		var current_val = ds_grid[# 3, yy];
		var string_val;
		
		switch(current_val){
			case vk_up: string_val = "UP KEY"; break;
		}
	break;*/
	}
	yy++;
}

draw_set_valign(fa_top);
/*if (esc_pau)
	{
		if(settings_savings == true)
		{
			global.pause = !global.pause;
			inputting = true;
			page = 0;
			menu_option[0] = 0;
			menu_option[1] = 0;
			// Снова включаем все объекты
			layer_sequence_destroy(sequence_id);
			layer_destroy(layerName);
			instance_activate_all();
			part_system_depth(daycycle.weather, -1000);
		}
		else page = menu_page.main;
		
	}*/
} 
else{
if (esc_pau) and !global.map and !global.shop and room != rm_end and global.dialog_end
	{
		part_system_depth(daycycle.weather, 1000);
		global.pause = !global.pause;
		inputting = false;
		
		//screenshot = sprite_create_from_surface(application_surface,0,0,global.res_width,global.res_height,0,0,0,0);
		//draw_clear_alpha(c_black, 0);
		instance_deactivate_all(true);
		layer_create(-9995, "Transition_locs");
			layerName = "Transition_locs";
			var seqnames = noone;
				seqnames = Sequence26;
			sequence_id = layer_sequence_create(layerName,display_get_gui_width()/2, display_get_gui_height()/2, seqnames);
			layer_sequence_pause(sequence_id);
		instance_activate_object(obj_loading);
		//instance_activate_object(obj_room_manager);
		//instance_activate_object(daycycle);
		//instance_activate_object(obj_inventory);
		instance_activate_object(music_room);
		//instance_activate_object(obj_Battle_Interface);
		//instance_activate_object(obj_manager_bus);
		instance_activate_object(obj_mozg_ai);
	}
}

//ds_grid[# 3, 2] = global.Fon_sound_gain;
//ds_grid[# 3, 1] = global.System_gain;
rez_act = global.rezolution+1;

