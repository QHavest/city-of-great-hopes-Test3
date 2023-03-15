//if(room != rm_street_container or room != rm_home_gg) {exit}

if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
	case "start2":
		//layer_sequence_pause(seq_buses2);
		instance_destroy(obj_bus_stay);
    break;

    case "destroy_bus":
		layer_sequence_destroy(seq_bus);
		layer_destroy("Cutcenes");
		//start = true;
		show_debug_message("destroy");
    break;

    case "mp_open":
	if (instance_exists(obj_mp_open)){obj_mp_open.start = true;}
		//mp_open = 1;
		//if room==rm_street_container instance_activate_object(inst_3011B2F9);
		//else instance_activate_object(inst_3011B2F9);
    break;
	
    case "mp_close":
	if (instance_exists(obj_mp_open)){obj_mp_open.start = false;}
		//mp_open = 0;
		//if room==rm_street_container instance_deactivate_object(inst_3011B2F9);
		//else instance_deactivate_object(inst_3011B2F9);
    break;
  }
}

	//obj_dim_player1.x = obj_player_1.x;
	//obj_dim_player1.y = obj_player_1.y;

	//obj_dim_player2.x = obj_player_2.x;
	//obj_dim_player2.y = obj_player_2.y;
