if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    
	case "start":
	audio_play_sound(snd_Bazar, 1, true);
	regCam1 = view_get_camera(0);
	regCam2 = view_get_camera(1);
	var cam1 = camera_create_view(1890, 112, 425, 240, 0, obj_camera, -1, -1, 250, 150);
	view_set_camera(0, cam1);
	view_set_camera(1, cam1);
	break;
	
	case "dialog1":
	scr_create_textbox("scena_8_1");
	break;
	
	//case "dialog2":
	//scr_create_textbox("scena_8_2");
	//break;
	
	case "dialog3":
	scr_create_textbox("scena_8_3");
	break;
	
	case "dialog4":
	scr_create_textbox("scena_8_4");
	pause = true;
	break;

	case "dialog5":
	scr_create_textbox("scena_8_5");
	pause = true;
	break;
	
	case "pause1":
	pause = true;
	break;
	
	case "pause2":
	pause = true;
	break;
	
	case "pause3":
	pause = true;
	break;
	
    case "delete":
	view_set_camera(0, regCam1);
	view_set_camera(1, regCam2);
	global.shop = false;
    layer_sequence_destroy(seq3);
	obj_seller_posyda.depth = obj_prilavok_posyda.depth - 40;
	//obj_prilavok_posyda.depth = num2;
	//obj_box_posyda.depth = num3;
	audio_stop_all();
	audio_play_sound(global.sound, 1, true);
	
	x1 = obj_dim_player1.x;
	y1 = obj_dim_player1.y;
	x2 = obj_dim_player2.x;
	y2 = obj_dim_player2.y;
	room_goto(rm_fishing);
	room_goto(rm_street_container);
	obj_dim_player1.x = x1;
	obj_dim_player1.y = y1;
	obj_dim_player2.x = x2;
	obj_dim_player2.y = y2;
    break;
  }
}