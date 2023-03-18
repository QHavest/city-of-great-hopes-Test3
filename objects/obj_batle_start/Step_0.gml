
if  (place_meeting(x, y, obj_dim_player1) or place_meeting(x, y, obj_dim_player2))
{
	drowings = true;
	if(keyboard_check_pressed(ord("E"))){
	obj_Battle_Interface.battle_start = true;
	obj_Battle_Interface.enemies = ENEMY.Kavkazci;
	scr_music_fon_change(Room61);
	room_goto(karta);
	}
}




