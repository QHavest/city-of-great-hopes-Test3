if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
	case "end":
	layer_destroy("cut");
	layer_sequence_destroy(seq_AF);
	room_goto(rm_end);
	instance_destroy();
	break;
	
  }
}