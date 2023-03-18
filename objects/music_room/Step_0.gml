/*if new_sound!= noone
{

}
else // ставим на паузу музику з вулиці
{
	if  audio_sound_get_gain(old_sound) == 0 and new_sound!=old_sound
	{
		audio_pause_sound(old_sound)
		old_sound = new_sound;
		//show_debug_message("audio_paused");
	}
}
*/