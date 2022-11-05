
old_font = draw_get_font();
draw_set_font(Font_for_draw);
accept_key=keyboard_check_pressed(vk_enter);

// Якщо текстово поле пусте, то текст бокс не виводиться і діалог закінчується
if string_length(text[page]) == 0 
{
	global.dialog_end = 1;
	instance_destroy();
}

//setup
if setup == false
{
	setup = true;
	
	#region (if room_high...)
/*
	if room_height >=300 
	{	
//		line_hight = 12;
//		line_sep	= 3;// відстань між строками 
	//	border      = 4// відступи від краю
		offsett_kof = 1;
		scale = 0.08;
		draw_set_font(for_large);
		font_for_math = for_large;
	}
	if room_height <300 && room_height>=150
	{
//		border    = 3;
//		line_hight = 6;
//		line_sep  = 2;
		offsett_kof = 0.4;
		scale = 0.05;
		draw_set_font(for_normal);
		font_for_math = for_normal;
	}
	if room_height <150
	{
//		border     = 2;
//		line_hight = 4
//		line_sep   = 2;
		offsett_kof = 0.4;
		scale = 0.04;
		draw_set_font(for_small);
		font_for_math = for_small;
	}
//	*/
	#endregion

	draw_set_valign(fa_top);
	draw_set_halign(fa_left);

	//  розрахунку положеня та інш
	text_width = cam_w/2 //+ 2*border;
	txtb_width = text_width + border*2
	textbox_y = cam_y + border;
	txt_y = textbox_y + border;		
	midle_x = cam_x + cam_w/2
	txtb_x = midle_x - border - text_width/2
	hi_txtb = (line_hight+line_sep)*4 + border*2 - line_sep;
	ico_scale = (hi_txtb-border*2)/sprite_get_height(spr_ic_Ytopurok);
	
	//цикл для "листання" сторінок,
for(var p=0; p<page_number; p++)
	{
		//визначення кількості символів на сторіні
		text_length[p] = string_length(text[p]);
		
		for(var c=0; c<text_length[p]; c++)
			{
			var _char_pos=c+1;
			
			//збереження кожної букви в індивідуальному масиві "char"
			char[c,p] = string_char_at(text[p],_char_pos) ;
			
			//визначення ширини лінії тесту
			var txt_up_to_char = string_copy(text[p],1,_char_pos);
			var _current_txt_w = (string_width(txt_up_to_char) - string_width(char[c,p]))*scale;
			
			// визначення залишеного вільного місця
			if char [c,p] ==" " and c>0
			{ 
				if char [c-1,p] == " " line_break_offset[p] = -999
				else last_free_space = _char_pos+1;
			}
								
			// розділення тексту на рядки
			if _current_txt_w - line_break_offset[p] > text_width
				{
				line_break_pos[ line_break_num[p], p] = last_free_space;
				//line_widt[line_break_num[p]] = _current_txt_w - line_break_offset[p];
				line_break_num[p]++;
				var _txt_up_to_last_space = string_copy( text[p], 1, last_free_space);
				var _last_free_space_string = string_char_at(text[p],last_free_space);
				line_break_offset[p] = (string_width(_txt_up_to_last_space) - string_width(_last_free_space_string))*scale;		
			//	line_widt[line_break_num[p]-1] =string_width(_txt_up_to_last_space) ;
				}		
			}
			// цикл для вирівнювання 
			var _txt_line = 0;
			var _str_copy = string_copy(text[p],1, line_break_pos[0,p]-2);
			line_widt[0] = string_width(_str_copy)*scale;
			
			for (var lb=1; lb<line_break_num[p]; lb++)
				{		
					_str_copy = string_copy(text[p],line_break_pos[lb-1,p], line_break_pos[lb,p] - line_break_pos[lb-1,p]);
					line_widt[lb] = string_width(_str_copy)*scale;
				}
			
			_str_copy = string_copy(text[p],line_break_pos[lb-1,p], string_width(text[p])*scale - line_break_pos[lb-1,p]-2);
			line_widt[lb] = string_width(_str_copy)*scale;
			
			var first_y = (hi_txtb + line_sep - (line_hight+line_sep)*(line_break_num[p] + 1) )/2 ;
			
		// визначення координат кожного символу
		 for (var c=0; c<text_length[p]; c++)
			{
			 _char_pos = c+1;

			//визначення ширини лінії тесту
			txt_up_to_char = string_copy(text[p],1,_char_pos);
			_current_txt_w = string_width(txt_up_to_char) - string_width(char[c,p]);
			_txt_line = 0;
			// розділення на лінії
				for (var lb=0; lb<line_break_num[p]; lb++)
				{
				if _char_pos >=line_break_pos[lb, p]
					{
					var _str_copy = string_copy(text[p], line_break_pos[lb,p], _char_pos-line_break_pos[lb,p]);
					//line_widt[lb+1] = _current_txt_w;
					_current_txt_w = string_width(_str_copy);
					//line_y[_txt_line][p] = first_y + _txt_line*(line_hight+line_sep);
					_txt_line = lb + 1;
					}
				}
				
			// додамо координати
			char_x [c, p] = midle_x + _current_txt_w*scale - line_widt[_txt_line]/2;
			char_y [c, p] = textbox_y + first_y + _txt_line*(line_hight+line_sep);
			
		}
	}	
}
	 
	 // розмір шрифту під кімнату and зміна параметрів виведення
