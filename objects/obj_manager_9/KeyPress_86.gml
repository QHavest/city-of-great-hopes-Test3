if(a == 1 and start = 1)
{
	global.task = 0;
	var playerInst1 = instance_find(obj_dim_player2,0);

	var sequence = seq_scena_9_1;
	layer_create(-9999, "Cutscenes2");
	var layerName = "Cutscenes2";

	global.shop = true;
	audio_stop_all();

	seq4 = layer_sequence_create(layerName, 0,0, sequence);
	var seqInst = layer_sequence_get_instance(seq4);

	sequence_instance_override_object(seqInst, obj_dim_player2,  playerInst1);
}

else exit;