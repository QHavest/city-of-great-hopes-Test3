accept_key=keyboard_check_pressed(ord("Z"));
//textbox_x = camera_get_view_x(view_camera[0])
//textbox_y = camera_get_view_y(view_camera[0])+100;


//setup
if setup == false {
	setup = true;
	draw_set_font(Font1);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);

	// цикл для "листання" сторінок, розрахунку положеня та інш
	//page_number = array_length(text);
	for(var p=0; p<page_number; p++){
		//визначення кількості символів на сторіні
		text_length[p] = string_length(text[p]);
		
		
	//	визначення зміщення х текста		
		text_x_offset[p] = 44;
		if speaker[p] == 1
	{
	textbox_x[p] = obj_dim_player.x-100;
	text_x_offset[p] = 100;
	}
	if speaker[p] == -1
	{
	textbox_x[p] = obj_dialog_start.x-170;
	text_x_offset[p] = -50;
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
			if _current_txt_w - line_break_offset[p] > line_widt
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
			 txt_y = textbox_y+border;
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
					line_y[_txt_line][p]=txt_y + _txt_line*line_sep;
					_txt_line = lb + 1;
					
					}
				}
			// додамо координати
			char_x [c, p] = txt_x + _current_txt_w;
			char_y [c, p] = txt_y + _txt_line*line_sep;
			}
	
		}	
}
	 
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
			maxi_x[page]=0;
			draw_char = 0;
			}
		else{
		
		//переключення діалогу після вибору репліки
			if option_number>0{
			scr_create_textbox(option_link_id[option_pos])	
			}
			instance_destroy();}
		}	
	else {
		draw_char = text_length[page];
		}
}
	
// малюваня контурів тексту
	txtb_img+=txtb_img_spd;
	txt_spr_w = sprite_get_width(txtb_sprite);
	txt_spr_h = sprite_get_height(txtb_sprite);

// вивід варіантів відповідей
	if draw_char==text_length[page] && page==page_number-1
	{
		// вибір варіанту
		option_pos += keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up);
		option_pos = clamp(option_pos, 0, option_number-1);

	var _op_border =5;
	//координати відповідей
	X_op[0]=camera_get_view_x(view_camera[0])+8; X_op[1]=camera_get_view_x(view_camera[0])+8; X_op[2]=camera_get_view_x(view_camera[0])+280; X_op[3]=camera_get_view_x(view_camera[0])+280; Y_op[0]=camera_get_view_y(view_camera[0])+240; Y_op[1]=camera_get_view_y(view_camera[0])+270; Y_op[2]=camera_get_view_y(view_camera[0])+240; Y_op[3]=camera_get_view_y(view_camera[0])+270;
	
	for(var op=0; op<option_number; op++)
		{
		// виділення вибраного варіанту
		if option[op]== option[option_pos] color=c_gray;
		// поле для тексту відповіді
		var _o_w = string_width(option[op])+_op_border*2;
		draw_sprite_ext(txtb_sprite, txtb_img, X_op[op], Y_op[op],_o_w/txt_spr_w,line_hight/txt_spr_h,0,color,1);
		color=c_black;
		// текст варіанту відповіді
			draw_text(X_op[op]+_op_border, Y_op[op] + 2, option[op]);
		}
	}

// вивід рамки тексту
for (var c=0; c<draw_char; c++){
	if char[c,page]!=" "{
		
		var txt_up_to_char = string_copy(text[page],1,c+1);
		var _w = string_width(txt_up_to_char) + border*2;
		
	//var _w=string_width(text[page],1,c+1)+border*2;
	var active_line = (char_y[c, page] - txt_y)/line_sep;
	var hi_txtb = line_sep*(active_line+1)+border+4;
	
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
				draw_sprite_ext(txtb_sprite, txtb_img, char_x[c, page] - border,  char_y[0, page]-border/2+2,  last_wi/txt_spr_w, hi_txtb/txt_spr_h, 0, c_white, 1);	
			}
		}
		if active_line == 0
	draw_sprite_ext(txtb_sprite, txtb_img, char_x[0, page] -border,  char_y[0, page]-border/2+2,  _w/txt_spr_w, hi_txtb/txt_spr_h, 0, c_white, 1);
	}
}

// вивід тексту
for (var c=0; c<draw_char; c++)
{ 	draw_text_color(char_x[c, page], char_y[c, page], char[c, page], c_black,0,0,0,c_white);	}
