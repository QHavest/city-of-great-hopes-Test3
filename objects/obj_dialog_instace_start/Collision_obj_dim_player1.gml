if global.dialog_end and !global.shop and start_counter=0 and obj_dim_player1.status=STATUS.ACTIVE{
	start_counter=1;
scr_create_textbox(text_id);
k=irandom_range(1,3);
}