/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if ( !global.dialogue_move){
if (place_meeting(x+20, y+zone_y, obj_dim_player1) or place_meeting(x-29, y+zone_y, obj_dim_player1))
{
	if (obj_dim_player1.status= STATUS.ACTIVE)
	{
		// задання кооринат для переміщення
		if keyboard_check_pressed(ord("E")) 
		{
			pl=1;
			global.dialogue_move = true;
			obj_dim_player1.xsd = x+x1;
			obj_dim_player1.ysd = y+y1;
			obj_dim_player2.xsd = x+x2;
			obj_dim_player2.ysd = y+y1;
			obj_dim_player1.napriam=n1;
			obj_dim_player2.napriam=n2;
		}	
	}
}
else if (place_meeting(x+20, y+zone_y, obj_dim_player2) or  place_meeting(x-20, y+zone_y, obj_dim_player2))
{
	if ( obj_dim_player2.status= STATUS.ACTIVE)
	{
	// задання кооринат для переміщення
		if (keyboard_check_pressed(ord("E")))
		{
			pl=2;
			global.dialogue_move = true;
			obj_dim_player1.xsd = x+x1;
			obj_dim_player1.ysd = y+y1;
			obj_dim_player2.xsd = x+x2;
			obj_dim_player2.ysd = y+y1;
			obj_dim_player1.napriam=n1;
			obj_dim_player2.napriam=n2;
		}	
	}
}}