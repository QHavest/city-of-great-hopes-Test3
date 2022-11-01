if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    case "camera1":
	regularCam0 = view_get_camera(0);
	regularCam1 = view_get_camera(1);
	
	cam_w = 240;
	cam_x = 1919;
	
    var cams1 = camera_create_view(cam_x, 150, cam_w, 120);
	view_set_camera(0, cams1);
	view_set_camera(1, cams1);
    break;

    case "camera2":
    view_set_camera(0, regularCam0);
	view_set_camera(1, regularCam1);
	
	//obj_dim_textbox.text_width;
	//obj_dim_textbox.cam_x = 1919;
    break;
	
	case "dial_start":
	//layer_sequence_pause(_seqElm);
	//obj_player_1.image_speed = 1;
	//obj_player_2.image_speed = 1;
    scr_create_textbox("scena_6");
	
    break;
	
    case "delete":
    layer_sequence_destroy(_seqElm);
    break;
  }
}