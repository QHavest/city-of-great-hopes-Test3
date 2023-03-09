if (!place_meeting(x,y,obj_dim_player1) and !place_meeting(x,y,obj_dim_player2)) and start_counter=1 start_counter=0;


if place_meeting(x, y, obj_dim_player1) and global.dialog_end and !global.shop  and start_counter=0 and obj_dim_player1.status = STATUS.ACTIVE
{
	if ind_ic_in_group
	scr_create_textbox(text_id,name_ic);
	else scr_create_textbox(text_id);
	start_counter=1;
}
if place_meeting(x, y, obj_dim_player2) and  global.dialog_end and !global.shop  and start_counter=0 and obj_dim_player2.status = STATUS.ACTIVE
{
	if ind_ic_in_group
	{scr_create_textbox(text_id,name_ic);}
	else scr_create_textbox(text_id);
	start_counter=1;
}
