// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_sound(){
if ((s_ind) and (image_index=2 or image_index=6)){
	if (run == false){ 
		if (InRoomMode)
		{
			audio_stop_sound(snd_step_inside);
			audio_play_sound(snd_step_inside,0,false,global.player_gain);
		}
		else 
		{
			audio_stop_sound(snd_step);
			audio_play_sound(snd_step,0,false,global.player_gain);
		}
	} 
	else// if run = true
	{	
		if (InRoomMode = false)
		{
			if (hsp!=0){
				switch (irandom_range(1,4))
				{ 
					case 1 : audio_play_sound(snd_run_1,0,false,global.player_gain);
					break
					case 2 : audio_play_sound(snd_run_2,0,false,global.player_gain);
					break
					case 3 : audio_play_sound(snd_run_3,0,false,global.player_gain);
					break
					case 4 : audio_play_sound(snd_run_4,0,false,global.player_gain);
					break
				}
			}
			else 
			{
				audio_stop_sound(snd_step);
				audio_play_sound(snd_step,0,false,global.player_gain);
			}	
		}
		else   
		{
			audio_stop_sound(snd_step_inside);
			audio_play_sound(snd_step_inside,0,false,global.player_gain);
		}
	}
}}