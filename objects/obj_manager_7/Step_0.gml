if(pause == true)
{
	layer_sequence_pause(seq2);
	if(instance_exists(obj_dim_textbox))
	{
		exit;
	}
	else
	{
		layer_sequence_play(seq2);
		pause = false;
	}
}

if(in_sequence) audio_listener_set_position(0, obj_player_1_7.x, obj_player_1_7.y, 0);




//if(a == 1){
//obj_dim_player1.x = obj_player_1_7.x;
//obj_dim_player1.y = obj_player_1_7.y;

//obj_dim_player2.x = obj_player_2_7.x;
//obj_dim_player2.y = obj_player_2_7.y;}

//if(audio_sound_get_gain(snd_svust) <= 0) audio_stop_sound(snd_svust);

//if(audio_sound_get_gain(snd_mandarun) <= 0) audio_stop_sound(snd_mandarun);