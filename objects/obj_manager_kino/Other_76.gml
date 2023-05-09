if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    case "start":
		scr_music_fon_change(noone);
		regCam1 = view_get_camera(0);
		regCam2 = view_get_camera(1);
		cams2 = camera_create_view(0,0, 600, 300, 0, obj_camera, -1, -1, 300, 50);
		view_set_camera(0, cams2);
		view_set_camera(1, cams2);
    break;
	
	case "snd":
		audio_play_sound(snd_kino, 1, 0);
	break;

    case "delete":
		global.shop = false;
		obj_inventory.visible = 1;
	    layer_sequence_destroy(seq1);
	    view_set_camera(0, regCam1);
	    view_set_camera(1, regCam2);
		scr_music_fon_change(room);
		obj_dim_player1.x = 400;
		obj_dim_player1.y = 110;
		obj_dim_player2.x = 415;
		obj_dim_player2.y = 110;
		room_goto(rm_cinema_inside);
    break;
  }
}