if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    case "camera1":
	regularCam0 = view_get_camera(0);
	regularCam1 = view_get_camera(1);
    var cams1 = camera_create_view(1919, 150, 240, 120);
	view_set_camera(0, cams1);
	view_set_camera(1, cams1);
    break;

    case "camera2":
    view_set_camera(0, regularCam0);
	view_set_camera(1, regularCam1);
    break;
    
    case "stop":
    layer_sequence_destroy(_seqElm);
    break;
  }
}