/// @description stop_start_audio
//if old_sound!=new_sound{
		audio_stop_sound(old_sound);
		audio_play_sound(new_sound,2,1);
		audio_sound_gain(new_sound,0,0)
		audio_sound_gain(new_sound,global.Fon_sound_gain,gain_increase)
		old_sound = new_sound;
//}
//		show_debug_message("alarmed");