if !audio_is_playing(new_sound) 
{ if  new_sound != noone 
	{	audio_stop_sound(old_sound);
		audio_play_sound(new_sound,8,1);
		audio_sound_gain(new_sound,0.5,500)
		old_sound = new_sound;
		show_debug_message("sound started");
	}
}	
//show_debug_message("room started");




