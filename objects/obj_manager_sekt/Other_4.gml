if(daycycle.night == false and global.sekta == true)
{
	global.sekta = false;
	var playerInst2 = instance_find(obj_dim_player2,0);
	var playerInst1= instance_find(obj_dim_player1, 0);
	
	var objInst1 = instance_find(obj_sekt_2,0);
	var objInst2 = instance_find(obj_sekt_3,0);
	var objInst3 = instance_find(obj_sekt_4,0);

	var sequence = seq_sektants_throw;
	layer_create(-250, "Cutscenes2");
	var layerName = "Cutscenes2";

	global.shop = true;

	seq5= layer_sequence_create(layerName, x,y, sequence);
	var seqInst = layer_sequence_get_instance(seq5);

	sequence_instance_override_object(seqInst, obj_dim_player2,  playerInst2);
	sequence_instance_override_object(seqInst, obj_dim_player1,  playerInst1);
	
	sequence_instance_override_object(seqInst, obj_sekt_2,  objInst1);
	sequence_instance_override_object(seqInst, obj_sekt_3,  objInst2);
	sequence_instance_override_object(seqInst, obj_sekt_4,  objInst3);

	obj_dim_player1.x = 0;
	obj_dim_player2.x = 0;
	
	seq_num = 1;
}