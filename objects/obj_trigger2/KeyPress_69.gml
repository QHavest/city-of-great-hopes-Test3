if(pause1)
{
	layer_sequence_play(_seqElms);
	pause1 = false;
	instance_destroy(obj_dim_textbox);
}

else exit;
