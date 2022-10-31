if event_data [? "event_type"] == "sequence event"
{
	switch (event_data[? "message"])
	{
		case "cameras":
		
		/*cam = view_get_camera(1);
		cw = camera_get_view_width(cam);
		ch = camera_get_view_height(cam);
		camera_set_view_pos(cam,x + (cw / 2-300) , y + (ch / 2-300))*/
		//view_set_visible(0, false);
		var camsi = camera_create_view(0, 0, 213, 120, 0, obj_krus_throw_pillow, -1, -1, 300, 50);
		view_set_camera(4, camsi);
		view_set_visible(4, true);
		view_set_visible(2, false);
		break;
		
		case "wakeup":
	/*	layer_sequence_pause(_seqElms);
		//scr_create_textbox("Krus_day2");
		layer_sequence_play(_seqElms);*/
		break;
		
		
		case "pause":
	//	layer_sequence_pause(_seqElms);
		scr_create_textbox("Krus_day3");
		//layer_sequence_play(_seqElms);
		break;
		
		case "stops":
		layer_sequence_destroy(_seqElms);
		var cams = camera_create_view(0, 0, 213, 120, 0, obj_dim_player2_cut, -1, -1, 300, 50);
		view_set_camera(2, cams);
		view_set_visible(2, true);
		view_set_visible(4, false);

		break;
	}
}