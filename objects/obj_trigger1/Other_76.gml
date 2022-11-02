if event_data [? "event_type"] == "sequence event"
{
	switch (event_data[? "message"])
	{
		case "camera1":
		/*cam = view_get_camera(0);
		cw = camera_get_view_width(cam);
		ch = camera_get_view_height(cam);
		camera_set_view_pos(cam, x + (cw / 2) , y + (ch / 2))*/
		//view_set_visible(1, false);
		//view_set_visible(0, true);
		/*cams = camera_create_view(0, 0, 213, 120, 0, obj_title_s, -1, -1, 300, 50);
		view_set_camera(0, cams);
		view_set_visible(0, true);
			view_set_visible(2, false);*/
			//view_visible[0] =  true	;
			break;
		
		case "camera3":
		view_visible[0]= false;
		camera_destroy(view_camera[0]);
		view_visible[3] = true;
		cams = camera_create_view(0, 0, 213, 120);
		view_set_camera(3, cams);
		break;
		
		case "camera0":
		
		/*cam = view_get_camera(1);
		cw = camera_get_view_width(cam);
		ch = camera_get_view_height(cam);
		camera_set_view_pos(cam,x + (cw / 2-300) , y + (ch / 2-300))*/
		//view_set_visible(0, false);
		view_visible[3]= false;
		camera_destroy(view_camera[3]);
		view_visible[1] = true;
		var cams1 = camera_create_view(0, 0, 213, 120, 0, obj_dim_player2_cut, -1, -1, 300, 50);
		view_set_camera(1, cams1);
	/*cams = camera_create_view(0, 0, 213, 120, 0, obj_dim_player2_cut, -1, -1, 300, 50);
		view_set_camera(2, cams);
		view_set_visible(2, true);
		view_set_visible(0, false);
		view_set_visible(3, false);*/
		break;
		
		case "stop":
		layer_sequence_destroy(_seqElm);
		//obj_dim_textbox.midle_x =obj_dim_textbox.cam_x + obj_dim_textbox.cam_w/2;
		scr_create_textbox(text_id);
		break;
	}
}

//layer_sequence_destroy(_seqElm);
//instance_create_layer(272,103,"Instances_obj",obj_trigger2)
//sequence_instance_override_object(obj_dim_player1,obj_dim_player1)