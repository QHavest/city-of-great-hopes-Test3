
if  place_meeting(x, y, obj_dim_player1) or place_meeting(x, y, obj_dim_player2)
{
	drowings = true;
	if(keyboard_check_pressed(ord("E"))){
	with obj_Battle_Interface
	{
	battle_start = !battle_start;
	}
	obj_Battle_Interface.enemies = en;
	room_goto(karta);
	}
	}




