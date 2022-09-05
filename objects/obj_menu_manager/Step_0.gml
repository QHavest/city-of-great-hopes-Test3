/// @description Insert description here
// You can write your code in this editor
//scr_play_fon_music(room);

if (room== rm_settings or room == rm_main_menu)
{
	if sounds!= snd_main_menu {
		audio_stop_sound(sounds);
		sounds = snd_main_menu;
		audio_play_sound(sounds,1,1);
		} 
}





