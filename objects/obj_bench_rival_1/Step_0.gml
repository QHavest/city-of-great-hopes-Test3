/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if  ((place_meeting(x, y+zone_y, obj_dim_player1) or place_meeting(x, y+zone_y, obj_dim_player2)) and !global.dialogue_move)
{
	drowings= true
		if keyboard_check_pressed(ord("E"))
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
else if drowings  drowings= false;

