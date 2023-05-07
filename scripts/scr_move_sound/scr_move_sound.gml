// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_sound(){
//	show_debug_message (image_index)
if  ( round(image_index)=2  or round(image_index)=6) // на цих кадрах выдбувається крок 
{//show_debug_message(s_ind)
if (s_ind){
	//ind++;
	if (run == false){ 
		if (InRoomMode)
		{
			if (!audio_is_playing(snd_step_inside))
			{audio_play_sound(snd_step_inside,0,false,global.player_gain);}
		}
		else 
		{
			if (!audio_is_playing(snd_step))
			{audio_play_sound(snd_step,0,false,global.player_gain);}
			//show_debug_message("zvyk")
			//show_debug_message(s_ind)
		}
	} 
	else// if run = true
	{	
		if (InRoomMode = false)
		{
			if (hsp!=0){
				if (!audio_is_playing(snd_run_1) and !audio_is_playing(snd_run_2) and !audio_is_playing(snd_run_3) and !audio_is_playing(snd_run_4))
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
				if (!audio_is_playing(snd_step))
				{audio_play_sound(snd_step,0,false,global.player_gain);}
			}	
		}
		else   
		{
			if (!audio_is_playing(snd_step_inside))
			{audio_play_sound(snd_step_inside,0,false,global.player_gain);}
		}
	}
}}}