myEmitter =0;

if useSound != noone
{
	if !audio_is_playing(useSound)
	{
		if !audio_emitter_exists(myEmitter)
		{
			myEmitter = audio_emitter_create();
			audio_emitter_position(myEmitter,x,y,0);
			audio_falloff_set_model(audio_falloff_linear_distance);
			audio_emitter_falloff(myEmitter,fallStart,maxDist,1);
			show_debug_message("emitter creataed");
		}
		audio_play_sound_on(myEmitter,useSound,1,5);
		audio_sound_gain(useSound,0,0);
		audio_sound_gain(useSound,global.Fon_sound_gain,4000);
	}
	
}

//if(room == rm_main_menu)
//{
//	audio_emitter_gain(myEmitter, 0);
//	audio_emitter_free(myEmitter);
//}
	




