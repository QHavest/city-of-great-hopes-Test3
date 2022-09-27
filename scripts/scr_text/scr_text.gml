function scr_set_defaults_for_text(){
line_break_pos[0, page_number]=999;
line_break_num[page_number]   =0;
line_break_offset[page_number]=0;
speaker[page_number]=0;
}


///@param text
///@param [speaker]
function scr_text(_text){
scr_set_defaults_for_text()
text[page_number]=_text;

if argument_count >1
	{
		switch (argument[1])
		{
		case "player":
		 speaker[page_number] =1;
		 break;
		 case "non_playe":
		 speaker[page_number] =-1;
		break;
		}
	}
else speaker[page_number]=0;
page_number++;
}

///@param option
///@param link_id
function scr_option(_option, _link_id){
option[option_number]   = _option;
option_link_id[option_number] = _link_id;
option_number++;

}

/// @param text_id
function scr_create_textbox (_text_id){
	
	with (instance_create_depth(0,0,-99999,obj_dim_textbox))
{
	scr_game_text(_text_id);
	
}

}
