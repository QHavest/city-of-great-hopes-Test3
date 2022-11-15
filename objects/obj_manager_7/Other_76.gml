if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    
	case "start":
	regCam1 = view_get_camera(0);
	regCam2 = view_get_camera(1);
	var cam1 = camera_create_view(1890, 112, 533, 300, 0, obj_camera, -1, -1, 250, 150);
	view_set_camera(0, cam1);
	view_set_camera(1, cam1);
	//a = 1;
	
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
	
	case "dialog4":
	pause = true;
	scr_create_textbox("scena_7_4");
	
	break;
	
    case "delete":
	obj_center_fontan.x = x1;
	obj_center_fontan.y = y1;
	//obj_center_goluby.depth = dep1;
	view_set_camera(0, regCam1);
	view_set_camera(1, regCam2);
	global.shop = false;
    layer_sequence_destroy(seq2);
    break;
  }
}