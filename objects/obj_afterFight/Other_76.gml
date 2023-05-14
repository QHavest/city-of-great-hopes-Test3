if event_data [? "event_type"] == "sequence event"
{
	switch (event_data[? "message"])
	{
		case "destroy":
			layer_destroy("seqAF");
			layer_sequence_destroy(seq_af);
		break;
	}
}