if event_data [? "event_type"] == "sequence event"
{
	switch (event_data[? "message"])
	{
		case "camera1":
		//var cam = view_get_camera(1);
		//var cw = camera_get_view_width(cam);
		//var ch = camera_get_view_height(cam);
		camera_set_view_pos(view_camera[1],obj_title_s.x+300,obj_title_s.y)
		view_set_visible(0, false);
		view_set_visible(1, true);
		break;
		
		case "camera0":
		/*cam = view_get_camera(0);
		cw = camera_get_view_width(cam);
		ch = camera_get_view_height(cam);
		cx = camera_set_view_pos(view_camera[0],obj_dim_player2_cut.x,obj_dim_player2_cut.y)
		view_set_visible(1, false);
		view_set_visible(0, true);*/
		break;
		
		case "stop":
		layer_sequence_destroy(_seqElm);
		break;
	}
}

//layer_sequence_destroy(_seqElm);
//instance_create_layer(272,103,"Instances_obj",obj_trigger2)
//sequence_instance_override_object(obj_dim_player1,obj_dim_player1)