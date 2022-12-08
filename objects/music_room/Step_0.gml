

if audio_sound_get_gain(old_sound) = 0 
{
	audio_stop_sound(old_sound)
	audio_play_sound(new_sound,8,1);
	old_sound = new_sound;
}

//scr_play_fon_music(room);