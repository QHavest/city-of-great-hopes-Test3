if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    case "camera1":
	audio_play_sound(snd_nature, 1, 1);
	regCam1 = view_get_camera(0);
	regCam2 = view_get_camera(1);
	cams2 = camera_create_view(0,0, 350, 200, 0, obj_camera, -1, -1, 300, 50);
	view_set_camera(0, cams2);
	view_set_camera(1, cams2);
	
	//instance_deactivate_object(obj_sound_emmiter_3d);
	scr_music_fon_change("snd_nature");
	obj_dim_player1.x = obj_player_1.x;
	obj_dim_player1.y = obj_player_1.y;
	
	obj_dim_player2.x = obj_player_2.x;
	obj_dim_player2.y = obj_player_2.y;
    break;
    
    case "pause":
	pause = true;
    break;
    
    case "fog_end":
	with(daycycle)
	{
		part_system_depth(weather, 10000);
	}
    break;

    case "dial_start":
    scr_create_textbox("scena_6");
    break;
  
    case "delete":
	audio_stop_sound(snd_nature);
	daycycle.time_increment = 0;
	//instance_activate_object(obj_sound_emmiter_3d);
	obj_inventory.visible = 1;
	global.task = 1;
	global.shop = false;
    layer_sequence_destroy(seq1);
    view_set_camera(0, regCam1);
    view_set_camera(1, regCam2);
	scr_music_fon_change(room);
	obj_dim_player1.InRoomMode = false;
	obj_dim_player2.InRoomMode = false;
	with(daycycle)
	{
		part_system_depth(weather, -1000);
	}
	layer_destroy("Cutcenes");
	scr_saving_1();
	hint = true;
    break;
  }
}