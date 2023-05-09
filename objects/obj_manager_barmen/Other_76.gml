if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    case "start_bar":
		
		obj_dim_player1.x = obj_player_1_rest.x;
		obj_dim_player1.y = obj_player_1_rest.y;
	
		obj_dim_player2.x = obj_player_2_rest_2.x;
		obj_dim_player2.y = obj_player_2_rest_2.y;
		
		scr_music_fon_change(noone);
		regCam1 = view_get_camera(0);
		regCam2 = view_get_camera(1);
		var cam1 = camera_create_view(1890, 112, 213, 120, 0, obj_camera, -1, -1, 250, 150);
		view_set_camera(0, cam1);
		view_set_camera(1, cam1);
    break;

    case "delete_bar":
		obj_inventory.visible = 1;
		global.shop = false;
		view_set_camera(0, regCam1);
		view_set_camera(1, regCam2);
		scr_music_fon_change(room);
		layer_destroy("Cutcenes");
		
		//obj_dim_player1.x = obj_player_1_rest.x;
		//obj_dim_player1.y = obj_player_1_rest.y;
		obj_dim_player1.sprite_index = spr_dim_Ytopurok_stay_r;
	
		//obj_dim_player2.x = obj_player_2_rest_2.x;
		//obj_dim_player2.y = obj_player_2_rest_2.y;
		obj_dim_player2.sprite_index = spr_dim_Krus_stay_l;
		
		layer_sequence_destroy(seq_rest_bar);
		//room_restart();
    break;
  }
}
