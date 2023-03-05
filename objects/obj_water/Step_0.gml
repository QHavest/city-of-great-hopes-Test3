/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if place_meeting(x+zone_x, y+zone_y, obj_dim_player1) or place_meeting(x-zone_x, y+zone_y, obj_dim_player1) 
{
	if !global.dialogue_move and obj_dim_player1.status= STATUS.ACTIVE
	{
		drowings = true;
		// задання кооринат для переміщення
		if keyboard_check_pressed(ord("E")) 
		{
			drowings = false;
			pl=1;
			global.dialogue_move = true;
			obj_dim_player1.xsd = x+x1;
			obj_dim_player1.ysd = y+y1;
			obj_dim_player2.xsd = obj_dim_player2.x;
			obj_dim_player2.ysd = obj_dim_player2.y;
			obj_dim_player1.napriam=n1;
			//щоб крис не міняв напрямку споглядання
			if obj_dim_player2.lastmove =0 { obj_dim_player2.napriam="r";}
			else obj_dim_player2.napriam="l";
		}	
	}
}
else
if   place_meeting(x+zone_x, y+zone_y, obj_dim_player2) or  place_meeting(x-zone_x, y+zone_y, obj_dim_player2)
{
	if !global.dialogue_move and obj_dim_player2.status= STATUS.ACTIVE
{
	drowings = true;
	// задання кооринат для переміщення
	if keyboard_check_pressed(ord("E")) 
	{
		drowings = false;
		pl=2;
		global.dialogue_move = true;
		obj_dim_player1.xsd = obj_dim_player1.x;
		obj_dim_player1.ysd = obj_dim_player1.y;
		obj_dim_player2.xsd = x+x2;
		obj_dim_player2.ysd = y+y1;
		obj_dim_player2.napriam=n2;
		if obj_dim_player1.lastmove =0 { obj_dim_player1.napriam="r";}
			else obj_dim_player1.napriam="l";

	}	
}
}
else if drowings drowings= false;

	