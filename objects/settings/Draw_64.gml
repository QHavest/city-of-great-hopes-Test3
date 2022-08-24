
//if(!global.pause) exit;
esc_pau = keyboard_check_pressed(vk_escape);

if (global.pause){
var gwidth = global.view_width, gheight = global.view_height;

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
var y_buffer = 65, x_buffer = 16; //Відступ (у)знизу зверху та (х) по бокам
var start_y = (gheight/2) - ((((ds_height-1)/2) * y_buffer)), start_x = gwidth/2;
//Малювання меню паузи
draw_sprite_ext(spr_pause_menu1,0,gwidth, gheight,start_x+x_buffer+300,300,0,c_black,0.5);
draw_sprite(spr_pause_h, 0, gwidth+500, gheight+310);
draw_sprite_ext(spr_ukraine, 0, gwidth+850, gheight+310,1.2,1.2,0,c_white,1);
var c = c_black;
//draw_rectangle_color(0,0,gwidth,gheight, c,c,c,c, false);

draw_set_valign(fa_middle);
draw_set_halign(fa_right);

var ltx = start_x - x_buffer+80, lty, xo; //Розташування на екрані

var yy = 0; repeat (ds_height){
	lty = start_y + (yy*y_buffer);
	c = c_white;
	
	xo = 0;
	
	if( yy = menu_option[page]){
		c = c_orange;
		xo = -(x_buffer/2);
		//draw_sprite_ext(spr_pause_menu,0,ltx+200/*-90*/, lty+450,1.3,1.1,0,c_white,1);
	}
	draw_sprite_ext(spr_pause_menu,0,ltx+150/*-90*/, lty+450,1.3,1.1,0,c_white,1); //кнопки
	draw_text_color(ltx+xo+440, lty+450, ds_grid[# 0, yy], c, c, c, c, 1);
	yy++;
}

//малювання вертикальної лінії
//draw_line(start_x+650, start_y-y_buffer+450, start_x+650, lty+y_buffer+450); //Розташування на екрані

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
		var len = 64;
		var current_val = ds_grid[# 3, yy];
		var current_array = ds_grid[# 4, yy];
		var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0]));
		c = c_white;
		
		if(inputting and yy == menu_option[page]){ c = c_yellow; }
		draw_line_width(rtx, rty, rtx +len, rty, 2);
		draw_circle_color(rtx + (circle_pos*len), rty, 4, c,c, false);
		draw_text_color(rtx + (len * 1.2), rty,string(floor(circle_pos*100))+"%", c,c,c,c, 1);
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
		global.pause = !global.pause;
		inputting = true;
		page = 0;
		// Снова включаем все объекты
		instance_activate_all();
	}
} else{
if (esc_pau)
	{
		global.pause = !global.pause;
		inputting = false;
		//if(!global.pause) exit;
		// Снова включаем все объекты
		instance_deactivate_all(true);
	}
}