if(pause == true)
{
	layer_sequence_pause(seq_rest);
	if(instance_exists(obj_dim_textbox))
	{
		exit;
	}
	else
	{
		layer_sequence_play(seq_rest);
		pause = false;
	}
}

if(pause2 == true)
{
	layer_sequence_pause(seq_rest_2);
	if(instance_exists(obj_dim_textbox))
	{
		exit;
	}
	else
	{
		layer_sequence_play(seq_rest_2);
		pause2 = false;
	}
}

//if(booking == true)
//{
//	booking = false;
//	seq2 = layer_sequence_create("Instances_obj", 0, 0, seq_restoraunt_booking);
//	layer_sequence_destroy(seq1);
			
//}