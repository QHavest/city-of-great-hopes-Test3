// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_sound(){
if ((s_ind) and (image_index=2 or image_index=6)){
	if (run == false){ 
		audio_play_sound(snd_step,0,0,global.player_gain);
		if audio_is_playing(snd_run) audio_stop_sound(snd_run);
	} 
	else// if run = true
	{	
		if ((InRoomMode = false) and (hsp!=0))
		{
			if (!audio_is_playing(snd_run)) {audio_play_sound(snd_run,0,0,global.player_gain);}
			if (audio_is_playing(snd_step))	{ audio_stop_sound(snd_step);}
		}
		else  // if in room = true
		{
			//if !audio_is_playing(snd_step) 
			audio_play_sound(snd_step,0,0,global.player_gain);
			if (audio_is_playing(snd_run)) { audio_stop_sound(snd_run);}
		}
	
	}}
//else{
		
//		audio_stop_sound(snd_step);
//		audio_stop_sound(snd_run);
//	}
}