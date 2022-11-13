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
//if(a == 1){
//obj_dim_player1.x = obj_player_1_7.x;
//obj_dim_player1.y = obj_player_1_7.y;

//obj_dim_player2.x = obj_player_2_7.x;
//obj_dim_player2.y = obj_player_2_7.y;}
