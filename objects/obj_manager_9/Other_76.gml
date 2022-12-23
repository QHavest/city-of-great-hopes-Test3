if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    
	case "start":
	//a = 1;
	audio_stop_all();
	audio_play_sound(snd_bazar_2, 1, true);
	regCam1 = view_get_camera(0);
	regCam2 = view_get_camera(1);
	var cam1 = camera_create_view(1890, 112, 425, 240, 0, obj_camera, -1, -1, 250, 150);
	view_set_camera(0, cam1);
	view_set_camera(1, cam1);
	//obj_dim_player2.image_index = spr_dim_Krus_stay_r;
	
	break;
	
	case "dialog1":
	scr_create_textbox("scena_9_1");
	break;
	
	case "dialog2":
	scr_create_textbox("scena_9_2");
	break;
	
	case "dialog3":
	scr_create_textbox("scena_9_3");
	break;
	
	case "sigarete":
	scr_create_textbox("scena_9_4");
	pause = true;
	break;
	
	case "dialog5":
	scr_create_textbox("scena_9_5");
	break;
	
	case "dialog6":
	scr_create_textbox("scena_9_6");
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
	
	case "pause4":
	pause = true;
	break;

	case "settings":
	with(daycycle)
	{
		time_pause = !time_pause;
		time_increment = 5;
	}
	alarm[1] = 10;
	break;

	case "viter":
	audio_play_sound(snd_viter, 2, true);
	break;

    case "delete":
	obj_dim_player2.x = obj_player_2_9_2.x;
	obj_dim_player2.y = obj_player_2_9_2.y;
	view_set_camera(0, regCam1);
	view_set_camera(1, regCam2);
	global.shop = false;
	room_goto(rm_street_container);
	obj_dim_player2.x = obj_player_2_9.x;
    layer_sequence_destroy(seq4);
	audio_stop_all();
	audio_play_sound(global.sound, 1, true);
    break;
	


  }
}