old_font = draw_get_font();
accept_key=keyboard_check_pressed(ord("Z"));
//textbox_x = camera_get_view_x(view_camera[0])
//textbox_y = camera_get_view_y(view_camera[0])+100;


//setup
if setup == false {
	setup = true;
	
		if room_height >=300 
	{
		border      = 8
		offsett_kof = 1;
		scale = 0.14;
		draw_set_font(for_large);
		font_for_math = for_large;
	}
	if room_height <300 && room_height>=150
	{
		border    = 6;
		line_hight = 10;
		line_sep  = 4;
		offsett_kof = 0.4;
		scale = 0.1;
		draw_set_font(for_normal);
		font_for_math = for_normal;
	}
	if room_height <150
	{
		border     = 6;
		line_hight = 8
		line_sep   = 3;
		offsett_kof = 0.4;
		scale = 0.08;
		draw_set_font(for_small);
		font_for_math = for_small;
	}
	
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);

	// цикл для "листання" сторінок, розрахунку положеня та інш
	//page_number = array_length(text);
for(var p=0; p<page_number; p++){
		//визначення кількості символів на сторіні
		text_length[p] = string_length(text[p]);
	
	//	визначення зміщення х текста
	// При Р_Р = 1 ГГ по праву сторону від центра екрану
	// При Р_Р = 0 ГГ по ліву сторону від центра екрану
		text_x_offset[p] = 0;
	textbox_width = cam_w/2 - border*4
	if speaker[p] == 1 // ГГ
	{
	textbox_x[p] = (cam_w*global.p_p)/2 + border + cam_x;
	}
	if speaker[p] == -1 // не ГГ
	{
	textbox_x[p] = (cam_w*(1-global.p_p)/2) + border + cam_x;
	}
	if speaker[p] == 0 // нема спікера - текст поцентру
	{
	textbox_width = cam_w - cam_w/4;
	textbox_x[p] = cam_w/2 - textbox_width/2 - border + cam_x;;
	}

	
		for(var c=0; c<text_length[p]; c++)
			{
			var _char_pos=c+1;
			
			//збереження кожної букви в індивідуальному масиві "char"
			char[c,p] = string_char_at(text[p],_char_pos) ;
			
			//визначення ширини лінії тесту
			var txt_up_to_char = string_copy(text[p],1,_char_pos);
			var _current_txt_w = string_width(txt_up_to_char) - string_width(char[c,p]);
			
			// визначення залишеного вільного місця
			if char [c,p] ==" " {last_free_space=_char_pos+1;}
								
			// розриви рядків
			if _current_txt_w - line_break_offset[p] > textbox_width
				{
				line_break_pos[ line_break_num[p], p] = last_free_space;
				line_break_num[p]++;
				var _txt_up_to_last_space = string_copy( text[p], 1, last_free_space);
				var _last_free_space_string = string_char_at(text[p],last_free_space);
				line_break_offset[p] = string_width(_txt_up_to_last_space) - string_width(_last_free_space_string);
				}		
			}
		// визначення координат кожного символу
		 for (var c=0; c<text_length[p]; c++)
			{
			var _char_pos = c+1;
			var txt_x = textbox_x[p] + text_x_offset[p] + border;
			 txt_y = textbox_y + border;
			//визначення ширини лінії тесту
			var txt_up_to_char = string_copy(text[p],1,_char_pos);
			var _current_txt_w = string_width(txt_up_to_char) - string_width(char[c,p]);
			var _txt_line = 0;
			// якась там компенсація стрінгів
				for (var lb=0; lb<line_break_num[p]; lb++)
				{
				if _char_pos >=line_break_pos[lb, p]
					{
					var _str_copy = string_copy(text[p], line_break_pos[lb,p], _char_pos-line_break_pos[lb,p]);
					_current_txt_w = string_width(_str_copy);
					line_y[_txt_line][p] = txt_y + _txt_line*(line_hight+line_sep);
					_txt_line = lb + 1;
					
					}
				}
			// додамо координати
			char_x [c, p] = txt_x + _current_txt_w;
			char_y [c, p] = txt_y + _txt_line*(line_hight+line_sep);
			}
	
		}	
}
	 
	 // розмір шрифту під кімнату and зміна параметрів виведення

	draw_set_font(font_for_math)
