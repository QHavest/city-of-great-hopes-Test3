if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    case "start":
		scr_music_fon_change(noone);
		regCam1 = view_get_camera(0);
		regCam2 = view_get_camera(1);
		var cam1 = camera_create_view(1890, 112, 213, 120, 0, obj_camera, -1, -1, 250, 150);
		view_set_camera(0, cam1);
		view_set_camera(1, cam1);
    break;
    
    case "pause":
		pause = true;
    break;
    
    case "dialog1":
	    scr_create_textbox("waiter");
		pause = true;
    break;
	
	case "dialog1_2":
	    scr_create_textbox("booking2");
		pause2 = true;
    break;
	
	case "dialog2":
	    scr_create_textbox("no_booking2");
		pause = true;
    break;
	
	case "test":
		if(booking == true)
		{
			layer_create(-99999, "Cutcenes2");
			seq_rest_2 = layer_sequence_create("Cutcenes2", 0, 0, seq_restoraunt_booking);
			layer_sequence_pause(seq_rest);
			//var seqInst2 = layer_sequence_get_instance(seq_rest_2);
			//sequence_instance_override_object(seqInst2, obj_dim_player1,  obj_dim_player1);
			//sequence_instance_override_object(seqInst2, obj_dim_player2,  obj_dim_player2);
			
		}
		else
		{
			layer_sequence_destroy(seq_rest);
			scr_music_fon_change(room);
			global.shop = false;
			view_set_camera(0, regCam1);
			view_set_camera(1, regCam2);
		}
    break;
    
    case "delete_booking":
		global.shop = false;
		view_set_camera(0, regCam1);
		view_set_camera(1, regCam2);
	    layer_sequence_destroy(seq_rest);
		layer_sequence_destroy(seq_rest_2);
		layer_destroy("Cutcenes");
		scr_music_fon_change(room);
		obj_dim_player1.x = 1970;
		obj_dim_player1.y = 260;
		obj_dim_player2.x = 1990;
		obj_dim_player2.y = 265;
		room_goto(rm_center_left);
		//room_restart();
		
    break;
  }
}

	//obj_dim_player1.x = obj_player_1.x;
	//obj_dim_player1.y = obj_player_1.y;
	
	//obj_dim_player2.x = obj_player_2.x;
	//obj_dim_player2.y = obj_player_2.y;