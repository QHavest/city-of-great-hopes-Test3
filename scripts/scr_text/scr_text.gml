function scr_set_defaults_for_text(){
line_break_pos[0, page_number]=999;
line_break_num[page_number]   =0;
line_break_offset[page_number]=0;
speaker[page_number]=0;
speaker1[page_number]=spr_ic_blank;
speaker2[page_number]=spr_ic_blank;
}


///@param text
///@param active_speaker
///@param [speaker1]
///@param [speaker2]
function scr_text(_text,active_speaker){
scr_set_defaults_for_text()
text[page_number]=_text;
// визначення хто говорить
speaker[page_number] = active_speaker;
// присвоєння спрайтів співрозмовників
speaker1[page_number] =argument[2];
speaker2[page_number] =argument[3];	
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
