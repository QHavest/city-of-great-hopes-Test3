if(take)
{
	take = 0;
	seq5_2 = layer_sequence_create("Cutscenes2", x, y, seq_sektants_take);
	layer_sequence_pause(seq5_2);
	alarm[0] = 10;
}

if(pause == true)
{
	if(instance_exists(obj_dim_textbox_gui))
	{
		exit;
	}
	else
	{
		layer_sequence_play(seq5_2);
		pause = false;
	}
}