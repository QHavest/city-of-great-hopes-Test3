
//if audio_is_playing(old_sound)
if audio_is_playing(old_sound) and audio_sound_get_gain(old_sound) = 0
{
	//audio_play_sound(new_sound,8,1);
	audio_stop_sound(old_sound);
	show_debug_message("sound stoped");
}



//scr_play_fon_music(room);