
///place_meeting(x, y+zone_y, obj_dim_player1)

event_inherited();

if (place_meeting(x,y+8,obj_dim_player1) and obj_dim_player1.status=STATUS.ACTIVE){
	if(instance_exists(obj_help_buttony) = false){
		instance_create_depth(x+5, y-40, -100, obj_E_button);
	}

}

if  ((place_meeting(x, y+zone_y, obj_dim_player1) or place_meeting(x, y+zone_y, obj_dim_player2)) and !global.dialogue_move)
{
	drawings = true;
		if (keyboard_check_pressed(ord("E")))
	{
		drowings = false;
	//	global.dialog_end = false;
		global.dialogue_move = true;
		obj_dim_player1.xsd = x+x1;
		obj_dim_player1.ysd = y+y1;
		obj_dim_player2.xsd = x+x2;
		obj_dim_player2.ysd = y+y2;
		obj_dim_player1.napriam=n1;
		obj_dim_player2.napriam=n2;
	}

}
//else if (instance_exists(obj_help_buttony) == true){  instance_destroy(obj_help_buttony)};

