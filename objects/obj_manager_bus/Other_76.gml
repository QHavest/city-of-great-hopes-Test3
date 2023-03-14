//if(room != rm_street_container or room != rm_home_gg) {exit}

if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {

    case "destroy_bus":
		layer_sequence_destroy(seq_buses);
		layer_destroy("Cutcenes");
		//start = true;
		show_debug_message("destroy");
    break;

    case "mp_open":
		//mp_open = 1;
		if room==rm_street_container instance_activate_object(inst_3011B2F9);
		else instance_activate_object(inst_3011B2F9);
    break;
	
    case "mp_close":
		//mp_open = 0;
		if room==rm_street_container instance_deactivate_object(inst_3011B2F9);
		else instance_deactivate_object(inst_3011B2F9);
    break;
  }
}

	//obj_dim_player1.x = obj_player_1.x;
	//obj_dim_player1.y = obj_player_1.y;

	//obj_dim_player2.x = obj_player_2.x;
	//obj_dim_player2.y = obj_player_2.y;
