if(pause == false)
{
	
}

if(pause == true)
{
	layer_sequence_pause(seq1);
	obj_player_1.image_index = spr_dim_Ytopurok_stay_r;
	obj_player_2.image_index = spr_dim_Krus_stay_l;
	obj_player_1.image_speed = 1;
	obj_player_2.image_speed = 1;
}
