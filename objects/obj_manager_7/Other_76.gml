if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    
	case "start":
	a = 1;
	
	break;
	
	case "dialog1":
	pause = true;
	scr_create_textbox("scena_7_1");
	
	break;
	
	case "dialog2":
	pause = true;
	scr_create_textbox("scena_7_2");
	
	break;
	
	case "dialog3":
	pause = true;
	scr_create_textbox("scena_7_3");
	
	break;
	
    case "delete":
	global.shop = false;
    layer_sequence_destroy(seq2);
    break;
  }
}