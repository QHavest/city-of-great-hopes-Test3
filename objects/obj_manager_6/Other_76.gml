if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    case "camera1":
	
	regCam1 = view_get_camera(0);
	regCam2 = view_get_camera(1);
	cams2 = camera_create_view(0,0, 350, 200, 0, obj_camera, -1, -1, 300, 50);
	view_set_camera(0, cams2);
	view_set_camera(1, cams2);
	
	instance_deactivate_object(obj_sound_emmiter_3d);
	scr_music_fon_change("snd_nature");
	obj_dim_player1.x = obj_player_1.x;
	obj_dim_player1.y = obj_player_1.y;
	
	obj_dim_player2.x = obj_player_2.x;
	obj_dim_player2.y = obj_player_2.y;
    break;
  
    case "pause":
	pause = true;
  
    break;
  
    case "dial_start":
    scr_create_textbox("scena_6");
  
    break;
  
    case "delete":
	instance_activate_object(obj_sound_emmiter_3d);
	global.task = 1;
	global.shop = false;
    layer_sequence_destroy(seq1);
    view_set_camera(0, regCam1);
    view_set_camera(1, regCam2);
	scr_music_fon_change(room);
	room_restart();
    break;
  }
}