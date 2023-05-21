

if(take)
{
	take = 0;
	seq5_2 = layer_sequence_create("Cutscenes2", x, y, seq_sektants_take);
	layer_sequence_pause(seq5_2);
	alarm[0] = 1;
	seq_num = 2;
}

if(pause == true)
{
	if(instance_exists(obj_dim_textbox_gui))
	{
		exit;
	}
	else
	{
		if(global.shop == false) exit;
		
		if(seq_num == 1)
		{
			layer_sequence_play(seq5);
		}
		
		if(seq_num == 2)
		{
			layer_sequence_play(seq5_2);
		}
		pause = false;
	}
}