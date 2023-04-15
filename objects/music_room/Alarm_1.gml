/// @description resume_paused
if (audio_is_paused(new_sound))
		{
			audio_resume_sound(new_sound)
			audio_sound_gain(new_sound,0,0)
			audio_sound_gain(new_sound,global.Fon_sound_gain,gain_increase)
			//show_debug_message("audio_resume");
		}
		// якщо ми переходим в головне меню з кімнати
else if (!audio_is_playing(new_sound))
		{
		audio_play_sound(new_sound,8,1)
		audio_sound_gain(new_sound,0,0)
		audio_sound_gain(new_sound,global.Fon_sound_gain,gain_increase)	
		}
old_sound = new_sound;