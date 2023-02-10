if event_data [? "event_type"] == "sequence event"
{
	switch (event_data[? "message"])
	{
		case "start1":
		
		regCam1 = view_get_camera(0);
		regCam2 = view_get_camera(1);
		cams2 = camera_create_view(0,0, 213, 120, 0, obj_camera, -1, -1, 300, 50);
		view_set_camera(0, cams2);
		view_set_camera(1, cams2);
		
		layer_sequence_pause(_seqElms);
		pause1 = true;
		scr_create_textbox("scena_5_5");
		
		break;
		
		//case "cameras1":
		//view_visible[7]= false;
		//camera_destroy(view_camera[7]);
		//view_visible[1]= false;
		//camera_destroy(view_camera[1]);
		//view_visible[4] = true;
		//cams2 = camera_create_view(0,0, 213, 120, 0, obj_camera, -1, -1, 300, 50);
		//view_set_camera(4, cams2);
		//break;
	
		
		case "wakeup":
		scr_create_textbox("scena_5_1");
		
		break;
		
		
		case "pause":
		instance_destroy(obj_dim_textbox);
		break;
		
		//case "Ytopur":
		//camera_destroy(view_camera[4]);
		//obj_dim_player2.status = STATUS.ACTIVE;
		//obj_dim_player2.x =275;
		//obj_dim_player2.y = 95;
		//cams2 = camera_create_view(0,0, 213, 120, 0, obj_dim_player2, -1, -1, 300, 50);
		//view_set_camera(4, cams2);
		///*view_visible[4]= false;
		//camera_destroy(view_camera[4]);
		//view_visible[5] = true;
		//var cams5 = camera_create_view(0, 0, 213, 120, 0, obj_dim_player2, -1, -1, 300, 50);
		//view_set_camera(5, cams5);*/
		//break;
		
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
		view_set_camera(0, regCam1);
		view_set_camera(1, regCam2);
		room_goto(rm_home_gg);
		obj_dim_player1.x = 2000;
		obj_dim_player1.y = 250;
		obj_dim_player2.x = 2000;
		obj_dim_player2.y = 250;
		
		break;
	}
}