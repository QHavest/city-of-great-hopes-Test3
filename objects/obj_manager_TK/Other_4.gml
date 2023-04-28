if(room == rm_tri_kalynky_boss)
{
	var playerInst4 = instance_find(obj_dim_player1,0);
	var playerInst5 = instance_find(obj_dim_player2,0);

	var sequence = seq_tru_kalunku;
	layer_create(-200, "CUT");
	var layerName = "CUT";

	global.shop = true;

	scr_music_fon_change(seq_scena_6);

	seq_TK = layer_sequence_create(layerName, 0,0, sequence);
	var seqInst = layer_sequence_get_instance(seq_TK);

	sequence_instance_override_object(seqInst, obj_dim_player1,  playerInst4);
	sequence_instance_override_object(seqInst, obj_dim_player2,  playerInst5);
}