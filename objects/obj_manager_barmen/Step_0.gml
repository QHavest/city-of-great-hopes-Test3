//if(pause == true)
//{
//	layer_sequence_pause(seq_rest_bar);
//	if(instance_exists(obj_dim_textbox_gui))
//	{
//		exit;
//	}
//	else
//	{
//		layer_sequence_play(seq_rest_bar);
//		pause = false;
//	}
//}
if(start)
{
	start = false;
	var playerInst1 = instance_find(obj_dim_player1,0);
	var playerInst2 = instance_find(obj_dim_player2,0);

	var objInst1 = instance_find(obj_bar,0);

	//var objInst2 = instance_find(obj_this_is_a_table,0);
	//var objInst3 = instance_find(obj_this_is_a_table,0);
	//var objInst4 = instance_find(obj_this_is_a_table,0);
	//var objInst5 = instance_find(obj_this_is_a_table,0);
	//var objInst6 = instance_find(obj_this_is_a_table,0);
	//var objInst7 = instance_find(obj_this_is_a_table,0);
	//var objInst8 = instance_find(obj_this_is_a_table,0);

	var objInst9 = instance_find(obj_waiter,0);
	var objInst10 = instance_find(obj_shtory,0);
	var objInst11 = instance_find(obj_barmen,0);

	var sequence = seq_restoraunt_barmen;
	layer_create(-249, "Cutcenes");
	var layerName = "Cutcenes";

	global.shop = true;

	seq_rest_bar = layer_sequence_create(layerName, 0,0, sequence);
	var seqInst = layer_sequence_get_instance(seq_rest_bar);

	sequence_instance_override_object(seqInst, obj_dim_player1,  playerInst1);
	sequence_instance_override_object(seqInst, obj_dim_player2,  playerInst2);

	sequence_instance_override_object(seqInst, obj_bar,  objInst1);

	//sequence_instance_override_object(seqInst, obj_this_is_a_table,  objInst2);
	//sequence_instance_override_object(seqInst, obj_this_is_a_table,  objInst3);
	//sequence_instance_override_object(seqInst, obj_this_is_a_table,  objInst4);
	//sequence_instance_override_object(seqInst, obj_this_is_a_table,  objInst5);
	//sequence_instance_override_object(seqInst, obj_this_is_a_table,  objInst6);
	//sequence_instance_override_object(seqInst, obj_this_is_a_table,  objInst7);
	//sequence_instance_override_object(seqInst, obj_this_is_a_table,  objInst8);

	sequence_instance_override_object(seqInst, obj_waiter,  objInst9);
	sequence_instance_override_object(seqInst, obj_shtory,  objInst10);
	sequence_instance_override_object(seqInst, obj_barmen,  objInst11);
}

if(instance_exists(obj_trigger_barmen_2) and global.noRest == 2) instance_destroy(obj_trigger_barmen_2);

//if(phase_seq == 1)
//{
//	instance_deactivate_object(obj_trigger_barmen);
//	instance_activate_object(obj_trigger_barmen_2);
//}
//if(phase_seq == 2)
//{
//	instance_destroy(obj_trigger_barmen_2);
//	instance_activate_object(obj_trigger_barmen);
//}

