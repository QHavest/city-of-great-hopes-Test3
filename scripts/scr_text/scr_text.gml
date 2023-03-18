function scr_set_defaults_for_text(){
line_break_pos[0, page_number]=999;
line_break_num[page_number]   =0;
line_break_offset[page_number]=0;
speaker[page_number]=0;
speaker1[page_number]=spr_ic_blank;
speaker2[page_number]=spr_ic_blank;
op_spr=0;
op_sprh=0;
op_sprw=0;
last_free_space = 0;
//please_shop_open =0;
}
//______________________________

///@param text
///@param active_speaker
///@param [speaker1]
///@param [speaker2]
///@param [shop_name]
function scr_text(_text,active_speaker){
scr_set_defaults_for_text()
text[page_number]=_text;
// визначення хто говорить
speaker[page_number] = active_speaker;
// присвоєння спрайтів співрозмовників
speaker1[page_number] =argument[2];
speaker2[page_number] =argument[3];	
page_number++;
if argument_count=5
{
	please_shop_open=1;
	shop_name=argument[4];
}
}
//_____________________________

///@param option
///@param link_id
function scr_option(_option, _link_id){
option[option_number]   = _option;
option_link_id[option_number] = _link_id;
option_number++;

}
//_____________________________
function scr_shop_open(name){
instance_create_depth(obj_dim_player1.x,90,-9999,name)
	name.shopOpen = true;
	global.shop = true;

}
//_______________________________
/// @param text_id
/// @param [spr_speak_GG]
/// @param [spr_speak_2]
function scr_create_textbox (_text_id){
	if argument_count=3 
	{
		var spr_ic =  argument[1];
		var spr_ic_npc =  argument[2];
	with (instance_create_depth(0,0,-99999,obj_dim_textbox_gui))
		{	
			scr_game_text(_text_id,spr_ic_npc,spr_ic);
		}
	}	
	else
		if argument_count=2 
	{
		var spr_ic =  argument[1];
		//var spr_ic_npc =  argument[2];
	with (instance_create_depth(0,0,-99999,obj_dim_textbox_gui))
		{	
			scr_game_text(_text_id,spr_ic);
		}
	}	
	else
	{
	with (instance_create_depth(0,0,-99999,obj_dim_textbox_gui))
		{	
			scr_game_text(_text_id);
		}
	}	


}

function scr_setup(){
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