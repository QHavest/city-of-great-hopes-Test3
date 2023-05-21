// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function new_game(){
	//room_goto(rm_street_second_side);
	room_goto(rm_home_gg_cut);
	//scr_music_fon_change(rm_street_second_side);
	with (music_room){
/*		new_sound = snd_rivalstation;
		alarm[0]=((gain_decrease/1000)*room_speed)+1;
		audio_sound_gain(old_sound, 0, gain_decrease);
		*/
	audio_stop_sound(snd_main_menu);
	audio_play_sound(snd_rivalstation,2,1);
	audio_sound_gain(snd_rivalstation,0,0)
	audio_sound_gain(snd_rivalstation,global.Fon_sound_gain,gain_increase)
	old_sound = snd_rivalstation;
	}
	global.gameStart = 1;
	
	show_debug_message("scr_newgame")
	with(obj_loading)
	{
		alarm[0] = 1;
	}
	
global.res_width = display_get_width();
global.res_height = display_get_height();
global.aspect = global.res_width/global.res_height;
global.screen_width = 1920
global.screen_height = 1080
global.shop = false
global.dialog_end = 1;
global.fullscreen = 1;
global.rezolution = 1;
global.master = 0.5;
global.sequence = 0;
global.task = 0;
global.noRest = 0;
global.boss = 0;
global.money = 20;
global.diary = false;
global.dialog_end = 1;
global.shop = false;
global.battle = false;
global.certificate =0;
global.item_bought = false;
global.dialogue_move = false;
global.zaniatui = false;
global.day = 1;
global.sekta = true;


	
}