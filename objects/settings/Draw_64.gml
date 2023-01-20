
//if(!global.pause) exit;
esc_pau = keyboard_check_pressed(vk_escape);

if (global.pause){
var gwidth = global.view_width, gheight = global.view_height;

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

var ds_grid2 = ds_menu_main, ds_height2 = ds_grid_height(ds_grid2);

var y_buffer = 65, x_buffer = 16; //Відступ (у)знизу зверху та (х) по бокам

var y_buffer_menu = 56;

var start_y = (gheight/2) - ((((ds_height-1)/2) * y_buffer)), start_x = gwidth/2;
var start_y2 = (gheight/2) - ((((ds_height2-1)/2) * y_buffer))
//Малювання меню паузи
//draw_sprite_ext(spr_pause_menu1,0,gwidth, gheight,start_x+x_buffer+300,300,0,c_black,0.5);
draw_sprite(spr_pause_h, 0, gwidth+500, gheight+310);
//draw_sprite_ext(spr_ukraine, 0, gwidth+850, gheight+310,1.2,1.2,0,c_white,1);
var c = c_black;
//draw_rectangle_color(0,0,gwidth,gheight, c,c,c,c, false);

draw_set_valign(fa_middle);
draw_set_halign(fa_right);

var ltx = start_x - x_buffer+30, lty; //Розташування на екрані



//draw_set_alpha(0.25);
//draw_rectangle_color(-50, -50, gwidth + 50, gheight + 50, c_black, c_black, c_black, c_black, 0);
//draw_set_alpha(1);

if(menu_pages[page] == ds_settings or menu_pages[page] == ds_savings) settings_savings = false;
else settings_savings = true;

switch(menu_pages[page])
{
	case ds_menu_main: 
	
	var yy = 0; repeat (ds_height){
	
		var a = ds_grid[# 0, yy];
	
		lty = start_y + (yy*y_buffer_menu);
		//xo = 0;
		
		if( yy = menu_option[page]){
			//xo = -(x_buffer/2);
			a = scr_buttons(ds_grid[# 0, yy]);
			//c = c_black;
		}
		draw_sprite_ext(a,0,ltx+242/*-90*/, lty+319,1,1,0,c_white,1); //кнопки
		//draw_text_color(ltx+242, lty+319, a, c,c,c,c,1);
		yy++;
		
	}
	
	break;
	
	case ds_settings:
	//show_debug_message(start_y);
	if(global.LANGUAGE == "ua")
	{
		draw_sprite_ext(spr_bg_settings, 0, ltx+715, 55+355, 1, 1, 0, c_white, 1); // bg settings
		draw_sprite_ext(spr_audio_ukr, 0, ltx+910, 55+390, 1, 1, 0, c_white, 1); // напис "Аудіо"
		draw_sprite_ext(spr_graphics_ukr, 0, ltx+910, 55+650, 1, 1, 0, c_white, 1); // напис "Графіка"
		draw_sprite_ext(spr_rezolution_ukr, 0, ltx+910, 55+680, 1, 1, 0, c_white, 1); // напис "Розширення екрану"
		draw_sprite_ext(spr_screen_ukr, 0, ltx+910, 55+775, 1, 1, 0, c_white, 1); // напис "Режим екрану"
	}
	if(global.LANGUAGE == "eng")
	{
		draw_sprite_ext(spr_bg_settings, 0, ltx+715, 55+355, 1, 1, 0, c_white, 1); // bg settings
		draw_sprite_ext(spr_audio_eng, 0, ltx+910, 55+390, 1, 1, 0, c_white, 1); // напис "Аудіо"
		draw_sprite_ext(spr_graphics_eng, 0, ltx+910, 55+650, 1, 1, 0, c_white, 1); // напис "Графіка"
		draw_sprite_ext(spr_rezolution_eng, 0, ltx+910, 55+680, 1, 1, 0, c_white, 1); // напис "Розширення екрану"
		draw_sprite_ext(spr_screen_eng2, 0, ltx+910, 55+775, 1, 1, 0, c_white, 1); // напис "Режим екрану"
	}
	var yy = 0; repeat (ds_height){
	
		var a = ds_grid[# 0, yy];
	
		lty = start_y + (yy*y_buffer)
		var xP = 0, yP = 0;
		
		if(ds_grid[# 0, yy] == spr_rez1_l or ds_grid[# 0, yy] == spr_rez1_d) 
		{
			xP = 955; yP = 763; // координати
			if(rez_act == 1) 
			{
				ds_grid[# 0, yy] = spr_rez1_d;
				ds_grid[# 0, yy+1] = spr_rez2_l;
				ds_grid[# 0, yy+2] = spr_rez3_l;
				
			}
		}
		
		if(ds_grid[# 0, yy] == spr_rez2_l or ds_grid[# 0, yy] == spr_rez2_d)
		{
			xP = 955; yP = 788; // координати
			if(rez_act == 2) 
			{
				ds_grid[# 0, yy] = spr_rez2_d;
				ds_grid[# 0, yy-1] = spr_rez1_l;
				ds_grid[# 0, yy+1] = spr_rez3_l;
			}
		}
		
		if(ds_grid[# 0, yy] == spr_rez3_l or ds_grid[# 0, yy] == spr_rez3_d)
		{
			xP = 1150; yP = 763; // координати
			if(rez_act == 3) 
			{
				ds_grid[# 0, yy] = spr_rez3_d;
				ds_grid[# 0, yy-1] = spr_rez2_l;
				ds_grid[# 0, yy-2] = spr_rez1_l;
			}
		}
		
		
		
		if(global.LANGUAGE == "ua")
		{
			if(ds_grid[# 0, yy] == spr_fullscreen_ukr_l or ds_grid[# 0, yy] == spr_fullscreen_ukr_d)
			{
				xP = 955; yP = 845; // координати
				if(fullscreen == true) 
				{
					ds_grid[# 0, yy] = spr_fullscreen_ukr_d;
					ds_grid[# 0, yy+1] = spr_windowmode_ukr_l;
				}
			
			}
		
			if(ds_grid[# 0, yy] == spr_windowmode_ukr_l or ds_grid[# 0, yy] == spr_windowmode_ukr_d)
			{
				xP = 955; yP = 865; // координати
				if(fullscreen == false) 
				{
					ds_grid[# 0, yy] = spr_windowmode_ukr_d;
					ds_grid[# 0, yy-1] = spr_fullscreen_ukr_l;
				}
			}
		
			if(ds_grid[# 0, yy] != spr_rez1_l and ds_grid[# 0, yy] != spr_rez1_d and ds_grid[# 0, yy] != spr_rez2_l and ds_grid[# 0, yy] != spr_rez2_d
			   and ds_grid[# 0, yy] != spr_rez3_l and ds_grid[# 0, yy] != spr_rez3_d and ds_grid[# 0, yy] != spr_fullscreen_ukr_l and ds_grid[# 0, yy] != spr_fullscreen_ukr_d
			   and ds_grid[# 0, yy] != spr_windowmode_ukr_l and ds_grid[# 0, yy] != spr_windowmode_ukr_d)
			{
				xP = ltx + 908; yP = lty + 590; // 430
			}
		}
		
		if(global.LANGUAGE == "eng")
		{
			if(ds_grid[# 0, yy] == spr_fullscreen_eng_l or ds_grid[# 0, yy] == spr_fullscreen_eng_d)
			{
				xP = 955; yP = 845; // координати
				if(fullscreen == true) 
				{
					ds_grid[# 0, yy] = spr_fullscreen_eng_d;
					ds_grid[# 0, yy+1] = spr_windowmode_eng_l;
				}
			
			}
		
			if(ds_grid[# 0, yy] == spr_windowmode_eng_l or ds_grid[# 0, yy] == spr_windowmode_eng_d)
			{
				xP = 955; yP = 865; // координати
				if(fullscreen == false) 
				{
					ds_grid[# 0, yy] = spr_windowmode_eng_d;
					ds_grid[# 0, yy-1] = spr_fullscreen_eng_l;
				}
			}
		
			if(ds_grid[# 0, yy] != spr_rez1_l and ds_grid[# 0, yy] != spr_rez1_d and ds_grid[# 0, yy] != spr_rez2_l and ds_grid[# 0, yy] != spr_rez2_d
			   and ds_grid[# 0, yy] != spr_rez3_l and ds_grid[# 0, yy] != spr_rez3_d and ds_grid[# 0, yy] != spr_fullscreen_eng_l and ds_grid[# 0, yy] != spr_fullscreen_eng_d
			   and ds_grid[# 0, yy] != spr_windowmode_eng_l and ds_grid[# 0, yy] != spr_windowmode_eng_d)
			{
				xP = ltx + 908; yP = lty + 590; // 430
			}
		}
		
		
		
		
		if( yy = menu_option[page]){
			a = scr_buttons(ds_grid[# 0, yy]);
		}
		//show_debug_message(string(xP) + " /// " + string(yP));
		draw_sprite_ext(a,0,xP,yP,1,1,0,c_white,1); //кнопки settings
		
		
		yy++;
	}
	
	break;
	
	case ds_savings:
	
	draw_sprite_ext(spr_bg_savings, 0, ltx+715, 55+355, 1, 1, 0, c_white, 1); // bg savings
	
	break;
}

if(menu_pages[page] == ds_settings or menu_pages[page] == ds_savings)
{
		var yy2 = 0; repeat (ds_height2){
		lty = start_y2 + (yy2*y_buffer_menu);
		if(yy2 == 2) {a = scr_buttons(ds_grid2[# 0, yy2]);}
		else {a = ds_grid2[# 0, yy2];}
		draw_sprite_ext(a,0,ltx+242,lty+319,1,1,0,c_white,1); //кнопки menu
		yy2++;
		
		//draw_sprite_ext(a,0,ltx+242,lty+319,1,1,0,c_white,1); //кнопки
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
		draw_sprite_ext(spr_slider1, 0, rtx + 195, rty + 170, 1, 1, 0, c_white, 1);
		draw_sprite_ext(spr_slider_mini, 0, rtx + 195 + (circle_pos*len), rty + 170, 1, 1, 0, c_white, 1);
		
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
if (esc_pau)
	{
		if(settings_savings == true)
		{
			global.pause = !global.pause;
			inputting = true;
			page = 0;
			// Снова включаем все объекты
			instance_activate_all();
		}
		else page = menu_page.main;
		
	}
} 
else{
if (esc_pau) and !global.map and !global.shop
	{
		global.pause = !global.pause;
		inputting = false;
		//if(!global.pause) exit;
		instance_deactivate_all(true);
		instance_activate_object(music_room);
	}
}

//ds_grid[# 3, 2] = global.Fon_sound_gain;
//ds_grid[# 3, 1] = global.System_gain;
rez_act = global.rezolution+1;

