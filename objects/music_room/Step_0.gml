if new_sound!= noone
{
	if  audio_sound_get_gain(old_sound) == 0 and old_sound!=noone
	{
		//audio_play_sound(new_sound,8,1);
		audio_stop_sound(old_sound);
		audio_play_sound(new_sound,8,1);
		audio_sound_gain(new_sound,0,0)
		audio_sound_gain(new_sound,1,2000)
		old_sound = new_sound;
		show_debug_message("sound stoped");
	}
	if old_sound = noone
	{
		audio_resume_sound(new_sound)
		audio_sound_gain(new_sound,1,2000)
		old_sound = new_sound;
		show_debug_message("audio_resume");
	}
}
else // ставим на паузу музику з вулиці
{
	if  audio_sound_get_gain(old_sound) == 0 and new_sound!=old_sound
	{
		audio_pause_sound(old_sound)
		old_sound = new_sound;
		show_debug_message("audio_paused");
	}
}
// продовжуєм музику вулиці при виході


//scr_play_fon_music(room);