//if(daycycle.phase1 == phase.nighttime or daycycle.phase1 == phase.nighttime1 or daycycle.phase1 == phase.nighttime2)
//{

	var playerInst1 = instance_find(obj_dim_player2,0);
	var objInst1 = instance_find(obj_lotki_night2,0);
	var objInst2 = instance_find(obj_lamp_fish_and_bazaar_night,0);
	var objInst3 = instance_find(obj_dumb_bazaar_night,0);
	var objInst4 = instance_find(obj_vegetables,0);
	var objInst5 = instance_find(obj_closed_containers,0);


	var sequence = seq_scena_9_1;
	var layerName = "Cutscenes";

	global.shop = true;
	audio_stop_all();

	seq4 = layer_sequence_create(layerName, 0,0, sequence);
	var seqInst = layer_sequence_get_instance(seq4);

	sequence_instance_override_object(seqInst, obj_dim_player2,  playerInst1);
	sequence_instance_override_object(seqInst, obj_lotki_night2,  objInst1);
	sequence_instance_override_object(seqInst, obj_lamp_scena_9,  objInst2);
	sequence_instance_override_object(seqInst, obj_dumb_bazaar_night,  objInst3);
	sequence_instance_override_object(seqInst, obj_vegetables,  objInst4);
	sequence_instance_override_object(seqInst, obj_closed_containers,  objInst5);
//}
//else exit;