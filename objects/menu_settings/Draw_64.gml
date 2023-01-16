
if(global.settings_open == 0) {exit;}

//if(!global.pauses) exit;
//esc_paus = keyboard_check_pressed(vk_escape);
	var fnt = draw_get_font()
var sz=draw_set_font(menu_main_font)
 go = true;
if (go){
var gwidth = global.view_width, gheight = global.view_height;

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
var y_buffer = 65, x_buffer = 16; //Відступ (у)знизу зверху та (х) по бокам
var start_y = (gheight/2) - ((((ds_height-1)/2) * y_buffer)), start_x = gwidth/2;
//Малювання меню паузи

draw_sprite_ext(spr_fon_settings,0,gwidth-1000, gheight-530,/*start_x+x_buffer*/1.7,1.7,0,c_white,1);

//draw_sprite(spr_pause_h, 0, 0, 0);
var c = c_black;
//draw_set_font(menu_main_font2);
//draw_text_color(gwidth-1160, gheight-800,"Settings", c, c, c, c, 1);
//draw_sprite_ext(spr_button_menu, 0, gwidth - 1130, gheight - 650, 1.25, 1.25, 0, 0, 1);
//draw_sprite(spr_button_menu, 0, gwidth - 960, gheight - 790)
draw_sprite_ext(spr_button_menu, 0, gwidth - 992, gheight - 830, 1.45, 1.45, 0, c_white, 1);
if(global.LANGUAGE == "eng") draw_sprite_ext(spr_settings_eng, 0, gwidth - 992, gheight - 830, 1.45, 1.45, 0, c_white, 1);
else draw_sprite_ext(spr_settings_ukr, 0, gwidth - 992, gheight - 830, 1.45, 1.45, 0, c_white, 1);
//draw_rectangle_color(0,0,gwidth,gheight, c,c,c,c, false);

draw_set_valign(fa_left);
draw_set_halign(fa_left);



var ltx = start_x - x_buffer+80, lty, xo; //Розташування на екрані


draw_set_font(Font_for_draw_mazur);
var yy = 0; repeat (ds_height){
	lty = start_y + (yy*y_buffer);
	c = c_black;
	
	xo = 0;
	
	if( yy = menu_option[page]){
		c = c_orange;
		xo = -(x_buffer/2);
		//draw_sprite_ext(spr_pause_menu,0,ltx+200/*-90*/, lty+450,1.3,1.1,0,c_white,1);
	}
	if(ds_grid[# 0, yy] == "<<< Назад" or ds_grid[# 0, yy] == "<<< Back") draw_text_color(ltx+xo-545, lty+25, ds_grid[# 0, yy], c, c, c, c, 1);
	else draw_text_color(ltx+xo-537, lty, ds_grid[# 0, yy], c, c, c, c, 1);
	
	//draw_sprite_ext(spr_pause_menu,0,ltx-200, lty,1.3,1.1,0,c_white,1); //кнопки
	//draw_sprite_ext(ds_grid[# 0, yy], 0, ltx+xo-530, lty, 1.65, 1.65, 0, c, 1);
	yy++;
}

//малювання вертикальної лінії
//draw_line(start_x+650, start_y-y_buffer+450, start_x+650, lty+y_buffer+450); //Розташування на екрані

//малювання елементів справа екрану
draw_set_halign(fa_left);
draw_set_valign(fa_left);
draw_set_font(Font_for_draw_mazur2)

var rtx = start_x + x_buffer-50, rty; //Розташування на екрані

yy = 0; repeat(ds_height){
	rty = start_y + (yy*y_buffer);
	
	switch(ds_grid[# 1, yy]){
	case menu_element_type.shift:
		var current_val = ds_grid[# 3, yy];
		var current_array = ds_grid[# 4, yy];
		var left_shift = "";
		var right_shift = "";
		c= c_black;
		
		if(current_val == 0) left_shift = "";
		if(current_val == array_length_1d(ds_grid[# 4, yy])-1) right_shift = "";
		
		if(inputting and yy == menu_option[page]){ c = c_orange; }
		draw_text_color(rtx+155, rty, current_array[current_val], c,c,c,c, 1)
		//draw_sprite_ext(current_array[current_val], 0, rtx + 250, rty, 1.25, 1.25, 0, 0, 1);
		break;
		
	case menu_element_type.slider:
		var len = 207;
		var current_val = ds_grid[# 3, yy];
		var current_array = ds_grid[# 4, yy];
		var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0]));
		c = c_black;
		
		if(inputting and yy == menu_option[page]){ c = c_orange; }
		//draw_line_width(rtx, rty, rtx +len, rty, 2);
		draw_sprite_ext(spr_slider_menu, 0, rtx+160, rty, 0.65, 1, 0, c, 1);
		//draw_circle_color(rtx + (circle_pos*len), rty, 4, c,c, false);
		draw_sprite_ext(spr_slider_mini_menu, 0, rtx+160 + (circle_pos*len), rty, 1, 1, 0, c_white, 1);
		//draw_text_color(rtx + (len * 1.2), rty,string(floor(circle_pos*100)), c,c,c,c, 1);
	break;
	
	case menu_element_type.toggle:
	var current_val = ds_grid[# 3, yy];
	var c1, c2;
	c = c_white;
	if(inputting and yy == menu_option[page]){ c = c_yellow; }
	if(current_val == 0) { c1 = c; c2 = c_dkgray; }
	else				 { c1 = c_dkgray; c2 = c; }
		//draw_text_color(rtx,rty, "On  ", c1,c1,c1,c1, 1);
		//draw_text_color(rtx + 32,rty, "  Off", c2,c2,c2,c2, 1);
		
		//draw_sprite_ext(spr_fullscreen_ukr, 0, rtx, rty, 1, 1, 0, c_yellow, 1);
		//draw_sprite_ext(spr_window_ukr, 0, rtx + 32, rty, 1, 1, 0, 0, 1);
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
/*
draw_set_valign(fa_top);
if (esc_paus)
	{
		//global.pauses =  true;
		inputting = false;
		//page = 0;
		// Снова включаем все объекты
		//instance_activate_all();
	}
} else{
if (esc_paus)
	{
		//global.pauses = !global.pauses;
		inputting = true;
		//if(!global.pause) exit;
		// Снова включаем все объекты
		//instance_deactivate_all(true);
	}*/
}// else if (room_goto(rm_main_menu)) {go=false;}

