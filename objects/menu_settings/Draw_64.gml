
if(global.settings_open == 0) {exit;}

//if(!global.pauses) exit;
//esc_paus = keyboard_check_pressed(vk_escape);
	var fnt = draw_get_font()
var sz=draw_set_font(menu_main_font)
 go = true;
if (go){
//var gwidth = global.view_width, gheight = global.view_height;
var gwidth = view_widths, gheight = view_heights;
var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
var y_buffer = 65, x_buffer = 16; //Відступ (у)знизу зверху та (х) по бокам
var start_y = (gheight) - ((((ds_height-1)/2) * y_buffer)), start_x = gwidth/2;
//Малювання меню паузи
draw_sprite_ext(spr_fon_settings,0,gwidth/2.3, gheight/2,global.scale_x*2,global.scale_y*2,0,c_white,1);

var c = c_black;
/*draw_sprite_ext(spr_button_menu, 0, gwidth, gheight/3.5, 1.45, 1.45, 0, c_white, 1);
if(global.LANGUAGE == "eng") draw_sprite_ext(spr_settings_eng, 0, gwidth, gheight/3, 1.45, 1.45, 0, c_white, 1);
else draw_sprite_ext(spr_settings_ukr, 0, gwidth, gheight/2.9, 1.45, 1.45, 0, c_white, 1);*/

draw_set_valign(fa_left);
draw_set_halign(fa_left);

var ltx = start_x - x_buffer+10, lty, xo; //Розташування на екрані
var ltxx = display_get_gui_width() 
draw_set_font(Font_for_draw_mazur);
var yy = 0; repeat (ds_height){
	lty = start_y + (yy*y_buffer);
	c = c_black;
	
	xo = 0;
	
	if( yy = menu_option[page]){
		c = c_orange;
		xo = -(x_buffer/2);
	}
	if(ds_grid[# 0, yy] == "<<< Назад" or ds_grid[# 0, yy] == "<<< Back") draw_text_color(ltxx/4, lty+20, ds_grid[# 0, yy], c, c, c, c, 1);
	else draw_text_color(ltxx/4, lty, ds_grid[# 0, yy], c, c, c, c, 1);
	
	yy++;
}

//малювання елементів справа екрану
draw_set_halign(fa_left);
draw_set_valign(fa_left);
draw_set_font(Font_for_draw_mazur2)

var rtx = start_x + x_buffer, rty; //Розташування на екрані
var rtxx = display_get_gui_width() 
yy = 0; repeat(ds_height){
	rty =start_y + (yy*y_buffer);
	
	switch(ds_grid[# 1, yy]){
	case menu_element_type.shift:
		var current_val = ds_grid[# 3, yy];
		//show_debug_message(current_val);
		var current_array = ds_grid[# 4, yy];
		var left_shift = "";
		var right_shift = "";
		c= c_black;
		
		if(current_val == 0) left_shift = "";
		if(current_val == array_length_1d(ds_grid[# 4, yy])-1) right_shift = "";
		
		if(inputting and yy == menu_option[page]){ c = c_orange; }
		
			var cout = current_array[current_val];
		
		draw_text_color(rtxx/1.8, rty, cout, c,c,c,c, 1)		//draw_sprite_ext(current_array[current_val], 0, rtx + 250, rty, 1.25, 1.25, 0, 0, 1);
		break;
		
	case menu_element_type.slider:
		var len = 207;
		var current_val = ds_grid[# 3, yy];
		var current_array = ds_grid[# 4, yy];
		var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0]));
		c = c_black;
		
		if(inputting and yy == menu_option[page]){ c = c_orange; }
		//draw_line_width(rtx, rty, rtx +len, rty, 2);
		draw_sprite_ext(spr_slider_menu, 0, rtx*2.2, rty+12, 0.65, 1, 0, c, 1);
		//draw_circle_color(rtx + (circle_pos*len), rty, 4, c,c, false);
		draw_sprite_ext(spr_slider_mini_menu, 0, (rtx*2.2) + (circle_pos*len), rty+12, 1, 1, 0, c_white, 1);
		//draw_text_color(rtx + (len * 1.2), rty,string(floor(circle_pos*100)), c,c,c,c, 1);
	break;
	
	case menu_element_type.toggle:
	var current_val = ds_grid[# 3, yy];
	var c1, c2;
	c = c_white;
	if(inputting and yy == menu_option[page]){ c = c_yellow; }
	if(current_val == 0) { c1 = c; c2 = c_dkgray; }
	else				 { c1 = c_dkgray; c2 = c; }
	break;
	
	}
	yy++;
}

}

