if event_data [? "event_type"] == "sequence event"
{
	switch (event_data[? "message"])
	{
		case "start":
		
		global.shop = 1;
		regCam1 = view_get_camera(0);
		regCam2 = view_get_camera(1);
		cams2 = camera_create_view(0,0, 213, 120, 0, obj_camera, -1, -1, 300, 50);
		view_set_camera(0, cams2);
		view_set_camera(1, cams2);
			
		break;
		
		case "stop":
		view_set_camera(0, regCam1);
		view_set_camera(1, regCam2);
		layer_sequence_destroy(_seqElmi);
		break;
		
		case "seq2":
		with(obj_trigger2) {start = 1;};
		break;
	}
}