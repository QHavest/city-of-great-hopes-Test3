// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function back_menu(){	
scr_music_fon_change(rm_main_menu)
if(audio_is_playing(snd_svust))
{
	audio_stop_sound(snd_svust);
}
global.dialogue_move=false;
room_goto(rm_main_menu)
}