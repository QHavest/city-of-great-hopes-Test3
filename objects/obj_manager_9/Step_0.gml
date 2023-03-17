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
	global.task = 0;
	var playerInst1 = instance_find(obj_dim_player2,0);
	//var objInst1 = instance_find(obj_lotki_night2,0);
	//var objInst2 = instance_find(obj_lamp_fish_and_bazaar_night,0);
	//var objInst3 = instance_find(obj_dumb_bazaar_night,0);
	////var objInst5 = instance_find(obj_closed_containers,0);
	//var objInst6 = instance_find(obj_lotki_night1,0);
	//var objInst7 = instance_find(obj_fish_havhav,0);
	//var objInst8 = instance_find(obj_lamp_fish2,0);
	//var objInst9 = instance_find(obj_truck_first,0);
	//var objInst10 = instance_find(obj_dumb_fish,0);
	//var objInst11 = instance_find(obj_box_fish,0);
	//var objInst12 = instance_find(obj_sign_back,0);
	//var objInst13 = instance_find(obj_sign_back1,0);
	//var objInst14 = instance_find(obj_lamp_fish,0);


	var sequence = seq_scena_9_1;
	layer_create(-9999, "Cutscenes2");
	var layerName = "Cutscenes2";

	global.shop = true;
	audio_stop_all();

	seq4 = layer_sequence_create(layerName, 0,0, sequence);
	var seqInst = layer_sequence_get_instance(seq4);

	sequence_instance_override_object(seqInst, obj_dim_player2,  playerInst1);
	//sequence_instance_override_object(seqInst, obj_lotki_night2,  objInst1);
	//sequence_instance_override_object(seqInst, obj_lamp_fish_and_bazaar_night,  objInst2);
	//sequence_instance_override_object(seqInst, obj_dumb_bazaar_night,  objInst3);
	////sequence_instance_override_object(seqInst, obj_closed_containers,  objInst5);
	//sequence_instance_override_object(seqInst, obj_lotki_night1,  objInst6);
	//sequence_instance_override_object(seqInst, obj_fish_havhav,  objInst7);
	//sequence_instance_override_object(seqInst, obj_lamp_fish2,  objInst8);
	//sequence_instance_override_object(seqInst, obj_truck_first,  objInst9);
	//sequence_instance_override_object(seqInst, obj_dumb_fish,  objInst10);
	//sequence_instance_override_object(seqInst, obj_box_fish,  objInst11);
	//sequence_instance_override_object(seqInst, obj_sign_back,  objInst12);
	//sequence_instance_override_object(seqInst, obj_sign_back1,  objInst13);
	//sequence_instance_override_object(seqInst, obj_lamp_fish,  objInst14);
}