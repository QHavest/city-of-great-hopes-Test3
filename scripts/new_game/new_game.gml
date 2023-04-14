// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function new_game(){
	room_goto(rm_street_second_side);
	scr_music_fon_change(rm_street_second_side);
	global.gameStart = 1;
	
	show_debug_message("scr_newgame")
	with(obj_loading)
	{
		alarm[0] = 1;
	}
	
}