// друкування тексту
if draw_char < text_length[page] {
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_length[page]);
}

//  пролистування тексту
	if accept_key
{
	if draw_char == text_length[page]	
		{
		if page < page_number-1
			{
			page++;
			maxi_x[page] = 0;
			draw_char = 0;
			}
		else{
		
		//переключення діалогу після вибору репліки
			if option_number>0{
			scr_create_textbox(option_link_id[option_pos])	
			}
			global.dialog_end =1;
			instance_destroy();}
		}	
	else {
		draw_char = text_length[page];
		}
}
	
// малюваня контурів тексту
	//txtb_img+=txtb_img_spd;   використовується при анімації хаднього фону
	txt_spr_w = sprite_get_width(txtb_sprite);
	txt_spr_h = sprite_get_height(txtb_sprite);

// вивід варіантів відповідей
	if draw_char==text_length[page] && page==page_number-1
	{
		// вибір варіанту
		option_pos += keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up);
		option_pos = clamp(option_pos, 0, option_number-1);

	//var _op_border =5;
	//координати відповідей
	if(option_number<=2) firstY  = room_height - border*1 - line_hight*2 ;
	else firstY  = room_height - border*3 - line_hight*2 ;
	secondY = room_height - border*2 - line_hight;
	Y_op[0]=firstY; Y_op[2]=secondY; Y_op[1]=firstY; Y_op[3]=secondY;
	
	for(var i=0; i<option_number; i++) // визначення X координат варіантів через центрування
	{
		X_op[i] = cam_x - (string_width(option[i])+border*2)/2 + cam_w/2 - (cam_w/4)*cos(i*pi) ;
	}
	
	for(var op=0; op<option_number; op++)
		{	
		// виділення вибраного варіанту
		if option[op]== option[option_pos] color=c_gray;
		// поле для тексту відповіді
		var _o_w = string_width(option[op])+border*2;
		draw_sprite_ext(txtb_sprite, txtb_img, X_op[op], Y_op[op], _o_w/txt_spr_w,(line_hight+border*2)/txt_spr_h,0,color,1);
		color=c_white;
		// текст варіанту відповіді
		    draw_set_font(Font_for_draw);
			draw_text_transformed_color(X_op[op]+border, Y_op[op] + border, option[op],scale,scale,0,c_black,0,0,0,c_white);
			draw_set_font(font_for_math)
		}
	}

// вивід рамки тексту
for (var c=0; c<draw_char; c++){
	if char[c,page]!=" "{
		
		var txt_up_to_char = string_copy(text[page],1,c+1);
		var _w = string_width(txt_up_to_char) + border*2;
		
	//var _w=string_width(text[page],1,c+1)+border*2;
	var active_line = (char_y[c, page] - txt_y)/(line_sep+line_hight);
	var hi_txtb = (line_hight+line_sep)*(active_line+1) + border*2 - line_sep;
	
	//  визначення максимальної координати Х букви на сторінці та ширини тієї букви
	if maxi_x[page]<char_x[c, page] {
		maxi_x[page]=char_x[c, page];
		later_width[page]=string_width(char[c,page]);}
		
		// заповнення рядка фоном при його початку
		if active_line > 0 
		{
		if char_y[c, page] > char_y[c-1, page]
			{
				var last_wi = maxi_x[page]-char_x[c, page]+later_width[page]+border*2;
				draw_sprite_ext(txtb_sprite, txtb_img, char_x[c, page] - border,  char_y[0, page]-border,  last_wi/txt_spr_w, hi_txtb/txt_spr_h, 0, c_white, 1);	
			}
		}
		if active_line == 0
	draw_sprite_ext(txtb_sprite, txtb_img, char_x[0, page] -border,  char_y[0, page]-border,  _w/txt_spr_w, hi_txtb/txt_spr_h, 0, c_white, 1);
	}
}
draw_set_font(Font_for_draw);
// вивід тексту
for (var c=0; c<draw_char; c++)
	{
	draw_text_transformed_color(char_x[c, page], char_y[c, page], char[c, page], scale,scale,0,c_black,0,0,0,c_white);	
	}
draw_set_font(old_font);