if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
		case "seq_loc_deletes":
           	layer_sequence_destroy(sequence_ids);
			sequence_ids = noone;
			layer_destroy("Transition_loc");
        break;

    }
}