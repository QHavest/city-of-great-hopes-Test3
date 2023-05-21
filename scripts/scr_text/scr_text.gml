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
// автоматично розвертаю іконки
switch(speaker2[page_number]){
	case spr_ic_Ytopurok:
	speaker2[page_number] = spr_ic_Ytopurok_l;
	break
	case spr_ic_Krus:
	speaker2[page_number] = spr_ic_Krus_l;
	break
}
page_number++;
if (argument_count=5)
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
	if (argument_count=3)
	{
		var spr_ic =  argument[1];
		var spr_ic_npc =  argument[2];
	with (instance_create_depth(0,0,-99999,obj_dim_textbox_gui))
		{	
			scr_game_text(_text_id,spr_ic_npc,spr_ic);
		}
	}	
	else
		if (argument_count=2)
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
