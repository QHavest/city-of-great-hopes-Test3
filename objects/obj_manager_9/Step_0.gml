if(pause == true)
{
	layer_sequence_pause(seq4);
	if(instance_exists(obj_dim_textbox))
	{
		exit;
	}
	else
	{
		layer_sequence_play(seq4);
		pause = false;
	}
}
//if(a==1)
//{
//	obj_dim_player2.x = obj_player_2_9.x;
//	obj_dim_player2.y = obj_player_2_9.y;
//}