old_font = draw_get_font();
draw_set_font(Font_for_draw);
accept_key=keyboard_check_pressed(vk_enter);

// Якщо текстово поле пусте, то текст бокс не виводиться і діалог закінчується
if (string_length(text[page]) == 0 and please_shop_open!=1)
{
	global.dialog_end = 1;
	global.zaniatui = false;
	with (obj_dim_player1)
	{
		if (last_active = true)
		{
			status = STATUS.ACTIVE;
		//	last_active = false;
		}
	}

	with (obj_dim_player2)
	{
		if (last_active = true)
		{
			status = STATUS.ACTIVE;
			//last_active=false;
}}
	
	instance_destroy();
}

//setup
	if (setup == false)
{
	setup = true;
	//cam_x =0;

	draw_set_valign(fa_top);
	draw_set_halign(fa_left);

	//  розрахунку положеня та інш
	text_width = gui_W/2 //+ 2*border;
	txtb_width = text_width + border*2
	textbox_y = cam_y + border;
	txt_y = textbox_y + border;		
	midle_x = cam_x + gui_W/2
	txtb_x = midle_x - border - text_width/2
	hi_txtb = (line_hight+line_sep)*4 + border*2 - line_sep;
	ico_scale = (hi_txtb-border*2)/sprite_get_height(spr_ic_Ytopurok);
	icobx1 = txtb_x - (20*ico_scale)-ic_b*2;
	icobx2 = txtb_x + txtb_width;
	
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
			if (char [c,p] ==" " and c>0)
			{ 
				if (char [c-1,p] == " ") { line_break_offset[p] = -999;}
				else {last_free_space = _char_pos+1;}
			}
								
			// розділення тексту на рядки
			if (_current_txt_w - line_break_offset[p] > text_width)
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
				if (_char_pos >=line_break_pos[lb, p])
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
// друкування тексту
if (draw_char < text_length[page] )
{
	draw_char += text_spd;
	// останнцй символ який виводиться в даний фрейм
	draw_char = clamp(draw_char, 0, text_length[page]); 
    //  під індивідуальні натиски
	#region (manual_sound)
if (snd_count < snd_delay) {snd_count++;}
	else{
		//випадковий проміжок часу між натисканнями
	snd_delay = irandom_range(2,5);
	snd_count = 0;
	//випадковий звук клавіші
	switch (irandom_range(1,8))
			{ 
				case 1 : audio_play_sound(snd_klik_1,5,false,global.System_gain);
				break
				case 2 : audio_play_sound(snd_klik_2,5,false,global.System_gain);
				break
				case 3 : audio_play_sound(snd_klik_3,5,false,global.System_gain);
				break
				case 4 : audio_play_sound(snd_klik_4,5,false,global.System_gain);
				break
				case 5 : audio_play_sound(snd_klik_5,5,false,global.System_gain);
				break
				case 6 : audio_play_sound(snd_klik_6,5,false,global.System_gain);
				break
				case 7 : audio_play_sound(snd_klik_7,5,false,global.System_gain);
				break
				case 8 : audio_play_sound(snd_klik_8,5,false,global.System_gain);
				break
			}
		}
		#endregion
}
//else audio_pause_sound(snd_taping) 

//  заповнення сторіник текстом + перелистування сторінки
	if (accept_key)
{
	if (draw_char == text_length[page])	
		{
		if (page < page_number-1)
		{
			page++;
			draw_char = 0;
		}
		else{
		//переключення гілки діалогу після вибору репліки
			if (option_number>0)
			{
			scr_create_textbox(option_link_id[option_pos])	
			audio_play_sound(snd_op_accept,3,false,global.System_gain);
			}
			else {
				global.dialog_end = 1;
				if (please_shop_open=1) {scr_shop_open(shop_name);}
				else {
					global.zaniatui = false;
					with (obj_dim_player1)
					{
						if (last_active = true)
						{
							status = STATUS.ACTIVE;
						}}
					with (obj_dim_player2)
					{
						if (last_active = true)
						{
						status = STATUS.ACTIVE;
					}}
				}
			}
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
	if (draw_char == text_length[page] and page == page_number-1)
	{
		// вибір варіанту
		option_pos += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
		option_pos = clamp(option_pos, 0, option_number-1);
		if keyboard_check_pressed(vk_right) or keyboard_check_pressed(vk_left) audio_play_sound(snd_search,2,false,global.System_gain);

	//var _op_border =5; //змінений відступ для варіантів
	
	var sec = gui_W/option_number; // розділяє екран на рівні частини відповідно до кількості варіантів
	var _o_w = sec - o_b*2;
	//координати відповідей
	
	if (option_number<=3)
		{   
			var sec = gui_W/option_number; // розділяє екран на рівні частини відповідно до кількості варіантів
			var _o_w = sec - o_b*2;
			op_spr = op_sprite[option_number];
			for(var i=0; i<option_number; i++)
			{ 
				Y_op[i] = gui_H - o_b*1 - line_hight*2;
				X_op[i] = cam_x + sec*i + o_b;
			}
		}
	else 
		{  
		secondY = gui_H - o_b*1 - line_hight*2;
		firstY  = secondY - line_hight - o_b*3;
		if (option_number == 4 )
			{		
				var sec = gui_W/2; 
				op_spr = op_sprite[2];
				var _o_w = sec - o_b*2;
				X_op[0]=cam_x + o_b; X_op[2]=X_op[0];
				X_op[1]=cam_x + sec*1 + o_b; X_op[3]=X_op[1];
				Y_op[0]=firstY; Y_op[2]=secondY; Y_op[1]=firstY; Y_op[3]=secondY;
			}
		if (option_number == 5)
			{
				var sec = gui_W/3; 
				op_spr = op_sprite[3];
				var _o_w = sec - o_b*2;
				X_op[0]=cam_x + sec/2 -o_b;     X_op[1]=cam_x + sec*2 - sec/2 - o_b;
				X_op[2]=cam_x + sec*0 + o_b; X_op[3]=cam_x + sec*1 + o_b;  X_op[4]=cam_x + sec*2 + o_b
				Y_op[0]=firstY; Y_op[2]=secondY; Y_op[1]=firstY; Y_op[3]=secondY; Y_op[4]=secondY;
			}
		}
		// визначення параметрів картинок для варіантів відповіді
op_sprh = sprite_get_height(op_spr);
op_sprw = sprite_get_width(op_spr);
		//безпосередно вивід варіантів 
	for(var op=0; op<option_number; op++)
		{	
		// виділення вибраного варіанту
		if (option[op] == option[option_pos]) {color = c_yellow; opt_img = 0;}
		else {opt_img = 1; color=c_black;}
		// центр варіанту відповіді
		var _o_c = (_o_w - string_width(option[op])*scale)/2;
		// поле для тексту відповіді
		draw_sprite_ext(op_spr, opt_img, X_op[op], Y_op[op], _o_w/op_sprw,(line_hight+o_b*2)/op_sprh,0,c_white,1);
		// текст варіанту відповіді
		draw_text_transformed_color(X_op[op] + _o_c, Y_op[op]+o_b, option[op],scale,scale,0,color,color,color,color,1);
	}
	} 
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
//draw_sprite_ext(txtb_sprite, txtb_img, txtb_x + border + (20*ico_scale), textbox_y, txtb_width/txt_spr_w, hi_txtb/txt_spr_h, 0, c_white, 1);
//draw_sprite_ext(txtb_sprite, txtb_img, txtb_x - border - (20*ico_scale) , textbox_y, txtb_width/txt_spr_w, hi_txtb/txt_spr_h, 0, c_white, 1);

//draw_sprite_ext(spr_textbox_big, txtb_img, txtb_x - border - (20*ico_scale) , textbox_y, (40*ico_scale+border*2+txtb_width)/sprite_get_width (spr_textbox_big), hi_txtb/txt_spr_h, 0, c_white, 1);

	if (speaker[page] == 1) // ГГ
	{
		draw_sprite_ext(spr_textbox_small, 0, icobx2, textbox_y, (20*ico_scale+ic_b*2)/sprite_get_width (spr_textbox_small), hi_txtb/txt_spr_h, 0, c_white, 1);
		draw_sprite_ext(spr_textbox_small, 0, icobx1, textbox_y,(20*ico_scale+ic_b*2)/sprite_get_width (spr_textbox_small), hi_txtb/txt_spr_h, 0, c_white, 1)
		draw_sprite_ext(speaker1[page],0,icobx1+ic_b, txt_y + ic_b+contyr+1,ico_scale,ico_scale,0,c_white,1);
		draw_sprite_ext(speaker2[page],0,icobx2+ic_b, txt_y + ic_b+contyr+1,ico_scale,ico_scale,0,c_gray,1);
	}
	if (speaker[page] == 2) // не ГГ
	{
		draw_sprite_ext(spr_textbox_small, 0, icobx2, textbox_y, (20*ico_scale+ic_b*2)/sprite_get_width (spr_textbox_small), hi_txtb/txt_spr_h, 0, c_white, 1);
		draw_sprite_ext(spr_textbox_small, 0, icobx1, textbox_y,(20*ico_scale+ic_b*2)/sprite_get_width (spr_textbox_small), hi_txtb/txt_spr_h, 0, c_white, 1)
		draw_sprite_ext(speaker1[page],0,icobx1+ic_b, txt_y+ ic_b+contyr+1,ico_scale,ico_scale,0,c_gray,1);
		draw_sprite_ext(speaker2[page],0,icobx2+ic_b, txt_y+ ic_b+contyr+1,ico_scale,ico_scale,0,c_white,1);
	}
	if (speaker[page] == 0) // нема спікера (можна у вільні місця помістити іконки сценаристів)
	{
		draw_sprite_ext(spr_textbox_small, 0, icobx2, textbox_y, (20*ico_scale+ic_b*2)/sprite_get_width (spr_textbox_small), hi_txtb/txt_spr_h, 0, c_white, 1);
		draw_sprite_ext(spr_textbox_small, 0, icobx1, textbox_y,(20*ico_scale+ic_b*2)/sprite_get_width (spr_textbox_small), hi_txtb/txt_spr_h, 0, c_white, 1)
		draw_sprite_ext(speaker1[page],0,icobx1+ic_b, txt_y+ic_b+contyr+1,ico_scale,ico_scale,0,c_white,1);
		draw_sprite_ext(speaker2[page],0,icobx2+ic_b, txt_y+ic_b+contyr+1,ico_scale,ico_scale,0,c_white,1);
	}

// вивід рамки під текст (щоб вона була перед рамками під іконки)
draw_sprite_ext(txtb_sprite, txtb_img, txtb_x , textbox_y, txtb_width/txt_spr_w, hi_txtb/txt_spr_h, 0, c_white, 1);

// вивід тексту
//draw_set_font(Font_for_draw);
for (var c=0; c<draw_char; c++)
	draw_text_transformed_color(char_x[c, page], char_y[c, page], char[c, page], scale,scale,0,c_black,0,0,0,c_white);	

draw_set_font(old_font);