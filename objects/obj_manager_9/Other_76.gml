if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    
	case "start":
	a = 1;
	//audio_play_sound(snd_Bazar, 1, true);
	//regCam1 = view_get_camera(0);
	//regCam2 = view_get_camera(1);
	//var cam1 = camera_create_view(1890, 112, 425, 240, 0, obj_camera, -1, -1, 250, 150);
	//view_set_camera(0, cam1);
	//view_set_camera(1, cam1);
	obj_dim_player2.image_index = spr_dim_Krus_stay_r;
	break;
	
	case "dialog1":
	scr_create_textbox("scena_9_1");
	break;
	
	case "pause1":
	pause = true;
	break;

    //case "delete":
	//view_set_camera(0, regCam1);
	//view_set_camera(1, regCam2);
	global.shop = false;
    layer_sequence_destroy(seq4);
	audio_stop_all();
	//audio_play_sound(global.sound, 1, true);
    break;
  }
}