//	draw_set_font(font_for_math)
	
// друкування тексту
if draw_char < text_length[page] {
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_length[page]); // останнцй символ який виводиться в даний фрейм
}

//  заповнення сторіник текстом + перелистування сторінки
	if accept_key
{
	if draw_char == text_length[page]	
		{
		if page < page_number-1
			{
			page++;
			draw_char = 0;
			}
		else{
		//переключення гілки діалогу після вибору репліки
			if option_number>0{
			scr_create_textbox(option_link_id[option_pos])	
			}
			else global.dialog_end = 1;
			instance_destroy();}
		}	
	else {
		draw_char = text_length[page];
		}
}
	
// малюваня контурів тексту
	//txtb_img+=txtb_img_spd;   використовується при анімації заднього фону
	txt_spr_w = sprite_get_width (txtb_sprite);
	txt_spr_h = sprite_get_height(txtb_sprite);

// вивід варіантів відповідей
	if draw_char == text_length[page] and page == page_number-1
	{
		// вибір варіанту
		option_pos += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
		option_pos = clamp(option_pos, 0, option_number-1);

	//var _op_border =5; //змінений відступ для варіантів
	
	var sec = cam_w/option_number; // розділяє екран на рівні частини відповідно до кількості варіантів
	var _o_w = sec - o_b*2;
	//координати відповідей
	
	if option_number<=3 
		{
			var sec = cam_w/option_number; // розділяє екран на рівні частини відповідно до кількості варіантів
			var _o_w = sec - o_b*2;
			for(var i=0; i<option_number; i++)
			{ 
			Y_op[i] = room_height - o_b*1 - line_hight*2;
			X_op[i] = cam_x + sec*i + o_b;
			}
		}
		else 
		{  
			secondY = room_height - o_b*1 - line_hight*2;
			firstY  = secondY - line_hight - o_b*3;
			if option_number == 4 
			{		var sec = cam_w/2; 
					var _o_w = sec - o_b*2;
					X_op[0]=cam_x + o_b; X_op[2]=X_op[0];
					X_op[1]=cam_x + sec*1 + o_b; X_op[3]=X_op[1];
					Y_op[0]=firstY; Y_op[2]=secondY; Y_op[1]=firstY; Y_op[3]=secondY;
			}
			if option_number == 5
			{
					var sec = cam_w/3; 
					var _o_w = sec - o_b*2;
					X_op[0]=cam_x + cam_w/2-sec/2 +o_b;     X_op[1]=midle_x + cam_w/2-sec/2 +o_b;
					
					X_op[2]=cam_x + sec*0 + o_b; X_op[3]=cam_x + sec*1 + o_b;  X_op[4]=cam_x + sec*2 + o_b
					
					Y_op[0]=firstY; Y_op[2]=secondY; Y_op[1]=firstY; Y_op[3]=secondY; Y_op[4]=secondY;
			
			}
		//	if i/option_number <= .5 Y_op[i] =  room_height - border*3 - line_hight*3;
		//	else Y_op[i] =  room_height - border*1 - line_hight*2;
		
		}
	
		
/*	if(option_number<=2) firstY  = room_height - border*1 - line_hight*2 ;
	else firstY  = room_height - border*6 - line_hight*2 ;
	secondY = room_height - border*3 - line_hight;
	Y_op[0]=firstY; Y_op[2]=secondY; Y_op[1]=firstY; Y_op[3]=secondY;
	
	for(var i=0; i<option_number; i++) // визначення X координат варіантів через центрування
	{
		X_op[i] = cam_x - (string_width(option[i]))/2 + cam_w/2 - (cam_w/4)*cos(i*pi) - border ;
	}
	*/
	for(var op=0; op<option_number; op++)
		{	
		// виділення вибраного варіанту
		if option[op] == option[option_pos] {color = c_yellow; opt_img = 0;}
		else {opt_img = 1; color=c_black;}
		// поле для тексту відповіді
//		draw_set_font(font_for_math)
		var _o_c = (_o_w - string_width(option[op])*scale)/2;
		draw_sprite_ext(txtb_sprite, opt_img, X_op[op], Y_op[op], _o_w/txt_spr_w,(line_hight+o_b*2)/txt_spr_h,0,c_white,1);
		// текст варіанту відповіді
		 //   draw_set_font(Font_for_draw);
			draw_text_transformed_color(X_op[op] + _o_c, Y_op[op]+o_b, option[op],scale,scale,0,color,color,color,color,1);
	}
	} 
