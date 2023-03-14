if  ((place_meeting(x, y, obj_dim_player1) or place_meeting(x, y, obj_dim_player2)) and global.dialog_end)
{
	drowings = true;
}
else drowings = false;

//запуск переіщення
	if keyboard_check_pressed(ord("E")) and global.dialog_end and !global.shop  and  drowings = true
	{
		global.text_id=text_id;
		drowings = false;
		global.dialogue_move = true;
		obj_dim_player1.xsd = x+x1;
		obj_dim_player1.ysd = y+y1;
		obj_dim_player2.xsd = x+x2;
		obj_dim_player2.ysd = y+y2;
		obj_dim_player1.napriam=n1;
		obj_dim_player2.napriam=n2;
		global.zaniatui = true;
	}
