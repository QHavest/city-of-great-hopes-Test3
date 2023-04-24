if(pause == true)
{
	layer_sequence_pause(seq2);
	if(instance_exists(obj_dim_textbox_gui))
	{
		exit;
	}
	else
	{
		layer_sequence_play(seq2);
		pause = false;
	}
}
if(start)
{
	audio_listener_set_position(0, obj_camera.x, obj_camera.y, 0);
	//show_debug_message("x: " + string(obj_player_1_7.x) + "y: " + string(obj_player_1_7.y));
}

if(variant = 2)
{
	variant = 1;
	obj_seq_krus_stepBack.sprite_index = spr_seq_krus_stepBack;
	obj_player_2_7_dial.sprite_index = spr_dim_Krus_stay_l;
	obj_player_2_7.sprite_index = spr_clear;
}

//if(a == 1){
//obj_dim_player1.x = obj_player_1_7.x;
//obj_dim_player1.y = obj_player_1_7.y;

//obj_dim_player2.x = obj_player_2_7.x;
//obj_dim_player2.y = obj_player_2_7.y;}

//if(audio_sound_get_gain(snd_svust) <= 0) audio_stop_sound(snd_svust);

//if(audio_sound_get_gain(snd_mandarun) <= 0) audio_stop_sound(snd_mandarun);