if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
		case "seq_loc_deletes":
           	layer_sequence_destroy(sequence_id);
			layer_destroy("Transition_loc");
        break;

    }
}