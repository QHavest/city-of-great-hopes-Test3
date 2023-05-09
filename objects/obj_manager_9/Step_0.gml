if(pause == true)
{
	layer_sequence_pause(seq4);
	if(instance_exists(obj_dim_textbox_gui))
	{
		exit;
	}
	else
	{
		layer_sequence_play(seq4);
		pause = false;
	}
}

if(a == 1 and global.task == 3)
{
	obj_inventory.visible = 0;
	instance_deactivate_object(inst_BC79744);
	instance_deactivate_object(inst_76BF6B0C);
	instance_deactivate_object(inst_230D9CF0);
	global.task = 0;
	//var playerInst1 = instance_find(obj_dim_player2,0);

	if(global.LANGUAGE == "ua") var sequence = seq_scena_9_start_ukr;
	else var sequence = seq_scena_9_start_eng;
	layer_create(-300, "Cutscenes2");
	var layerName = "Cutscenes2";

	global.shop = true;
	audio_stop_all();

	seq_start = layer_sequence_create(layerName, 0,0, sequence);
	//var seqInst = layer_sequence_get_instance(seq4);

	//sequence_instance_override_object(seqInst, obj_dim_player2,  playerInst1);

}

//if(global.task == 2 and start_scena8 == true)
//{
//	room_goto(rm_street_container);
//}
