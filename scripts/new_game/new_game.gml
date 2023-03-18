// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function new_game(){
	room_goto(rm_street_second_side)
	scr_music_fon_change(rm_street_second_side)
/*	with (music_room)
	{	new_sound = snd_rivalstation;
		audio_sound_gain(old_sound,0,gain_decrease);
		alarm[10]=((gain_decrease/1000)*room_speed)+1;
		audio_play_sound(new_sound,2,1);
		audio_sound_gain(new_sound,0,0)
		audio_sound_gain(new_sound,global.Fon_sound_gain,gain_increase)
		old_sound = new_sound;
}*/
	//room_goto(rm_home_gg_cut)
	global.gameStart = 1;
	
	show_debug_message("scr_newgame")
	with(obj_loading)
	{
		alarm[0] = 1;
	}
	
}