event_inherited();
if  ((place_meeting(x, y+zone_y, obj_dim_player1) or place_meeting(x, y+zone_y, obj_dim_player2)) and !global.dialogue_move)
{
	drowings = true;
	// задання кооринат для переміщення
	if keyboard_check_pressed(ord("E")) 
	{
		global.dialogue_move = true;
		obj_dim_player1.xsd = x+x1;
		obj_dim_player1.ysd = y+y1;
		obj_dim_player2.xsd = x+x2;
		obj_dim_player2.ysd = y+y2;
		obj_dim_player1.napriam=n1;
		obj_dim_player2.napriam=n2;

	}	
}

