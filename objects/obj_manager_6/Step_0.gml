if(pause == true)
{
	layer_sequence_pause(seq1);
	if(instance_exists(obj_dim_textbox))
	{
		exit;
	}
	else
	{
		layer_sequence_play(seq1);
		pause = false;
	}
}