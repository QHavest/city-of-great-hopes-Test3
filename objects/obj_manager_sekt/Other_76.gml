if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
	
	case "start":
    regCam1 = view_get_camera(0);
	regCam2 = view_get_camera(1);
	var cam1 = camera_create_view(1890, 112, 425, 240, 0, obj_camera, -1, -1, 250, 150);
	view_set_camera(0, cam1);
	view_set_camera(1, cam1);
	break;
	
	case "dialog":
	pause = true;
	layer_sequence_pause(seq5);
	scr_create_textbox("sektants");
	break;
	
	case "dialog2":
	layer_sequence_pause(seq5);
	scr_create_textbox("throw2");
	break;
	
    case "delete":
		view_set_camera(0, regCam1);
		view_set_camera(1, regCam2);
		global.shop = false;
		layer_sequence_destroy(seq5);
	
		obj_Battle_Interface.battle_start = true;
		obj_Battle_Interface.enemies = ENEMY.Sectants
		scr_music_fon_change(Room61);
		room_goto(Room61);
    break;
	
    case "delete2":
		obj_dim_player2.x = x;
		obj_dim_player2.y = y;
		obj_dim_player1.x = x;
		obj_dim_player1.y = y;
		view_set_camera(0, regCam1);
		view_set_camera(1, regCam2);
		global.shop = false;
		layer_sequence_destroy(seq5_2);
    break;
	


  }
}