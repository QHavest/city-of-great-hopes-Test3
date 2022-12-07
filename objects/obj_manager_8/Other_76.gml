if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    
	case "start":
	//regCam1 = view_get_camera(0);
	//regCam2 = view_get_camera(1);
	//var cam1 = camera_create_view(1890, 112, 533, 300, 0, obj_camera, -1, -1, 250, 150);
	//view_set_camera(0, cam1);
	//view_set_camera(1, cam1);
	
	case "dialog80":
	scr_create_textbox("scena_8");
	pause = true;
	
    case "delete":
	//view_set_camera(0, regCam1);
	//view_set_camera(1, regCam2);
	global.shop = false;
    layer_sequence_destroy(seq3);
    break;
  }
}