if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    case "end":
	layer_sequence_destroy(seq_menu);
	layer_destroy("dark");
	back_menu();
	break;
	
    case "destroy":
	layer_sequence_destroy(seq_dark);
	break;
  }
}