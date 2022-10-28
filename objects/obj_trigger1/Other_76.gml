if event_data [? "event_type"] == "sequence event"
{
	switch (event_data[? "message"])
	{
		case "stop":
		layer_sequence_destroy(_seqElm);
		break;
	}
}

//layer_sequence_destroy(_seqElm);
//instance_create_layer(272,103,"Instances_obj",obj_trigger2)
//sequence_instance_override_object(obj_dim_player1,obj_dim_player1)