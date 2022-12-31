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