if(global.settings_open == 1) {exit;}
switch (global.settings_open)
{
	case 1:
		//if(!global.pauses) exit;
		//esc_paus = keyboard_check_pressed(vk_escape);
			var fnt = draw_get_font()
		var sz=draw_set_font(menu_main_font)
		 go = true;
		if (go){
		var gwidth = global.view_width, gheight = global.view_height;

		var ds_grid = menu_pagess[pages], ds_height = ds_grid_height(ds_grid);
		var y_buffer = 65, x_buffer = 16; //Відступ (у)знизу зверху та (х) по бокам
		var start_y = (gheight/2) - ((((ds_height-1)/2) * y_buffer)), start_x = gwidth/2;
		//Малювання меню паузи
		draw_sprite_ext(spr_fon_settings,0,gwidth/2.3, gheight-530,/*start_x+x_buffer*/1.7,1.7,0,c_white,1);

		var c = c_black;
		draw_sprite_ext(spr_button_menu, 0, gwidth/2.3, gheight - 830, 1.45, 1.45, 0, c_white, 1);
		if(global.LANGUAGE == "eng") draw_sprite_ext(spr_settings_eng, 0, gwidth/2.3, gheight - 830, 1.45, 1.45, 0, c_white, 1);
		else draw_sprite_ext(spr_settings_ukr, 0, gwidth/2.3, gheight - 830, 1.45, 1.45, 0, c_white, 1);

		draw_set_valign(fa_left);
		draw_set_halign(fa_left);

		var ltx = start_x - x_buffer+10, lty, xo; //Розташування на екрані

		draw_set_font(Font_for_draw_mazur);
		var yy = 0; repeat (ds_height){
			lty = start_y + (yy*y_buffer);
			c = c_black;
	
			xo = 0;
	
			if( yy = menu_options[pages]){
				c = c_orange;
				xo = -(x_buffer/2);
			}
			if(ds_grid[# 0, yy] == "<<< Назад" or ds_grid[# 0, yy] == "<<< Back") draw_text_color(ltx+xo-505, lty+25, ds_grid[# 0, yy], c, c, c, c, 1);
			else draw_text_color(ltx+xo-497, lty, ds_grid[# 0, yy], c, c, c, c, 1);
	
			yy++;
		}

		//малювання елементів справа екрану
		draw_set_halign(fa_left);
		draw_set_valign(fa_left);
		draw_set_font(Font_for_draw_mazur2)

		var rtx = start_x + x_buffer-205, rty; //Розташування на екрані

		yy = 0; repeat(ds_height){
			rty = start_y + (yy*y_buffer);
	
			switch(ds_grid[# 1, yy]){
			case menu_element_typess.shift:
				var current_val = ds_grid[# 3, yy];
				//show_debug_message(current_val);
				var current_array = ds_grid[# 4, yy];
				var left_shift = "";
				var right_shift = "";
				c= c_black;
		
				if(current_val == 0) left_shift = "";
				if(current_val == array_length_1d(ds_grid[# 4, yy])-1) right_shift = "";
		
				if(inputtings and yy == menu_options[pages]){ c = c_orange; }
		
					var cout = current_array[current_val];
		
				draw_text_color(rtx+195, rty, cout, c,c,c,c, 1)		//draw_sprite_ext(current_array[current_val], 0, rtx + 250, rty, 1.25, 1.25, 0, 0, 1);
				break;
		
			case menu_element_typess.slider:
				var len = 207;
				var current_val = ds_grid[# 3, yy];
				var current_array = ds_grid[# 4, yy];
				var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0]));
				c = c_black;
		
				if(inputtings and yy == menu_options[pages]){ c = c_orange; }
				//draw_line_width(rtx, rty, rtx +len, rty, 2);
				draw_sprite_ext(spr_slider_menu, 0, rtx+200, rty, 0.65, 1, 0, c, 1);
				//draw_circle_color(rtx + (circle_pos*len), rty, 4, c,c, false);
				draw_sprite_ext(spr_slider_mini_menu, 0, rtx+200 + (circle_pos*len), rty, 1, 1, 0, c_white, 1);
				//draw_text_color(rtx + (len * 1.2), rty,string(floor(circle_pos*100)), c,c,c,c, 1);
			break;
	
			case menu_element_typess.toggle:
			var current_val = ds_grid[# 3, yy];
			var c1, c2;
			c = c_white;
			if(inputtings and yy == menu_options[pages]){ c = c_yellow; }
			if(current_val == 0) { c1 = c; c2 = c_dkgray; }
			else				 { c1 = c_dkgray; c2 = c; }
			break;
	
			}
			yy++;
		}

		}
	break;
	
	case 0:
		//if(!global.pause) exit;
		//esc_pau = keyboard_check_pressed(vk_escape);
		var fnt = draw_get_font()
		var sz=draw_set_font(main_menu_font)
		menu = true;
		if (menu){
		var gwidth = view_widths, gheight = view_heights;

		var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
		var y_buffer = 100, x_buffer = 0; //Відступ (у)знизу зверху та (х) по бокам  = 16
		var start_y = (display_get_gui_height()/1.7) - ((((ds_height-1)/2) * y_buffer)), start_x = gwidth/1.6;
		//Малювання меню паузи
		//draw_sprite_ext(spr_pause_menu1,0,gwidth, gheight,start_x+x_buffer,300,0,c_black,0.5);
		var c = c_black;
		//draw_rectangle_color(0,0,gwidth,gheight, c,c,c,c, false);

		draw_set_valign(fa_middle);
		draw_set_halign(fa_middle);
		var scale_x = 2;
		var scale_y = 2;
		var ltyp = 0;
		var y_buffer2 = 0;
		var ltyp2 = 45;
		if (global.res_width >= 1680 and global.res_height >= 1050)
		{
			scale_x = 2.3; //на скільки збільшуємо розмір кнопок, в залежності від збільшення інтерфейсу
			scale_y = 2.3; //на скільки збільшуємо розмір кнопок, в залежності від збільшення інтерфейсу
			ltyp = 50; //на скільки піднімаємо кнопки вгору, в залежності від збільшення інтерфейсу
			y_buffer2 = 13; //на скільки робимо відстань між кнопками, в залежності від збільшення інтерфейсу
			ltyp2 = 0;//на скільки піднімаємо текст вгору, в залежності від збільшення інтерфейсу
		}

		var ltx = start_x - x_buffer/*-50*/, lty, xo; //Розташування на екрані || +80 це наскільки відступ вправо має бути
		var ltxx = display_get_gui_width() 
		var yy = 0; repeat (ds_height){
			lty = start_y + (yy*(y_buffer+y_buffer2));
			c = c_black;
			xo = 0;
			draw_sprite_ext(spr_pause_menu_upd,0,ltxx/2, lty-ltyp,scale_x,scale_y,0,c_white,1); //кнопки
			if( yy = menu_option[page]){
				c = c_black;//c_orange;
				draw_sprite_ext(spr_pause_menu_upd2,0,ltxx/2, lty-ltyp,scale_x,scale_y,0,c_white,1);
				xo = -(x_buffer/2);
			}
			var heig = sprite_get_height(spr_pause_menu_upd);
			draw_text_color((ltxx/2)+xo, lty+ltyp2, ds_grid[# 0, yy], c, c, c, c, 1);
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
			}
			yy++;
		}
		}
	break;
}


