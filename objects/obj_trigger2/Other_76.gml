if event_data [? "event_type"] == "sequence event"
{
	switch (event_data[? "message"])
	{
		case "stops":
		layer_sequence_destroy(_seqElms);
		break;
	}
}