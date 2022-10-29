if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    case "camera1":
	var cam = view_get_camera(2);
	var cw = camera_get_view_width(cam);
	var ch = camera_get_view_height(cam);
	view_set_visible(0, true);
	view_set_visible(1, false);
	view_enabled = true;
	view_visible[2] = true;
	view_set_camera(2, view_camera[2]);
	break;
	
	case "camera2":
	break;
	
	
    case "delete":
    layer_sequence_destroy(_seqElm);
    break;
  }
}
