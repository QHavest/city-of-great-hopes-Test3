// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_change_music_vol(){
	global.Fon_sound_gain = argument[0];
	with(music_room)
	{
		audio_sound_gain(new_sound, global.Fon_sound_gain, gain_increase);
	}
}