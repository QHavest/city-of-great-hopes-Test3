if event_data [? "event_type"] == "sequence event"
{
	switch (event_data[? "message"])
	{
		case "start":
		layer_sequence_pause(_seqElms);
		pause1 = true;
		
		scr_create_textbox("scena_5_5");
		break;
		
		case "cameras":
		/*
		var camsi = camera_create_view(0, 0, 213, 120, 0, obj_krus_throw_pillow, -1, -1, 300, 50);
		view_set_camera(4, camsi);
		view_set_visible(4, true);
		view_set_visible(2, false);*/
		//view_visible[1]= false;
		//camera_destroy(view_camera[1]);
		/*view_visible[1] = true;
		var cams2 = camera_create_view(0, 0, 213, 120);
		view_set_camera(1, cams2);*/
		break;
		
		case "cameras1":
		view_visible[7]= false;
		camera_destroy(view_camera[7]);
		view_visible[1]= false;
		camera_destroy(view_camera[1]);
		view_visible[4] = true;
		cams2 = camera_create_view(0,0, 213, 120, 0, obj_camera, -1, -1, 300, 50);
		view_set_camera(4, cams2);
		break;
	
		
		case "wakeup":
		//pause = true;
		scr_create_textbox("scena_5_1");
		
		break;
		
		
		case "pause":
		instance_destroy(obj_dim_textbox);
		break;
		
		case "Ytopur":
		camera_destroy(view_camera[4]);
		obj_dim_player2.status = STATUS.ACTIVE;
		obj_dim_player2.x =275;
		obj_dim_player2.y = 95;
		cams2 = camera_create_view(0,0, 213, 120, 0, obj_dim_player2, -1, -1, 300, 50);
		view_set_camera(4, cams2);
		/*view_visible[4]= false;
		camera_destroy(view_camera[4]);
		view_visible[5] = true;
		var cams5 = camera_create_view(0, 0, 213, 120, 0, obj_dim_player2, -1, -1, 300, 50);
		view_set_camera(5, cams5);*/
		break;
		
		case "Ytopur_bear":
		scr_create_textbox("scena_5_3");
		pause = true;
		break;
		
		case "sorry":
		scr_create_textbox("scena_5_2");
		pause = true;
		break;
		
		case "stops":
		layer_sequence_destroy(_seqElms);
		global.shop = false;
		break;
	}
}