//	draw_set_font(font_for_math)
#region(поступовий вивід рамки тексту)
/*
// 

for (var c=0; c<draw_char; c++){
	if char[c,page]!=" "{
		
		var txt_up_to_char = string_copy(text[page],1,c+1);
		var _w = string_width(txt_up_to_char) + border*2;
		

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
*/
#endregion
// вивід рамок для іконок прерсонажів
draw_sprite_ext(txtb_sprite, txtb_img, txtb_x + border + (20*ico_scale), textbox_y, txtb_width/txt_spr_w, hi_txtb/txt_spr_h, 0, c_white, 1);
draw_sprite_ext(txtb_sprite, txtb_img, txtb_x - border - (20*ico_scale) , textbox_y, txtb_width/txt_spr_w, hi_txtb/txt_spr_h, 0, c_white, 1);
	if speaker[page] == 1 // ГГ
	{
		draw_sprite_ext(speaker1[page],0,txtb_x-border/2-(20*ico_scale), txt_y,ico_scale,ico_scale,0,c_white,1);
		draw_sprite_ext(speaker2[page],0,txtb_x+txtb_width+border/2, txt_y,ico_scale,ico_scale,0,c_gray,1);
	}
	if speaker[page] == 2 // не ГГ
	{
		draw_sprite_ext(speaker1[page],0,txtb_x-border/2-(20*ico_scale), txt_y,ico_scale,ico_scale,0,c_gray,1);
		draw_sprite_ext(speaker2[page],0,txtb_x+txtb_width+border/2, txt_y,ico_scale,ico_scale,0,c_white,1);
	}
	if speaker[page] == 0 // нема спікера (можна у вільні місця помістити іконки сценаристів)
	{

	}

// вивід рамки під текст (щоб вона була перед рамками під іконки)
draw_sprite_ext(txtb_sprite, txtb_img, txtb_x , textbox_y, txtb_width/txt_spr_w, hi_txtb/txt_spr_h, 0, c_white, 1);

// вивід тексту
//draw_set_font(Font_for_draw);
for (var c=0; c<draw_char; c++)
	draw_text_transformed_color(char_x[c, page], char_y[c, page], char[c, page], scale,scale,0,c_black,0,0,0,c_white);	

draw_set_font(old_font);
	
