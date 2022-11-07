if event_data [? "event_type"] == "sequence event"
{
	switch (event_data[? "message"])
	{
		case "cameras":
		/*
		var camsi = camera_create_view(0, 0, 213, 120, 0, obj_krus_throw_pillow, -1, -1, 300, 50);
		view_set_camera(4, camsi);
		view_set_visible(4, true);
		view_set_visible(2, false);*/
		view_visible[1]= false;
		camera_destroy(view_camera[1]);
		view_visible[4] = true;
		var cams2 = camera_create_view(0, 0, 213, 120, 0, obj_krus_throw_pillow, -1, -1, 300, 50);
		view_set_camera(4, cams2);
		break;
		
		case "wakeup":
		scr_create_textbox("Krus_day2");
		
		break;
		
		
		case "pause":
	//	layer_sequence_pause(_seqElms);
		//instance_destroy(obj_dim_textbox);
		scr_create_textbox("Krus_day3");
		//layer_sequence_play(_seqElms);
		break;
		
		case "Ytopur":
		instance_destroy(obj_dim_textbox);
		view_visible[4]= false;
		camera_destroy(view_camera[4]);
		view_visible[5] = true;
		var cams5 = camera_create_view(0, 0, 213, 120, 0, obj_dim_player2, -1, -1, 300, 50);
		view_set_camera(5, cams5);
		break;
		
		case "stops":
		layer_sequence_destroy(_seqElms);
	
		/*var cams = camera_create_view(0, 0, 213, 120, 0, obj_dim_player2_cut, -1, -1, 300, 50);
		view_set_camera(2, cams);
		view_set_visible(2, true);
		view_set_visible(4, false);*/
		
		break;
	}
}