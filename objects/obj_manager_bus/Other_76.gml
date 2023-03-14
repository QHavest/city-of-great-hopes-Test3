if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {

    case "destroy_bus":
		layer_sequence_destroy(seq_buses);
		layer_destroy("Cutcenes");
    break;
  }
}

	//obj_dim_player1.x = obj_player_1.x;
	//obj_dim_player1.y = obj_player_1.y;

	//obj_dim_player2.x = obj_player_2.x;
	//obj_dim_player2.y = obj_player_2.y;
